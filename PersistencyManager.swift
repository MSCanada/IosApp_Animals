//
//  PersistencyManager.swift
//  MasterDetailAnimals
//
//  Created by Muhammad Suhail on 2017-03-21.
//  Copyright © 2017 Muhammad Suhail. All rights reserved.
//

import UIKit
class PersistencyManager : NSObject {

    func saveImage (_ image: UIImage, filename : String){
    let path = NSHomeDirectory() + "/Documents/\(filename)"
    let data = UIImagePNGRepresentation(image)
        try? data!.write(to: URL(fileURLWithPath : path), options: [.atomic])
    
    }

    func getImage(_ filename : String) -> UIImage?{
        let path = NSHomeDirectory() + "/Documents/\(filename)"
        do{
            let data = try Data(contentsOf: URL(fileURLWithPath : path), options : .uncachedRead)
            return UIImage(data: data)
        }
        catch{
        return nil
        }
    }



}
