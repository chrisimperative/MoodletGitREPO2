//
//  ViewController.swift
//  MoodletGitREPO2
//
//  Created by Christopher Prena on 7/22/21.
//

import UIKit

class ViewController: UIViewController {
    var feeling = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickAQuote()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var authorLabel: UILabel!
    var furiousQuotes = [Quote(text: "Hold the vision, trust the process." , author: "Unknown"), Quote(text: "Never regret anything that made you smile.", author: "Mark Twain"), Quote(text: "You’ll have bad times, but it’ll always wake you up to the good stuff you weren’t paying attention to.", author: "Good Will Hunting") ]
    var thrilledQuotes = [Quote(text: "Every champion was once a contender that didn't give up.", author: "Gabby Douglas"),Quote(text: "Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are doing or learning to do.", author: "Pele"),Quote(text: "What is life without a little risk?", author: "J.K Rowling") ]
    var happyQuotes = [Quote(text: "Don't be pushed by your problems, be led by your dreams.", author: "Ralph Waldo Emerson"),Quote(text: "It’s not what you do once in a while, it's what you do day in and day out that makes the difference.", author: "Jenny Craig"),Quote(text: "When Plan “A” doesn’t work, don’t worry, you still have 25 more letters to go through.", author: "Unknown") ]
    var proudQuotes = [Quote(text: "Whenever you find yourself doubting how far you can go, just remember how far you have come.", author: "Unknown"),Quote(text: "Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself", author: "Rumi"),Quote(text: "Be a first rate version of yourself, not a second rate version of someone else.", author: "Judy Garland") ]
    var motivatedQoutes = [Quote(text: "Success is the sum of small efforts, Repeated day-in and day-out", author: "Robert Collier"),Quote(text: "This is a reminder to you to create your own rule book, and live your life the way you want it.", author: "Reese Evans"),Quote(text: "The question isn’t who is going to let me; it’s who is going to stop me.", author: "Ayn Rand")  ]
    var relaxedQoutes = [Quote(text: "Hustle in silence and let your success make the noise.", author: "Unknown"),Quote(text: "Self-care is never a selfish act—it is simply good stewardship of the only gift I have, the gift I was put on earth to offer to others.", author: "Parker Palmer"),Quote(text: "I found in my research that the biggest reason people aren't more self-compassionate is that they are afraid they’ll become self-indulgent. They believe self-criticism is what keeps them in line. Most people have gotten it wrong because our culture says being hard on yourself is the way to be.", author: "Kisten Neff")]
    
    
    

    func pickAQuote() {
        var displayedQuoteList = [Quote]()
        switch feeling {
        case "Furious":
            displayedQuoteList = furiousQuotes
        case "Thrilled":
            displayedQuoteList = thrilledQuotes
        case "Happy":
            displayedQuoteList = happyQuotes
        case "Proud":
            displayedQuoteList = proudQuotes
        case "Motivated":
            displayedQuoteList = motivatedQoutes
        case "Motivated":
            displayedQuoteList = motivatedQoutes
        default:
            return
            
        }
        let randomQuote = displayedQuoteList.randomElement()
        print (randomQuote?.text)
        quoteLabel.text = randomQuote?.text
        authorLabel.text = randomQuote?.author
    }
    
   
    
        
    

    @IBOutlet var quoteLabel: UILabel!
    
    
    
}

