//
//  ViewController.swift
//  MoodletGitREPO2
//
//  Created by Christopher Prena on 7/22/21.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        pickAQuote()
        // Do any additional setup after loading the view.
    }

    let sadQuoteList = ["Sometimes, life will kick you around, but sooner or later, you realize you’re not just a survivor. You’re a warrior, and you’re stronger than anything life throws your way.", "On particularly rough days when I’m sure I can’t possibly endure, I like to remind myself that my track record for getting through bad days so far is 100%, and that’s pretty good.", "Hold the vision, trust the process.", "Never regret anything that made you smile.", "You’ll have bad times, but it’ll always wake you up to the good stuff you weren’t paying attention to.", "What defines us is how well we rise after falling.", "Crying helps me slow down and obsess over the weight of life’s problems.", "You never know what you can do until you try", "In the middle of every difficulty lies opportunity.", "The big lesson in life is never be scared of anyone or anything.", "If your dreams don’t scare you, they are too small.", "You were born to be a player. You were meant to be here. This moment is yours.", "Life is not what you alone make it. Life is the input of everyone who touched your life and every experience that entered it. We are all part of one another.", "Nothing will work unless you do.", "If you want to fly give up everything that weighs you down.", "Do the best you can. No one can do more than that.", "On a particularly rough days when I’m sure I can’t possibly endure, I like to remind myself that my track record for getting through bad days so far is 100%, and that’s pretty good.", "I am bent, but not broken. I am scarred, but not disfigured. I am sad, but not hopeless. I am tired, but not powerless. I am angry, but not bitter. I am depressed, but not giving up.", "The world isn’t perfect. But it’s here for us, doing the best it can. And that’s what makes it so dang beautiful", "You’ll have bad times, but it’ll always wake you up to the good stuff you weren’t paying attention to.", "We’re taught to be ashamed of confusion, anger, fear and sadness, and to me they’re of equal value to happiness, excitement and inspiration.", "Never be ashamed of who you are, your story, or how you react to situations. Don't ever be ashamed of how you communicate with people. Don't ever be ashamed of the person you are. Be you.", "Do not be embarrassed by your failures, learn from them, and start again.", "If you don’t build your dream, someone else will hire you to help them build theirs.", "When one door of happiness closes, another opens; but often we look so long at the closed door that we do not see the one which has been opened for us.", "If you want to live a happy life, tie it to a goal, not to people or things."]


    func pickAQuote() {
        let randomQuote = sadQuoteList.randomElement()
        print (randomQuote)
        quoteLabel.text = randomQuote

    }
    
   
    
        
    

    @IBOutlet var quoteLabel: UILabel!
    
    
    
}

