//
//  CounterViewController.swift
//  Help On The Rift 2
//
//  Created by Chao Wang :) on 6/1/15.
//  Copyright (c) 2015 Chao Wang :). All rights reserved.
//

import UIKit

class CounterViewController: UIViewController{
    
    var SentChamp: Champs!

    var Name: String = ""
    var Good1: Champs!
    var Good2: Champs!
    var Good3: Champs!
    var Bad1: Champs!
    var Bad2: Champs!
    var Bad3: Champs!
    var Team1: Champs!
    var Team2: Champs!
    var Team3: Champs!

    @IBOutlet weak var ChampLabel: UILabel!
    @IBOutlet weak var GoodIcon1: UIImageView!
    @IBOutlet weak var GoodIcon2: UIImageView!
    @IBOutlet weak var GoodIcon3: UIImageView!
    @IBOutlet weak var BadIcon1: UIImageView!
    @IBOutlet weak var BadIcon2: UIImageView!
    @IBOutlet weak var BadIcon3: UIImageView!
    @IBOutlet weak var TeamIcon1: UIImageView!
    @IBOutlet weak var TeamIcon2: UIImageView!
    @IBOutlet weak var TeamIcon3: UIImageView!
    @IBOutlet weak var GoodLabel1: UILabel!
    @IBOutlet weak var GoodLabel2: UILabel!
    @IBOutlet weak var GoodLabel3: UILabel!
    @IBOutlet weak var BadLabel1: UILabel!
    @IBOutlet weak var BadLabel2: UILabel!
    @IBOutlet weak var BadLabel3: UILabel!
    @IBOutlet weak var TeamLabel1: UILabel!
    @IBOutlet weak var TeamLabel2: UILabel!
    @IBOutlet weak var TeamLabel3: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Name = SentChamp.Good1
        for var count = 0; count < Champions.count ; count++
        {
            var check:Champs = Champions[count]
            if Name == check.name{
             Good1 = check
                count = Champions.count
            }
            else {
                Good1 = NeedUpdate
            }
        }
        
        Name = SentChamp.Good2
        for var count = 0; count < Champions.count ; count++
        {
            var check:Champs = Champions[count]
            if Name == check.name{
                Good2 = check
                count = Champions.count
            }
            else {
                Good2 = NeedUpdate
            }
        }
        
        Name = SentChamp.Good3
        for var count = 0; count < Champions.count ; count++
        {
            var check:Champs = Champions[count]
            if Name == check.name{
                Good3 = check
                count = Champions.count
            }
            else {
                Good3 = NeedUpdate
            }
        }
        
        Name = SentChamp.Bad1
        for var count = 0; count < Champions.count ; count++
        {
            var check:Champs = Champions[count]
            if Name == check.name{
                Bad1 = check
                count = Champions.count
            }
            else {
                Bad1 = NeedUpdate
            }
        }
        
        Name = SentChamp.Bad2
        for var count = 0; count < Champions.count ; count++
        {
            var check:Champs = Champions[count]
            if Name == check.name{
                Bad2 = check
                count = Champions.count
            }
            else {
                Bad2 = NeedUpdate
            }
        }
        
        Name = SentChamp.Bad3
        for var count = 0; count < Champions.count ; count++
        {
            var check:Champs = Champions[count]
            if Name == check.name{
                Bad3 = check
                count = Champions.count
            }
            else {
                Bad3 = NeedUpdate
            }
        }
        
        Name = SentChamp.GoodWith1
        for var count = 0; count < Champions.count ; count++
        {
            var check:Champs = Champions[count]
            if Name == check.name{
                Team1 = check
                count = Champions.count
            }
            else {
                Team1 = NeedUpdate
            }
        }
        
        Name = SentChamp.GoodWith2
        for var count = 0; count < Champions.count ; count++
        {
            var check:Champs = Champions[count]
            if Name == check.name{
                Team2 = check
                count = Champions.count
            }
            else {
                Team2 = NeedUpdate
            }
            
            
        }
        
        Name = SentChamp.GoodWith3
        for var count = 0; count < Champions.count ; count++
        {
            var check:Champs = Champions[count]
            if Name == check.name{
                Team3 = check
                count = Champions.count
            }
            else {
                Team3 = NeedUpdate
            }
        }
        
        ChampLabel.text = SentChamp.name
        GoodIcon1.image = UIImage(named: Good1.icon)
        GoodLabel1.text = Good1.name
        GoodIcon2.image = UIImage(named: Good2.icon)
        GoodLabel2.text = Good2.name
        GoodIcon3.image = UIImage(named: Good3.icon)
        GoodLabel3.text = Good3.name
        BadIcon1.image = UIImage(named: Bad1.icon)
        BadLabel1.text = Bad1.name
        BadIcon2.image = UIImage(named: Bad2.icon)
        BadLabel2.text = Bad2.name
        BadIcon3.image = UIImage(named: Bad3.icon)
        BadLabel3.text = Bad3.name
        TeamIcon1.image = UIImage(named: Team1.icon)
        TeamLabel1.text = Team1.name
        TeamIcon2.image = UIImage(named: Team2.icon)
        TeamLabel2.text = Team2.name
        TeamIcon3.image = UIImage(named: Team3.icon)
        TeamLabel3.text = Team3.name
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    
}
