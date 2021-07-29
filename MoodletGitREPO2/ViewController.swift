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
    var motivatedQuotes = [Quote(text: "Success is the sum of small efforts, Repeated day-in and day-out", author: "Robert Collier"),Quote(text: "This is a reminder to you to create your own rule book, and live your life the way you want it.", author: "Reese Evans"),Quote(text: "The question isn’t who is going to let me; it’s who is going to stop me.", author: "Ayn Rand")  ]
    var relaxedQuotes = [Quote(text: "Hustle in silence and let your success make the noise.", author: "Unknown"),Quote(text: "Self-care is never a selfish act—it is simply good stewardship of the only gift I have, the gift I was put on earth to offer to others.", author: "Parker Palmer"),Quote(text: "I found in my research that the biggest reason people aren't more self-compassionate is that they are afraid they’ll become self-indulgent. They believe self-criticism is what keeps them in line. Most people have gotten it wrong because our culture says being hard on yourself is the way to be.", author: "Kisten Neff")]
    var satisfiedQuotes = [Quote(text: "The life that you are living now, is also a dream of millions. So always be satisfied with your life. Be Happy in every moment of life.", author: "John Russel"),Quote(text: "Successful people are not gifted; they just work hard, then succeed on purpose.", author: "G.K. Nielson"),Quote(text: "It is only when we take chances, when our lives improve. The initial and the most difficult risk that we need to take is to become honest.", author: "Walter Anderson")  ]
    var fullfilledQuotes = [Quote(text: "If you hear a voice within you say ‘you cannot paint,’ then by all means paint and that voice will be silenced.", author: "Vincent Van Gogh"),Quote(text: "If you hear a voice within you say ‘you cannot paint,’ then by all means paint and that voice will be silenced.", author: "Vincent Van Gogh"),Quote(text: "Life’s a game made for everyone and love is the prize", author: "Wake Me Up, Avicii"),Quote(text: "The art of fulfillment is the ability to experience not only the thrill of the chase but also the magic of the moment, the unbridled joy of feeling truly alive.", author: "Tony Robbins"), ]
    var relievedQuotes = [Quote(text: "Remember you’re the one who can fill the world with sunshine.", author: "Snow White"),Quote(text: "Learn from the mistakes of others. You can’t live long enough to make them all yourself.", author: "Eleanor Roosevelt"),Quote(text: "My heart, which is so full to overflowing, has often been solaced and refreshed by music when sick and weary.", author: "Martin Luther King jr.")]
    var uneasyQuotes = [Quote(text: "The hard days are what make you stronger", author: "Aly Raisman"),Quote(text: "You were born to be a player. You were meant to be here. This moment is yours.", author: "Herb Brooks"),Quote(text: "Life is not what you alone make it. Life is the input of everyone who touched your life and every experience that entered it. We are all part of one another.", author: "Yuri Kochiyama")  ]
    var fearfulQuotes = [Quote(text: "In the middle of every difficulty lies opportunity.", author: "Albert Einstein"),Quote(text: "The big lesson in life is never be scared of anyone or anything.", author: "Frank Sinatra"),Quote(text: "If your dreams don’t scare you, they are too small.", author: "Richard Branson") ]
    var frustratedQuotes = [Quote(text: "What defines us is how well we rise after falling.", author: "Lionel from Maid in Manhattan Movie"),Quote(text: "What defines us is how well we rise after falling.", author: "Lionel from Maid in Manhattan Movie"),Quote(text: "Crying helps me slow down and obsess over the weight of life’s problems.", author: "Sadness"),Quote(text: "You never know what you can do until you try.", author: "William Cobbett")]
    var ashamedQuotes = [Quote(text: "The world isn’t perfect. But it’s here for us, doing the best it can. And that’s what makes it so dang beautiful", author: "Roy Mustang"),Quote(text: "The world isn’t perfect. But it’s here for us, doing the best it can. And that’s what makes it so dang beautiful", author: "Roy Mustang"),Quote(text: "The world isn’t perfect. But it’s here for us, doing the best it can. And that’s what makes it so dang beautiful", author: "Roy Mustang"),Quote(text: "You’ll have bad times, but it’ll always wake you up to the good stuff you weren’t paying attention to.", author: "Robin Williams, Good Will Hunting"),Quote(text: "We’re taught to be ashamed of confusion, anger, fear and sadness, and to me they’re of equal value to happiness, excitement and inspiration", author: "Alanis Morissette"),Quote(text: "Never be ashamed of who you are, your story, or how you react to situations. Don't ever be ashamed of how you communicate with people. Don't ever be ashamed of the person you are. Be you.", author: "Roddy Rich")]
    var embarrassedQuotes = [Quote(text: "Do not be embarrassed by your failures, learn from them, and start again.", author: "Richard Benson"),Quote(text: "Don’t compromise yourself. You’re all you’ve got.", author: "Janis Joplin"),Quote(text: "If you don’t build your dream, someone else will hire you to help them build theirs.", author: "Dhirubhai Ambani") ]
    var depressedQuotes = [Quote(text: "Sometimes, life will kick you around, but sooner or later, you realize you’re not just a survivor. You’re a warrior, and you’re stronger than anything life throws your way.", author: "Tiny Buddha"),Quote(text: "On particularly rough days when I’m sure I can’t possibly endure, I like to remind myself that my track record for getting through bad days so far is 100%, and that’s pretty good.", author: "M. Weidenbenner, Fractured Not Broken: a Memoir"),Quote(text: "I am bent, but not broken. I am scarred, but not disfigured. I am sad, but not hopeless. I am tired, but not powerless. I am angry, but not bitter. I am depressed, but not giving up.", author: "Unknown")]
    var drainedQuotes = [Quote(text: "When one door of happiness closes, another opens; but often we look so long at the closed door that we do not see the one which has been opened for us.", author: "Helen Keller"),Quote(text: "Don’t limit yourself. Many people limit themselves to what they think they can do. You can go as far as your mind lets you. What you believe, remember, you can achieve.", author: "Mary Kay Ash"),Quote(text: "Don’t ever give up. Even if it’s painful, even if it’s agonizing, don't try to take the easy way out.", author: "Zenitsu Agatsuma")]
    
    
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
            displayedQuoteList = motivatedQuotes
        case "Relaxed":
            displayedQuoteList = relaxedQuotes
        case "Satisfied":
            displayedQuoteList = satisfiedQuotes
        case "Fullfilled":
            displayedQuoteList = fullfilledQuotes
        case "Relieved":
            displayedQuoteList = relievedQuotes
        case "Uneasy":
            displayedQuoteList = uneasyQuotes
        case "Fearful":
            displayedQuoteList = fearfulQuotes
        case "Frustrated":
            displayedQuoteList = frustratedQuotes
        case "Ashamed":
            displayedQuoteList = ashamedQuotes
        case "Embarrassed":
            displayedQuoteList = embarrassedQuotes
        case "Depressed":
            displayedQuoteList = depressedQuotes
        case "Drained":
            displayedQuoteList = drainedQuotes
            
            
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

