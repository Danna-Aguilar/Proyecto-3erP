//
//  horario.swift
//  Proyecto-3erp
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

class horario  {
    var materia: String
    var maestro: String
    var hora: String
    var fotop: String
    var asistencia: Bool
    var califMaestro : String
    var comentMaestro : String
    var evaluacion: Bool
    
    init (materia:String, maestro:String, hora:String, fotop:String, asistencia:Bool,califMaestro:String,comentMaestro:String, evaluacion:Bool){
        self.materia = materia
        self.maestro = maestro
        self.hora = hora
        self.fotop = fotop
        self.asistencia = asistencia
        self.califMaestro = califMaestro
        self.comentMaestro = comentMaestro
        self.evaluacion = evaluacion

      
  }
 
}
