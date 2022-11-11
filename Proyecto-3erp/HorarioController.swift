//
//  HorarioController.swift
//  Proyecto-3erp
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit

class HorarioController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var Horario: [horario] = []
    
    @IBOutlet weak var tvHorario: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Horario.append(horario(materia: "Modelado 3D", maestro: "Azalia Hernandez", hora: "7:00 am", fotop: "modelado"))
        Horario.append(horario(materia: "Programacion", maestro: "Armando Zamora", hora: "9:00 am", fotop: "progra"))
        Horario.append(horario(materia: "Dispositivos Moviles", maestro: "Cesar Amaya", hora: "11:00 am", fotop: "dispositivos"))
        Horario.append(horario(materia: "Mexico global", maestro: "Marisela Delgadillo", hora: "1:00 pm", fotop: "mexico"))
        Horario.append(horario(materia: "Redes computacionales", maestro: "Alejandra Esquer", hora: "3:00 pm", fotop: "redes"))


       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return Horario.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaHorario") as? HorarioCeldaController
            celda?.lblMateria.text = Horario[indexPath.row].materia
            celda?.lblMaestro.text = Horario[indexPath.row].maestro
            celda?.lblHora.text = Horario[indexPath.row].hora
            celda?.imgfotop.image = UIImage(named:Horario[indexPath.row].fotop)
        celda?.imgfotop.layer.cornerRadius = 30
        celda?.imgfotop.clipsToBounds  = true
            
        
        return celda!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
    }
    
   
    
    
}
    
   

