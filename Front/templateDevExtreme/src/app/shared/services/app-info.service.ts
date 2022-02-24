import {Injectable} from '@angular/core';
import {Observable, throwError} from "rxjs";
import {environment} from "../../../environments/environment";
import {catchError} from "rxjs/operators";
import {LocalStoreService} from "./local-store.service";
import {Router} from "@angular/router";
import {HttpClient, HttpErrorResponse, HttpHeaders} from "@angular/common/http";


@Injectable()
export class AppInfoService {
  httpOptions: any;

  constructor(private store: LocalStoreService, private router: Router, private http: HttpClient) {
    const token = this.store.getItem('token');
    this.httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + token
      }),
    }
    this.http
  }

  public get title() {
    return 'Facturacion App PT';
  }

  public get currentYear() {
    return new Date().getFullYear();
  }

  buscarClientePorDocumento(documento: string): Observable<any> {
    return this.http.get(`${environment.urlApi}Cliente/getByDocumento?documento=` + documento, this.httpOptions)
      .pipe(
        catchError(this.handleError)
      );
  }

  obtenerProductos(): Observable<any> {
    return this.http.get(`${environment.urlApi}Producto`, this.httpOptions)
      .pipe(
        catchError(this.handleError)
      );
  }

  handleError(error: HttpErrorResponse): Observable<any> {

    return throwError(error.error);
  }


  guardarFactura(nuevaFactura):Observable<any>{
    return this.http.post(`${environment.urlApi}Factura`, JSON.stringify(nuevaFactura), this.httpOptions)
      .pipe(
        catchError(this.handleError)
      );

  }
}
