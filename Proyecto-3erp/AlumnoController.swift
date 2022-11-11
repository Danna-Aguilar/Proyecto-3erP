//
//  AlumnoController.swift
//  Proyecto-3erp
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import Foundation
import UIKit
class AlumnoController: UIViewController{
    
    @IBOutlet weak var lblNicj: UILabel!
    
    
    @IBOutlet weak var imgIcon: UIImageView!
    
    var Alumno: [alumno] = [alumno(nickname: "Danna Aguilar", matricula: "199428", edad: "21 años", nombre: "Danna Paulina Aguilar", fechaN: "29/10/2001", fotito: "yop", nick: "Danna Aguilar")]
    
    override func viewDidLoad() {
            
            
        imgIcon.layer.cornerRadius = imgIcon.bounds.size.width / 2.0
        imgIcon.clipsToBounds = true
        imgIcon.image = UIImage(named: Alumno[0].fotito)
        lblNicj.text = Alumno[0].nick
            

        
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "perfil" {
                        let destino = segue.destination as! PerfilController
                        destino.Alumno = Alumno [0]
                        
                    }
                }
                
              
        
    
    
    
}
    
