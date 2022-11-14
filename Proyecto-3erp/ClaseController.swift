//
//  ClaseController.swift
//  Proyecto-3erp
//
//  Created by Alumno ULSA on 14/11/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import Foundation
import UIKit
class ClaseController: UIViewController {
    
    var Horarios : horario?
    
    var callBackClasecita : ((horario) -> Void)?
    
    
    @IBOutlet weak var lblMateria: UILabel!
    
    @IBOutlet weak var lblMaestro: UILabel!
    
    @IBOutlet weak var lblHora: UILabel!
    
    @IBOutlet weak var imgfotop: UIImageView!
    
    override func viewDidLoad() {

        if Horarios != nil {
            
            lblMaestro.text = Horarios?.maestro
            lblMateria.text = Horarios?.materia
            lblHora.text = Horarios?.hora
            imgfotop.image = UIImage(named: "\(Horarios!.fotop)2")
            
            
        }
    }
    
    func doTapAsistencia(_ sender: Any) {
       
        
    }
}
    
    
    
    




