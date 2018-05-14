//
//  A3ViewController.swift
//  unwindSegueExample
//
//  Created by 長尾聡一郎 on 2018/05/15.
//  Copyright © 2018年 長尾聡一郎. All rights reserved.
//

import UIKit

class A3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToDarkA3(segue: UIStoryboardSegue) {
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear on \(String(describing: self))")
        print("presentedViewControllerViewController is \(String(describing: self.presentedViewController))")
        print("presentingViewController is \(String(describing: self.presentingViewController))")
        if let navigationController = self.navigationController?.childViewControllers {
            print("navigationController.childViewController has ...")
            navigationController.forEach{ print(String(describing: $0)) }
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidAppear on \(String(describing: self))")
        print("presentedViewControllerViewController is \(String(describing: self.presentedViewController))")
        print("presentingViewController is \(String(describing: self.presentingViewController))")
        self.childViewControllers.forEach{ print(String(describing: $0)) }
        if let navigationController = self.navigationController?.childViewControllers {
            print("navigationController.childViewController has ...")
            navigationController.forEach{ print(String(describing: $0)) }
        }
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
