//
//  ViewController.swift
//  Practica-contactos
//
//  Created by Alumno on 24/10/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
   
    @IBOutlet weak var tvContactos: UITableView!
    
    
    var Contactos:[contactos] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        Contactos.append(contactos(nombre: "Azalia Peña Hernandez", numero: "6441758292",parentesco: "(Padre)", numero2: "6441500186"))
        Contactos.append(contactos(nombre: "Marisela Deldadillo", numero: "6441875201",parentesco: "(Madre)",numero2: "6441785921"))
        Contactos.append(contactos(nombre: "Armando Zamora", numero: "6442501718",parentesco: "(Hermano)", numero2: "6442789510"))

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Contactos.count
    }
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "Celdacontacto") as?CeldaContactoController
        celda?.lblNombre.text = Contactos[indexPath.row].nombre
        celda?.lblNumero.text = Contactos[indexPath.row].numero
        celda?.lblparentesco.text = Contactos[indexPath.row].parentesco
        celda?.lbltelefono2.text = Contactos[indexPath.row].numero2

        
        return celda!
    }
    
    //@IBAction func btAgregar(_ sender: Any) {
      //  performSegue(withIdentifier: "toGoAgregar", sender: self)
        //callBackAgregarContacto = AgregarContacto
        
    //}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toGoAgregar" {
            let destino = segue.destination as! AgregarContactoController
            destino.callBackAgregarContacto = AgregarContacto
        }
        
        if segue.identifier == "toGoEditar" {
            let destino = segue.destination as! EditarContactoController
            destino.Contacto = Contactos[tvContactos.indexPathForSelectedRow!.row]
            destino.callBackEditarContacto = EditarContacto
        }
        
    }
    func AgregarContacto(Contacto: contactos){
        Contactos.append(Contacto)
        tvContactos.reloadData()
    }
    func EditarContacto(Contacto: contactos){
        tvContactos.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    
    
    
    
    
    
    
    
    
    
}




