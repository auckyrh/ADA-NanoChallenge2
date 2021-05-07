//
//  Explorer.swift
//  NC 2 Explorer Log
//
//  Created by Aucky Riman Halim on 05/05/21.
//

import Foundation

public struct Explorer {
    
    var name: String
    var photo: String
    var expertise: String
    var team: String
    var shift: String
    
    init(name: String, photo: String, expertise: String, team: String, shift: String) {
        self.name = name
        self.photo = photo
        self.expertise = expertise
        self.team = team
        self.shift = shift
    }
}

