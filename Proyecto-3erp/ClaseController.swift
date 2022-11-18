//
//  ClaseController.swift
//  Proyecto-3erp
//
//  Created by Alumno ULSA on 14/11/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import Foundation
import UIKit

class ClaseController: UIViewController,UITextFieldDelegate {
    
    var Horarios : horario?
    var Clase: horario?
    
    var callBackClasecita : ((horario) -> Void)?
    var callBackEvaluacion : ((horario) -> Void)?

    
    @IBOutlet weak var lblAlerta: UILabel!
    @IBOutlet weak var txtCalificacion: UITextField!
    @IBOutlet weak var btnEnviar: UIButton!
    @IBOutlet weak var txtComentario: UITextField!
    
    @IBOutlet weak var btnAsistencia: UIButton!
    
    @IBOutlet weak var lblFaltas: UILabel!
    @IBOutlet weak var lblMateria: UILabel!
    @IBOutlet weak var lblMaestro: UILabel!
    @IBOutlet weak var lblHora: UILabel!
    @IBOutlet weak var imgfotop: UIImageView!
    
    override func viewDidLoad() {

        if Horarios != nil {
            
            lblMaestro.text = Horarios?.maestro
            lblMateria.text = Horarios?.materia
            lblHora.text = Horarios?.hora
            lblFaltas.text = Horarios?.faltitas
            imgfotop.image = UIImage(named: "\(Horarios!.fotop)")
            txtCalificacion.text = Horarios?.califMaestro
            txtComentario.text = Horarios?.comentMaestro
            
        }
        
        
        txtCalificacion.delegate = self
        
        if (Clase?.califMaestro == "") {
            lblAlerta.text = "Realizar evaluación docente"
               }
        
        if (Clase?.asistencia == true)
                {
                    btnAsistencia.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
                    btnAsistencia.setTitle("Tomada", for: .normal)
                    btnAsistencia.isEnabled = false
                    btnEnviar.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
                    btnEnviar.isEnabled = false
                    btnEnviar.setTitle("Enviada", for: .normal)
                    txtCalificacion.isUserInteractionEnabled = false
                    txtComentario.isUserInteractionEnabled = false
                }
        
        
        
        if (Clase?.evaluacion == true)
            
        {
           
            
        }
        
    }
    //bloquear text field numeros

        
                
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = "+12345"
        let allowedCharcterSet = CharacterSet(charactersIn: allowedCharacters)
        let typedCharcterSet = CharacterSet(charactersIn: string)
        
        return allowedCharcterSet.isSuperset(of: typedCharcterSet)
        
        
    }
   
    
    
    
    @IBAction func doTapAsistencia(_ sender: Any) {
        if callBackClasecita != nil {
            Clase?.asistencia = true
            callBackClasecita!(Clase!)
            btnAsistencia.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            btnAsistencia.isEnabled = false
            btnAsistencia.setTitle("Tomada", for: .normal)
    


        }
        
    }
    
    
    @IBAction func doTapEnviar(_ sender: Any) {
        Clase?.califMaestro = txtCalificacion.text!
        Clase?.comentMaestro = txtComentario.text!
        callBackClasecita!(Clase!)
        self.navigationController?.popViewController(animated: true)
        btnEnviar.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        btnEnviar.isEnabled = false
        btnEnviar.setTitle("Enviada", for: .normal)
        txtCalificacion.isUserInteractionEnabled = false
        txtComentario.isUserInteractionEnabled = false
        

        
        

    }
    
    
    
    
}
    
    
    
    




