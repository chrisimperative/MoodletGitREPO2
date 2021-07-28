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
    var thrilledQuotes = [Quote(text: "Every champion was once a contender that didn't give up.", author: "Gabby Douglas"),Quote(text: "Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are doing or learning to do.", author: "Pele"),Quote(text: "", author: "Pele") ]
    var happyQuotes = [Quote(text: "Don't be pushed by your problems, be led by your dreams.", author: "Ralph Waldo Emerson")]

    func pickAQuote() {
        var displayedQuoteList = [Quote]()
        switch feeling {
        case "Furious":
            displayedQuoteList = furiousQuotes
        case "Thrilled":
            displayedQuoteList = thrilledQuotes
        case "Happy":
            displayedQuoteList = happyQuotes
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

