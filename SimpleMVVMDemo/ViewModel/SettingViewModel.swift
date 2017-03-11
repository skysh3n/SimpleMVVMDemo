//
//  SettingViewModel.swift
//  SimpleMVVMDemo
//
//  Created by Shen Kai on 2017/3/8.
//  Copyright © 2017年 SkyShen. All rights reserved.
//

import UIKit
import ReactiveSwift
import ReactiveCocoa
import CoreData

class SettingViewModel: NSObject {
    let userName: DynamicProperty<String>
    
    override init() {
        //获取UserModel
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        var result : [Any]!
        do {
            result = try context.fetch(UserModel.fetchRequest())
        } catch {
            print("\(error)")
        }
        let userModel : UserModel!
        if result.count == 0 {
            userModel = NSEntityDescription.insertNewObject(forEntityName: "UserModel", into: context) as! UserModel
        }else{
            userModel = result.first as! UserModel!
        }
        
        //绑定代码
        self.userName = DynamicProperty<String>(object: userModel, keyPath: "userName")
    }
}
