//
//  PerfilController.swift
//  Proyecto-3erp
//
//  Created by Alumno ULSA on 07/11/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit

class PerfilController: UIViewController {
    
    var Alumno: alumno?
    
    var callBackActualizar : ((alumno) -> Void)?
    
    @IBOutlet weak var imgPerfil: UIImageView!
    
    @IBOutlet weak var lblNickname: UILabel!
    
    @IBOutlet weak var lblMatricula: UILabel!
    
    @IBOutlet weak var lblEdad: UILabel!
    
    @IBOutlet weak var lblNombre: UILabel!
    
    
    @IBOutlet weak var lblFecha: UILabel!
    
    override func viewDidLoad() {
        if Alumno != nil {
            lblNickname.text = Alumno?.nickanme
            lblMatricula.text = Alumno?.matricula
            lblEdad.text = Alumno?.edad
            lblNombre.text = Alumno?.nombre
            lblFecha.text = Alumno?.fechaN
            imgPerfil.image = UIImage(named: Alumno!.fotito)
                            
        }
    }
    
                                      
                                      
}
