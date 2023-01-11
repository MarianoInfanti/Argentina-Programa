import { Component } from '@angular/core';
import { PortfolioService } from 'src/app/servicios/portfolio.service';

@Component({
  selector: 'app-areas',
  templateUrl: './areas.component.html',
  styleUrls: ['./areas.component.css']
})
export class AreasComponent {
  miPortfolio:any;
  constructor(private datosPortfolio:PortfolioService){}
  
  ngOnInit():void{
  this.datosPortfolio.obtenerDatos().subscribe(data =>{
   console.log(data);
   this.miPortfolio=data;
  });
  }
}
