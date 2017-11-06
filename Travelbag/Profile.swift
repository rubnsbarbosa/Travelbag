//
//  Profile.swift
//  Travelbag
//
//  Created by IFCE on 30/10/17.
//  Copyright © 2017 ifce. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase




class Profile: FirebaseBaseModel{
    var first_name: String?
    var last_name: String?
    var gender: String?
    var latitude: String?
    var longitude: String?
    var bio: String?
    var dob: String?
    var profile_picture: String?
    var profile_holder: FirebaseImage?
    var cover_photo : String?
    var cover_photo_holder: FirebaseImage?

    override init() {
        
    }
    
    init(with json: [String : Any]) {
        self.first_name = json["first_name"] as? String
        self.last_name = json["last_name"] as? String
        self.gender = json["gender"] as? String
        self.longitude = json["longitude"] as? String
        self.latitude = json["latitude"] as? String
        self.bio = json["bio"] as? String
        self.dob = json["dob"] as? String
        self.profile_picture = json["profile_picture"] as? String
        self.cover_photo = json["cover_photo"] as? String
    }
    
    
    override func toDic() -> [String : Any]{
        var dic = [String:Any]()
        dic["first_name"] = self.first_name
        dic["last_name"] = self.last_name
        dic["gender"] = self.gender
        dic["bio"] = self.bio
        dic["latitude"] = self.latitude
        dic["longitude"] = self.longitude
        dic["dob"] = self.dob
        dic["profile_picture"] = ""
        dic["cover_photo"] = ""
        return dic
    }
}
