import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { AppComponent } from './app.component';
import { PageOneComponent } from './page-one/page-one.component';
import { RouterModule, Routes } from '@angular/router';
import { PageTwoComponent } from './page-two/page-two.component';

const appRoutes: Routes = [
  { path: 'pagetwo', component: PageTwoComponent },
  { path: 'pageone', component: PageOneComponent },
  { path: 'start', component: AppComponent },
  { path: '', redirectTo: 'start',pathMatch: 'full'},
];

@NgModule({
  imports: [
    RouterModule.forRoot(appRoutes,{ enableTracing: false }),
    BrowserModule,
    FormsModule,
    HttpModule
  ],
  declarations: [
    AppComponent,
    PageOneComponent,
    PageTwoComponent
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
