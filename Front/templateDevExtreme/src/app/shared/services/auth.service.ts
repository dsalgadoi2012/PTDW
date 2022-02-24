import { Injectable } from '@angular/core';
import { CanActivate, Router, ActivatedRouteSnapshot } from '@angular/router';
import {HttpClient, HttpErrorResponse, HttpHeaders} from '@angular/common/http';
import {environment} from "../../../environments/environment";
import {Observable, of, throwError} from "rxjs";
import {catchError, delay} from "rxjs/operators";
import { LocalStoreService } from "./local-store.service";

const defaultPath = '/';
const defaultUser = {
  email: 'sandra@example.com',
  avatarUrl: 'https://js.devexpress.com/Demos/WidgetsGallery/JSDemos/images/employees/06.png'
};
const httpOptions = {
  headers: new HttpHeaders({'Content-Type': 'application/json'})
}

@Injectable()
export class AuthService {
  private _user = null;
  private errorMsg: string;
  get loggedIn(): boolean {
    return !!this.store.getItem("usuario");;
  }

  private _lastAuthenticatedPath: string = defaultPath;
  set lastAuthenticatedPath(value: string) {
    this._lastAuthenticatedPath = value;
  }


  constructor(private store: LocalStoreService,private router: Router, private http: HttpClient) { }

  logIn(email: string, password: string):Observable<any>{

    const loginRequest = {
        email:email,
        password:password
    };
    return this.http.post(`${environment.urlApi}Auth/Login`, JSON.stringify(loginRequest), httpOptions)
      .pipe(
        catchError(this.handleError)
      );

  }

  guardarUsuario (usuario, token){

    this._user = usuario;
    this.store.setItem("login_status", true);
    this.store.setItem("usuario", usuario);
    this.store.setItem("token", token);
    this.router.navigate([this._lastAuthenticatedPath]);

  }

  handleError(error: HttpErrorResponse):Observable<any>{

    return throwError(error.error);
  }


  async getUser() {
    try {

      this._user=  this.store.getItem("usuario");
      return {
        isOk: true,
        data: this._user
      };
    }
    catch {
      return {
        isOk: false
      };
    }
  }

  async createAccount(email, password) {
    try {
      // Send request
      console.log(email, password);

      this.router.navigate(['/create-account']);
      return {
        isOk: true
      };
    }
    catch {
      return {
        isOk: false,
        message: "Failed to create account"
      };
    }
  }

  async changePassword(email: string, recoveryCode: string) {
    try {
      // Send request
      console.log(email, recoveryCode);

      return {
        isOk: true
      };
    }
    catch {
      return {
        isOk: false,
        message: "Failed to change password"
      }
    };
  }

  async resetPassword(email: string) {
    try {
      // Send request
      console.log(email);

      return {
        isOk: true
      };
    }
    catch {
      return {
        isOk: false,
        message: "Failed to reset password"
      };
    }
  }

  async logOut() {
    this._user = null;
    this.router.navigate(['/login-form']);
  }
}

@Injectable()
export class AuthGuardService implements CanActivate {
  constructor(private router: Router, private authService: AuthService) { }

  canActivate(route: ActivatedRouteSnapshot): boolean {
    const isLoggedIn = this.authService.loggedIn;
    const isAuthForm = [
      'login-form',
      'create-account',
      'change-password/:recoveryCode'
    ].includes(route.routeConfig.path);

    if (isLoggedIn && isAuthForm) {
      this.authService.lastAuthenticatedPath = defaultPath;
      this.router.navigate([defaultPath]);
      return false;
    }

    if (!isLoggedIn && !isAuthForm) {
      this.router.navigate(['/login-form']);
    }

    if (isLoggedIn) {
      this.authService.lastAuthenticatedPath = route.routeConfig.path;
    }

    return isLoggedIn || isAuthForm;
  }
}
