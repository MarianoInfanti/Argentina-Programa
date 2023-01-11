import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './componentes/header/header.component';
import { AreasComponent } from './componentes/areas/areas.component';
import { AboutComponent } from './componentes/about/about.component';
import { PortfolioService } from './servicios/portfolio.service';
import { HttpClientModule } from '@angular/common/http';
import { SkillsComponent } from './componentes/skills/skills.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    AreasComponent,
    AboutComponent,
    SkillsComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [PortfolioService],
  bootstrap: [AppComponent]
})
export class AppModule { }
