//
//  EditarContactoController.swift
//  Practica-contactos
//
//  Created by Alumno on 26/10/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit

class EditarContactoController: UIViewController {
    var Contacto : contactos?
    
    var callBackEditarContacto : ((contactos) -> Void)?
    
    
    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtNumero2: UITextField!
    @IBOutlet weak var txtParentesco: UITextField!
    @IBOutlet weak var txtNumero: UITextField!
    
    override func viewDidLoad() {
        if Contacto != nil {
            txtNombre.text = Contacto?.nombre
            txtNumero.text = Contacto?.numero
            txtNumero2.text = Contacto?.numero2
            txtParentesco.text = Contacto?.parentesco
        }

    }
             
    @IBAction func doTapActualizar(_ sender: Any) {
     if callBackEditarContacto != nil {
        Contacto?.nombre = txtNombre.text!
        Contacto?.numero = txtNumero.text!
        Contacto?.numero2 = txtNumero2.text!
        Contacto?.parentesco = txtParentesco.text!

        callBackEditarContacto!(Contacto!)
        self.navigationController?.popViewController(animated: true)
        
        }
        }
    
    }
    


