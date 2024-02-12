import { NgModule } from '@angular/core';
import { BrowserModule, provideClientHydration } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import { NavbarComponent } from './navbar/navbar.component';
import { RegisterComponent } from './register/register.component';
import { QualificationComponent } from './qualification/qualification.component';
import { ReviewComponent } from './review/review.component';
import { DrivepageComponent } from './drivepage/drivepage.component';
import { CardComponent } from './card/card.component';
import { HallticketComponent } from './hallticket/hallticket.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    NavbarComponent,
    RegisterComponent,
    QualificationComponent,
    ReviewComponent,
    DrivepageComponent,
    CardComponent,
    HallticketComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [
    provideClientHydration()
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
