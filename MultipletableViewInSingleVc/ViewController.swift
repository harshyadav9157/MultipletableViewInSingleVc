//
//  ViewController.swift
//  MultipletableViewInSingleVc
//
//  Created by harsh yadav on 29/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segOut: UISegmentedControl!
    
    var ahData = [AhmedabadModel]()
    var muData = [MumbaiModel]()
    var baData = [BangloreModel]()
    var puData = [PuneModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ahData = [
         AhmedabadModel(city:"Ahmedabad",img:  #imageLiteral(resourceName: "a1"), title: "Navratri"),
         AhmedabadModel(city:"Ahmedabad",img:  #imageLiteral(resourceName: "a2"), title: "Rann Utsav"),
         AhmedabadModel(city:"Ahmedabad",img:  #imageLiteral(resourceName: "a3"), title: "Shamlaji Melo"),
         AhmedabadModel(city:"Ahmedabad",img:  #imageLiteral(resourceName: "a4"), title: "International Kite Festival (Uttarayan)"),
         AhmedabadModel(city:"Ahmedabad",img:  #imageLiteral(resourceName: "a5"), title: "Bhavnath Mahadev Fair"),
         AhmedabadModel(city:"Ahmedabad",img:  #imageLiteral(resourceName: "a6"), title: "Rath Yatra"),
         AhmedabadModel(city:"Ahmedabad",img:  #imageLiteral(resourceName: "a7"), title: "Janmashtami")
         ]
         
         muData = [
             MumbaiModel(city: "Mumbai", img:  #imageLiteral(resourceName: "m1"), title: "Banganga (Jan)"),
             MumbaiModel(city: "Mumbai", img:  #imageLiteral(resourceName: "m2"), title: "Elephanta festival (Feb)"),
             MumbaiModel(city: "Mumbai", img:  #imageLiteral(resourceName: "m3"), title: "Gudhi Padava (Mar-Apr)"),
             MumbaiModel(city: "Mumbai",img:  #imageLiteral(resourceName: "m4"), title: "Ganesh Chaturthi (Aug-Sep)"),
             MumbaiModel(city: "Mumbai",img:  #imageLiteral(resourceName: "m5"), title: "Diwali(Oct-Nov)")
         ]
         
         baData = [
             BangloreModel(city: "Banglore", img:  #imageLiteral(resourceName: "b1"), title: "Karaga Festival"),
             BangloreModel(city: "Banglore", img:  #imageLiteral(resourceName: "b2"), title: "Kadalekai Parishe Festival"),
             BangloreModel(city: "Banglore", img:  #imageLiteral(resourceName: "b3"), title: "Makar Sankranti"),
             BangloreModel(city:"Banglore",img:  #imageLiteral(resourceName: "b4"), title: "Ugadi Festival"),
             BangloreModel(city:"Banglore",img:  #imageLiteral(resourceName: "b5"), title: "Varamahalakshmi Festival")
         ]
         
         puData = [
             PuneModel(city: "Pune", img:  #imageLiteral(resourceName: "p1"), title: "Makar Sankranti"),
             PuneModel(city: "Pune", img:  #imageLiteral(resourceName: "p2"), title: "Vasant Panchami"),
             PuneModel(city:"Pune",img:  #imageLiteral(resourceName: "p3"), title: "Holi"),
             PuneModel(city:"Pune",img:  #imageLiteral(resourceName: "p4"), title: "Gudi Padwa"),
             PuneModel(city:"Pune",img:  #imageLiteral(resourceName: "p5"), title: "Nag Panchami")
         ]
     }
    


    @IBAction func segmentClicked(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var value = 0
        switch segOut.selectedSegmentIndex {
        case 0 :
            value =  ahData.count
            break
        case 1 :
            value =  muData.count
            break
        case 2 :
            value =  baData.count
            break
        case 3 :
            value =  puData.count
            break
        default :
            break
        }
        return value
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        switch segOut.selectedSegmentIndex {
        case 0:
     //       cell.lblTitle.text = ahData[indexPath.row].title
            cell.ahModel = ahData[indexPath.row]
        case 1 :
            cell.muModel = muData[indexPath.row]
        case 2 :
            cell.baModel = baData[indexPath.row]
        case 3 :
            cell.puModel = puData[indexPath.row]
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailFormVc = self.storyboard?.instantiateViewController(identifier: "DetailViewController")  as! DetailViewController
        switch segOut.selectedSegmentIndex {
        case 0:
            detailFormVc.dataPassAh = ahData[indexPath.row]
        case 1:
            detailFormVc.dataPassMu = muData[indexPath.row]
        case 2:
            detailFormVc.dataPassBa = baData[indexPath.row]
        case 3:
            detailFormVc.dataPassPu = puData[indexPath.row]
        default:
            break
        }
        self.navigationController?.pushViewController(detailFormVc, animated: true)
    }
}

