import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {
  LoginFormComponent,
  ResetPasswordFormComponent,
  CreateAccountFormComponent,
  ChangePasswordFormComponent
} from './shared/components';
import {AuthGuardService} from './shared/services';
import {HomeComponent} from './pages/home/home.component';
import {ProfileComponent} from './pages/profile/profile.component';
import {TasksComponent} from './pages/tasks/tasks.component';
import {
    DxButtonModule,
    DxCheckBoxModule,
    DxDataGridModule,
    DxFormModule,
    DxNumberBoxModule,
    DxSelectBoxModule
} from 'devextreme-angular';
import {FacturarComponent} from './pages/facturar/facturar.component';
import {platformBrowserDynamic} from "@angular/platform-browser-dynamic";
import {BrowserModule} from "@angular/platform-browser";
import {FormsModule} from "@angular/forms";

const routes: Routes = [
  {
    path: 'pages/facturar',
    component: FacturarComponent,
    canActivate: [AuthGuardService]
  },
  {
    path: 'tasks',
    component: TasksComponent,
    canActivate: [AuthGuardService]
  },
  {
    path: 'profile',
    component: ProfileComponent,
    canActivate: [AuthGuardService]
  },
  {
    path: 'home',
    component: HomeComponent,
    canActivate: [AuthGuardService]
  },
  {
    path: 'login-form',
    component: LoginFormComponent,
    canActivate: [AuthGuardService]
  },
  {
    path: 'reset-password',
    component: ResetPasswordFormComponent,
    canActivate: [AuthGuardService]
  },
  {
    path: 'create-account',
    component: CreateAccountFormComponent,
    canActivate: [AuthGuardService]
  },
  {
    path: 'change-password/:recoveryCode',
    component: ChangePasswordFormComponent,
    canActivate: [AuthGuardService]
  },
  {
    path: '**',
    redirectTo: 'home'
  }
];

@NgModule({
    imports: [RouterModule.forRoot(routes, {useHash: true}), BrowserModule, DxDataGridModule, DxFormModule, DxSelectBoxModule, DxNumberBoxModule, DxFormModule, DxCheckBoxModule, FormsModule, DxButtonModule],
  providers: [AuthGuardService],
  exports: [RouterModule],
  declarations: [HomeComponent, ProfileComponent, TasksComponent, FacturarComponent],
  bootstrap: [FacturarComponent],
})
export class AppRoutingModule {
}

