//
//  Alumno.swift
//  Proyecto-3erp
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

class alumno {
    var nickanme: String
    var nick: String
    var matricula: String
    var edad: String
    var nombre: String
    var fechaN: String
    var fotito: String

    init (nickname:String, matricula:String, edad:String, nombre:String, fechaN:String, fotito:String, nick:String){
        self.nickanme = nickname
        self.matricula = matricula
        self.edad = edad
        self.fechaN = fechaN
        self.nombre = nombre
        self.fotito = fotito
        self.nick = nick
        
}
}
