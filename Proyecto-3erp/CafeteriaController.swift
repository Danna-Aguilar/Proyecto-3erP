//
//  CafeteriaController.swift
//  Practica-contactos
//
//  Created by Alumno ULSA on 02/11/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import Foundation
import UIKit
class CafeteriaController: UIViewController, UITableViewDelegate,UITableViewDataSource {
  
    
    var Menu: [menu] = []
    
    @IBOutlet weak var tvCafeteria: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Menu.append(menu(comida: "Sandiwch", precio: "$23", descripcion: "Pan, Jamon y Queso", foto: "sandiwch"))
        Menu.append(menu(comida: "Molletes", precio: "$32", descripcion: "Pan, frijol y queso", foto: "molletes"))
        Menu.append(menu(comida: "Ensalada", precio: "$28", descripcion: "Pollo, lechuga, parmesano", foto: "ensalada"))
        Menu.append(menu(comida: "Tacos", precio: "$10", descripcion: "tortilla, frijol o carne", foto: "tacos"))
        Menu.append(menu(comida: "Quesadillas", precio: "$25", descripcion: "tortilla con queso", foto: "quesadillas"))
        Menu.append(menu(comida: "Nachos", precio: "$33", descripcion: "Totopos con queso y carne", foto: "nachos"))
        Menu.append(menu(comida: "Fajitas de pollo", precio: "$54", descripcion: "Tiras de pollo", foto: "pollo"))
        Menu.append(menu(comida: "Waffles", precio: "$39", descripcion: "Waffles con miel", foto: "wafle"))
        Menu.append(menu(comida: "Nuggets de pollo", precio: "$25", descripcion: " Pedazos de pollo", foto: "nuget"))


       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return Menu.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaMenu") as? CeldaMenuController
            celda?.lblcomida.text = Menu[indexPath.row].comida
            celda?.lblprecio.text = Menu[indexPath.row].precio
            celda?.lbldescripcion.text = Menu[indexPath.row].descripcion
            celda?.imgcomida.image = UIImage(named:Menu[indexPath.row].foto)
        celda?.imgcomida.layer.cornerRadius = 30
        celda?.imgcomida.clipsToBounds = true
        return celda!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
    }
    
   
    
    
}
