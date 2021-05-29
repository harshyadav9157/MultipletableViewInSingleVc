//
//  TableViewCell.swift
//  MultipletableViewInSingleVc
//
//  Created by harsh yadav on 29/05/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    var ahModel : AhmedabadModel?{
        didSet{
            lblCity.text = ahModel?.city
            lblTitle.text = ahModel?.title
            img.image = ahModel?.img
        }
    }
    
    var muModel : MumbaiModel?{
        didSet{
            lblCity.text = muModel?.city
            lblTitle.text = muModel?.title
            img.image = muModel?.img
        }
    }
    var baModel : BangloreModel?{
        didSet{
            lblCity.text = baModel?.city
            lblTitle.text = baModel?.title
            img.image = baModel?.img
        }
    }
    var puModel : PuneModel?{
        didSet{
            lblCity.text = puModel?.city
            lblTitle.text = puModel?.title
            img.image = puModel?.img
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
