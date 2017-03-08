//
//  UserModel+CoreDataProperties.swift
//  SimpleMVVMDemo
//
//  Created by Shen Kai on 2017/3/8.
//  Copyright © 2017年 SkyShen. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension UserModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserModel> {
        return NSFetchRequest<UserModel>(entityName: "UserModel");
    }

    @NSManaged public var userName: String?

}
