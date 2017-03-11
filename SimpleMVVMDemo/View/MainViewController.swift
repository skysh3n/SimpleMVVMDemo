//
//  MainViewController.swift
//  SimpleMVVMDemo
//
//  Created by Shen Kai on 2017/3/8.
//  Copyright © 2017年 SkyShen. All rights reserved.
//

import UIKit
import ReactiveSwift
import ReactiveCocoa

class MainViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    
    var mainViewModel : MainViewModel = MainViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // 绑定代码
        self.userNameLabel.reactive.text <~ mainViewModel.userName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
