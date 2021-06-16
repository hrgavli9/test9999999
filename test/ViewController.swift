//
//  ViewController.swift
//  test
//
//  Created by Dipak on 22/03/1943 Saka.
//

import UIKit

class ViewController: UIViewController {

        private let myLabel:UILabel = {
        let label=UILabel()
        label.text="Determination Even Odd "
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        return label
    }()
//    private let myLabel1:UILabel = {
//    let label=UILabel()
//    label.text="Label 2"
//    label.textAlignment = .center
//    label.backgroundColor = .brown
//        label.textColor = .yellow
//    return label
//    }()
    
    private let mytextfield:UITextField = {
       let mytext=UITextField()
        mytext.placeholder = "please enter the number"
        mytext.textAlignment = .center
        mytext.borderStyle = .bezel
        mytext.backgroundColor = .systemFill
        return mytext
    }()
    
    private let mybutton:UIButton = {
       let mybutton = UIButton()
        mybutton.backgroundColor = .brown
        mybutton.setTitle("Submit", for: .normal)
        mybutton.setTitleColor(.yellow, for: .normal)
        mybutton.addTarget(self, action: #selector(checkevenodd), for: .touchUpInside)
        return mybutton
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(myLabel)
//        view.addSubview(myLabel1)
        view.addSubview(mytextfield)
        view.addSubview(mybutton)
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myLabel.frame=CGRect(x:40,y:200,width: view.width-80,height: 50)
        
        mytextfield.frame=CGRect(x:40,y:myLabel.bottom+100,width: view.width-80,height: 50)
        mybutton.frame=CGRect(x:40,y:mytextfield.bottom+20,width: view.width-80,height: 50)
//        myLabel1.frame=CGRect(x:40,y:mybutton.bottom+30,width: view.width-80,height: 50)
    }

    @objc private func checkevenodd()
    {
        guard let num = Int(mytextfield.text!)
        else
        {
            let alert = UIAlertController(title: "Opps", message: "Please enter only number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
            DispatchQueue.main.async {
                self.present(alert, animated: true, completion: nil)
            }
            return
        }
        
        let pushController = EvenOddResult()
        if num % 2 == 0
        {
            pushController.data = "Even Number"
        }
        else
        {
            pushController.data = "Odd Number"
        }
        navigationController?.pushViewController(pushController, animated: true)
        
////        let pushController = EvenOddResult()
//            if num % 2 == 0
//            {
//                    myLabel1.text = "Even"
////                pushController.data = "Even Number"
//            }
//            else
//            {
//                    myLabel1.text = "Odd"
////                pushController.data = "Odd Number"
//            }
////            navigationController?.pushViewController(pushController, animated: true)
////                myLabel1.text = mytextfield.text
//
//        //        let alert = UIAlertController(title: mytextfield.text, message: "number", preferredStyle: .alert)
//        //        alert.addAction(UIAlertAction(title: "ok", style: .cancel))
//        //        DispatchQueue.main.async {
//        //            self.present(alert, animated: true, completion: nil)
//        //        }
//        //        return
    }
}

