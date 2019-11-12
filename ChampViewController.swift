//
//  ChampViewController.swift
//  Help On The Rift 2
//
//  Created by Chao Wang :) on 6/11/15.
//  Copyright (c) 2015 Chao Wang :). All rights reserved.
//

import UIKit
import iAd

class ChampViewController: UIViewController, ADBannerViewDelegate {

    var SentChamp: Champs?
    let PickIdentifier = "sentSegue"
    let PickIdentifie = "sendSegue"
    
    @IBOutlet weak var ChampImage: UIImageView!
    @IBOutlet weak var ChampText: UILabel!
    @IBOutlet weak var LoreText: UITextView!
    @IBOutlet weak var ChampBackGround: UIImageView!
    @IBOutlet var AdBanner: ADBannerView!

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.canDisplayBannerAds = true
        self.AdBanner?.delegate = self
        self.AdBanner?.hidden = true

        ChampImage.image = UIImage(named: SentChamp!.icon)
        ChampText.text = SentChamp?.name
        LoreText.text = SentChamp?.lore
        ChampBackGround.image = UIImage(named: SentChamp!.background)
        
    }
    
    
    func bannerViewWillLoadAd(banner: ADBannerView!) {
        
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        self.AdBanner.hidden = false
    }
    
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        return true
    }
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == PickIdentifier   {
            if let destination = segue.destinationViewController as? CounterViewController {
                    destination.SentChamp = SentChamp
            }
        }
        if segue.identifier == PickIdentifie   {
            if let destination = segue.destinationViewController as? BuildsTableViewController {
                destination.SentChamp = SentChamp
            }
        }
    }
    

}
