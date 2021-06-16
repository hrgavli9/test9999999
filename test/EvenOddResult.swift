//
//  EvenOddResult.swift
//  test
//
//  Created by Dipak on 23/03/1943 Saka.
//


import UIKit

class EvenOddResult: UIViewController
{
    var data = " "
    
    private let mylabel:UILabel = {
       let lbl=UILabel()
        lbl.text = " "
        lbl.backgroundColor = .purple
        lbl.textAlignment = .center
        lbl.textColor = .white
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(mylabel)
        mylabel.text = data
    }
    override func viewDidLayoutSubviews() {
        mylabel.frame = CGRect(x: 40, y: 100, width: view.width-80, height: 60)
    }
    
//    
}
