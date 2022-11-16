//
//  AlumnoController.swift
//  Proyecto-3erp
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import Foundation
import UIKit
class AlumnoController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    var Horario: [horario] = []
    @IBOutlet weak var lblNicj: UILabel!
    
    
    @IBOutlet weak var tvHorario: UITableView!
    @IBOutlet weak var imgIcon: UIImageView!
    
    var Alumno: [alumno] = [alumno(nickname: "Danna Aguilar", matricula: "199428", edad: "21 años", nombre: "Danna Paulina Aguilar", fechaN: "29/10/2001", fotito: "yop", nick: "Danna Aguilar")]
    
    override func viewDidLoad() {
        
        Horario.append(horario(materia: "Modelado 3D", maestro: "Azalia Hernandez", hora: "7:00 am", fotop: "modelado",asistencia: false, califMaestro: "",comentMaestro: "",evaluacion: false, faltitas: "3"))
        Horario.append(horario(materia: "Programacion", maestro: "Armando Zamora", hora: "9:00 am", fotop: "progra", asistencia: false,califMaestro: "", comentMaestro: "",evaluacion: false, faltitas: "1"))
        Horario.append(horario(materia: "Dispositivos Moviles", maestro: "Cesar Amaya", hora: "11:00 am", fotop: "dispositivos", asistencia: false, califMaestro: "", comentMaestro: "",evaluacion: false, faltitas: "2"))
        Horario.append(horario(materia: "Mexico global", maestro: "Marisela Delgadillo", hora: "1:00 pm", fotop: "mexico",asistencia: false,califMaestro: "",comentMaestro: "",evaluacion: false, faltitas: "0"))
        Horario.append(horario(materia: "Redes computacionales", maestro: "Alejandra Esquer", hora: "3:00 pm", fotop: "redes",asistencia: false, califMaestro: "", comentMaestro: "",evaluacion: false, faltitas: "2"))
        
        
        imgIcon.layer.cornerRadius = imgIcon.bounds.size.width / 2.0
        imgIcon.clipsToBounds = true
        imgIcon.image = UIImage(named: Alumno[0].fotito)
        lblNicj.text = Alumno[0].nick
        

        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaHorario") as? HorarioCeldaController
        celda?.lblMateria.text = Horario[indexPath.row].materia
        celda?.lblMaestro.text = Horario[indexPath.row].maestro
        celda?.lblHora.text = Horario[indexPath.row].hora
        celda?.imgfotop.image = UIImage(named:Horario[indexPath.row].fotop)
        celda?.imgfotop.layer.cornerRadius = 30
        celda?.imgfotop.clipsToBounds  = true
        
        if (Horario[indexPath.row].asistencia == true){
                   celda?.imgAsistencia.tintColor = UIColor(red: 21/255, green: 194/255, blue: 67/255, alpha: 1)
               } else
               {
                   celda?.imgAsistencia.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
               }
        
        return celda!
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "perfil" {
            let destino = segue.destination as! PerfilController
            destino.Alumno = Alumno [0]
            
        }
        if segue.identifier == "GoToClase" {
            let destino = segue.destination as! ClaseController
            destino.Clase = Horario[tvHorario.indexPathForSelectedRow!.row]
            destino.Horarios = Horario[tvHorario.indexPathForSelectedRow!.row]
            destino.callBackClasecita = TomarAsistencia
            destino.callBackEvaluacion = TomarAsistencia

        }
        
    }
    func TomarAsistencia(Horarios: horario){
        tvHorario.reloadData()
    }
    
    
}
                
              
        
    
    
    

    
