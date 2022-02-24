import {NgModule, Component, enableProdMode, OnInit} from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import {
  DxCheckBoxModule,
  DxSelectBoxModule,
  DxNumberBoxModule,
  DxFormModule,
} from 'devextreme-angular';
import {AppInfoService, AuthService} from "../../shared/services";
import DevExpress from "devextreme";
import notify from "devextreme/ui/notify";
import {elementAt} from "rxjs/operators";


@Component({
  selector: 'app-facturar',
  templateUrl: './facturar.component.html',
  styleUrls: ['./facturar.component.scss']
})
export class FacturarComponent implements OnInit {

  consultaCliente: any;
  colCountByScreen: object;
  productos: any;
  nuevoProducto= {
    id:0,
    producto:0,
    cantidad:0,
    precio:0,
    nombre:''
  }
   agregarProducto: any;
  listaProductosAgregados : any;

  constructor(private consultaServicio: AppInfoService) {
    this.listaProductosAgregados = [];
    this.agregarProducto = {
      icon: 'add',
      text: 'Agregar Producto',
      onClick: () => {
        if (this.nuevoProducto.producto == 0 || this.nuevoProducto.cantidad == 0) {
          notify("Ingrese los valores del prodcto");
        } else {
          var productoSeleccionado = this.productos.find(element => element.id == this.nuevoProducto.producto)
          this.nuevoProducto.precio = (productoSeleccionado.precio) * this.nuevoProducto.cantidad;
          this.nuevoProducto.nombre = productoSeleccionado.nombre;
          this.listaProductosAgregados.push(this.nuevoProducto);
          this.nuevoProducto = {
            id:0,
            producto:0,
            cantidad:0,
            precio:0,
            nombre:''
          };

        }
      }
    }
    this.consultaCliente = {
      documento:'',
      nombre:''
    };
    this.cliente = {};
    this.colCountByScreen = {
      xs: 1,
      sm: 2,
      md: 3,
      lg: 4
    };
    this.productos = [{}];

  }

  submitButtonOptions = {
    text: "Consultar cliente",
    useSubmitBehavior: true
  }
  cliente:any;
  guardarFactura(){

    var LstProductos: Array<any> =[];
    var ValorTotal = 0;
    if (this.listaProductosAgregados.length > 0 ){
        this.listaProductosAgregados.forEach(producto =>{
          ValorTotal += producto.precio;
          var Producto = {
            IdProducto: producto.producto,
            Cantidad: producto.cantidad,
            Precio: producto.precio
          }
          LstProductos.push(Producto);
        });
        var nuevaFactura ={
          IdCliente: this.cliente.id,
          Valor: ValorTotal,
          LstProductos: LstProductos
        }
      this.consultaServicio.guardarFactura(nuevaFactura).subscribe(value => {
        if (value){
          notify("Factura "+value.id+" creada correctamente.")
        }
      })
    }else{
      notify("Debe agregar productos a la factura")
    }

  }
  handleSubmit = function(e, variable) {


    this.consultaServicio.buscarClientePorDocumento(variable.documento).subscribe(value => {
      if(value){
        this.cliente= value;
      }else {
        notify("Cliente no encontrado");
        this.cliente ={};
      }

    })

    e.preventDefault();
  }




  ngOnInit(): void {

    this.consultaServicio.obtenerProductos().subscribe(value => {
      if(value){
        this.productos = value;
      }

    })
  }
}
