//
//  ProfileUIModel.swift
//  CapstoneProject
//
//  Created by Benaya Oktavianus on 28/12/22.
//

import UIKit.UIImage

public struct ProfileUIModel {
    let name: String
    let age: Int
    let occupation: String
    let workAt: String
    let photo: UIImage
    

    public init(name: String, age: Int, occupation: String, workAt: String, photo: UIImage) {
        self.name = name
        self.age = age
        self.occupation = occupation
        self.workAt = workAt
        self.photo = photo
    }
    
    public init() {
        self.name = ""
        self.age = 0
        self.occupation = ""
        self.workAt = ""
        self.photo = UIImage()
    }
    
    public static func mapEntityToUIModel(model: ProfileEntity) -> ProfileUIModel {
        return ProfileUIModel(name: model.name,
                              age: model.age,
                              occupation: model.occupation,
                              workAt: model.workAt,
                              photo: model.photo)
    }
    
}
