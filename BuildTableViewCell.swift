//
//  BuildTableViewCell.swift
//  Help On The Rift 2
//
//  Created by Chao Wang :) on 6/11/15.
//  Copyright (c) 2015 Chao Wang :). All rights reserved.
//

import UIKit

class BuildTableViewCell: UITableViewCell {

    @IBOutlet weak var ChampIcon: UIImageView!
    @IBOutlet weak var ChampLabel: UILabel!
    @IBOutlet var Item1: UIButton!
    @IBOutlet var Item2: UIButton!
    @IBOutlet var Item3: UIButton!
    @IBOutlet var Item4: UIButton!
    @IBOutlet var Item5: UIButton!
    @IBOutlet var Item6: UIButton!
    

    func configureCellWith(NewBuild: Builds)
    {
        ChampIcon.image = UIImage(named: NewBuild.ChampImage)
        ChampLabel.text = NewBuild.Lane
        Item1.setImage(UIImage(named: NewBuild.item1), forState: UIControlState.Normal)
        Item2.setImage(UIImage(named: NewBuild.item2), forState: UIControlState.Normal)
        Item3.setImage(UIImage(named: NewBuild.item3), forState: UIControlState.Normal)
        Item4.setImage(UIImage(named: NewBuild.item4), forState: UIControlState.Normal)
        Item5.setImage(UIImage(named: NewBuild.item5), forState: UIControlState.Normal)
        Item6.setImage(UIImage(named: NewBuild.item6), forState: UIControlState.Normal)
    }

}
