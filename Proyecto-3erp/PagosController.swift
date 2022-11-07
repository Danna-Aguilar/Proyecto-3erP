//
//  PagosController.swift
//  Proyecto-3erp
//
//  Created by Alumno ULSA on 07/11/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit

class PagosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Outlet

    @IBOutlet weak var tvPago: UITableView!
    
    @IBOutlet weak var tvPagos: UITableView!
    //Variables
    var Pago : [pago] = []
    var Pagos: [pagos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Pago.append(pago(concepto: "Mensualidad 5", fecha:"01 Nov 2022", importe: "6,124"))
        Pago.append(pago(concepto: "Mensualidad 6", fecha:"01 Dic 2022", importe: "5,644"))
        Pago.append(pago(concepto: "Mensualida 7", fecha:"01 En 2023", importe: "5,054"))

        
                    
        Pagos.append(pagos(concepto: "Mensualidad 1 ", fecha: "-Pagado-", importe: "Saldo total"))
        Pagos.append(pagos(concepto: "Mensualidad 2", fecha: "-Pagado-", importe: "Saldo total"))
        Pagos.append(pagos(concepto: "Curso Talleres", fecha: "-Pagado-", importe: "Saldo total"))


    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == tvPago {
            return 1
        }
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tvPago {
            return Pago.count
        }
        return Pagos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  
        if tableView == tvPago {
            let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaPago") as! CeldaPagosController
            
            //TvUno
            celda.lblConcepto.text = Pagos[indexPath.row].concepto
            celda.lblFecha.text = Pagos[indexPath.row].fecha
            celda.lblimporte.text = Pagos[indexPath.row].importe
       
            
            return celda
            
        }else {
            let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaPagos") as! CeldaPagoController
            
            //TvDos
            celda.lblConceptoo.text = Pago[indexPath.row].concepto
            celda.lblFechaa.text = Pago[indexPath.row].fecha
            celda.lblPagoO.text = Pago[indexPath.row].importe
                
            return celda
        }
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
}
