//
//  TableViewCellProfile.swift
//  Travelbag
//
//  Created by ifce on 09/11/17.
//  Copyright © 2017 ifce. All rights reserved.
//

import UIKit

class TableViewCellProfile: UITableViewCell {

    var delegate:CustomProfileDelegate?
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var follow: UILabel!
    @IBOutlet weak var chat: UILabel!
    @IBOutlet weak var places: UILabel!
    @IBOutlet weak var following: UILabel!
    @IBOutlet weak var followers: UILabel!
    @IBOutlet weak var countPlaces: UILabel!
    @IBOutlet weak var countFollowing: UILabel!
    @IBOutlet weak var countFollowers: UILabel!
    
    var viewController: TableViewProfileUsers?
    
    @IBAction func toFeed(_ sender: UIButton) {
        viewController?.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func didTapChat(_ sender: Any) {
    self.delegate?.didTapChat()
    }
    

}

protocol CustomProfileDelegate{
    func didTapChat()
}
