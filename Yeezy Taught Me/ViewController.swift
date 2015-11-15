//
//  ViewController.swift
//  Yeezy Taught Me
//
//  Created by Rohit Tigga on 11/9/15.
//  Copyright © 2015 Rohit Tigga. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var YeezyQuotes = ["George Bush doesn't care about black people.",
        "Nothing in life is promised except death.",
        "I'll say things that are serious and put them in a joke form so people can enjoy them. We laugh to keep from crying.",
        "We all self-conscious. I'm just the first to admit it.",
        "My music isn’t just music — it’s medicine.",
        "I was never really good at anything except for the ability to learn.",
        "I know I got angels watching me from the other side.",
        "My greatest pain in life is that I will never be able to see myself perform live.",
        "She asked if it's fashion week, ummm I thought it was every week?",
        "Believe in your flyness, conquer your shyness",
        "Everything I'm not made me everything I am",
        "I believe there's a God above me.",
        "I could let these dreams killers kill my self-esteem or use my arrogance as a steam to power my dreams.",
        "Would you believe in what you believe in if you were the only one who believed it?",
        "If you have the opportunity to play this game of life you need to appreciate every moment. a lot of people don't appreciate the moment until it's passed.",
        "I feel like I'm too busy writing history to read it.",
        "I was never really good at anything except for the ability to learn.",
        "I don't even listen to rap. My apartment is too nice to listen to rap in.",
        "Our work is never over.",
        "Sometimes people write novels and they just be so wordy and so self-absorbed.",
        "Keep your nose out the sky, keep your heart to god, and keep your face to the raising sun.",
        "I know I got angels watchin me from the other side.",
        "I will go down as the voice of this generation, of this decade, I will be the loudest voice.",
        "I would never want a book's autograph. I am a proud non-reader of books.",
        "Man, I'm the No. 1 living and breathing rock star. I am Axl Rose; I am Jim Morrison; I am Jimi Hendrix.",
        "I am Warhol. I am the No. 1 most impactful artist of our generation. I am Shakespeare in the flesh.",
        "I refuse to accept other people's ideas of happiness for me. As if there's a 'one size fits all' standard for happiness.",
        "I still think I am the greatest.",
        "Nobody can tell me where I can and can't go.",
        "People always say that you can't please everybody. I think that's a cop-out. Why not attempt it? 'Cause think of all the people you will please if you try.",
        "I didn't want to play it boring and safe. I also didn't want to innovate too much. Second albums, man, they're even scarier than first ones.",
        "I don't know what's better gettin' laid or gettin' paid.",
        "It was a strike against me that I didn't wear baggy jeans and jerseys and that I never hustled, never sold drugs.",
        "This dark diction has become America's addiction.",
        "I am not a fan of books.",
        "If I was just a fan of music, I would think that I was the number one artist in the world.",
        "Creative output, you know, is just pain. I'm going to be cliche for a minute and say that great art comes from pain.",
        "If I was just a fan of music, I would think that I was the number one artist in the world.",
        "In Paris, you're as far as possible from the land of pleasant smiles.",
        "Fashion breaks my heart.",
        "I hate the way they portray us in the media. If you see a black family it says they're looting, if you see a white family it says they're looking for food.",
        "I really appreciate the moments that I was able to win rap album of the year or whatever."
        ]
    var dice1: Int = 0
    @IBOutlet var KanyeText: UILabel!

    @IBOutlet var YeezyButton: UIButton!
    @IBOutlet var OversetView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set Kanye Wallpaper as the background
        OversetView.backgroundColor = UIColor(patternImage: UIImage(named: "KanyeWallpaper.jpg")!)
        OversetView.alpha = 0.5
        YeezyButton.layer.cornerRadius = 10
        //example of how to change the text
        //KanyeText.text = "George Bush doesn't care about black people"
        YeezyButton.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClicked(sender : AnyObject) {
        dice1 = randRange(0,upper: YeezyQuotes.count-1)
        if(sender as! NSObject==YeezyButton){
            KanyeText.text = YeezyQuotes[dice1]
        }
    }
    
    
    //generate a random integer
    func randRange (lower: Int , upper: Int) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
    }
    
    


}

