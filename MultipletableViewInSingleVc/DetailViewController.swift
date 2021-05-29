//
//  DetailViewController.swift
//  MultipletableViewInSingleVc
//
//  Created by harsh yadav on 29/05/21.
//

import UIKit
import Foundation


class DetailViewController: UIViewController {

    @IBOutlet weak var imgPass: UIImageView!
    @IBOutlet weak var festival: UILabel!
    @IBOutlet weak var cityNamePass: UILabel!
    
    var dataPassAh : AhmedabadModel?
    var dataPassMu : MumbaiModel?
    var dataPassBa : BangloreModel?
    var dataPassPu : PuneModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if dataPassAh?.city == "Ahmedabad"{
            festival.text = dataPassAh?.title
            cityNamePass.text = dataPassAh?.city
            imgPass.image = dataPassAh?.img
            
        }else if dataPassMu?.city == "Mumbai"{
            festival.text = dataPassMu?.title
            cityNamePass.text = dataPassMu?.city
            imgPass.image = dataPassMu?.img
            
        }else if dataPassBa?.city == "Banglore"{
            festival.text = dataPassBa?.title
            cityNamePass.text = dataPassBa?.city
            imgPass.image = dataPassBa?.img
            
        } else  if dataPassPu?.city == "Pune"{
            festival.text = dataPassPu?.title
            cityNamePass.text = dataPassPu?.city
            imgPass.image = dataPassPu?.img
            
        }
            
        }
    }
    
    


