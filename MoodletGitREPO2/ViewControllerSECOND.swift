//
//  ViewControllerSECOND.swift
//  MoodletGitREPO2
//
//  Created by Christopher Prena on 7/28/21.
//

import UIKit

class ViewControllerSECOND: UIViewController {

    @IBOutlet var quoteLabel2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
pickAQuote2()
        // Do any additional setup after loading the view.
    }
    let happyQuoteList = ["Don't be pushed by your problems, be led by your dreams.", "It’s not what you do once in a while, it's what you do day in and day out that makes the difference.", "When Plan “A” doesn’t work, don’t worry, you still have 25 more letters to go through.", "Success is the sum of small efforts, Repeated day-in and day-out", "This is a reminder to you to create your own rule book, and live your life the way you want it.", "The question isn’t who is going to let me; it’s who is going to stop me.", "Focus on being productive instead of busy.", "Passion is energy. Feel the power that comes from focusing on what excites you.", "Whenever you find yourself doubting how far you can go, just remember how far you have come.", "Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.", "Be a first rate version of yourself, not a second rate version of someone else.", "Every champion was once a contender that didn’t give up.", "Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are doing or learning to do.", "What is life without a little risk?", "Hustle in silence and let your success make the noise.", "Self-care is never a selfish act—it is simply good stewardship of the only gift I have, the gift I was put on earth to offer to others.", "I found in my research that the biggest reason people aren't more self-compassionate is that they are afraid they’ll become self-indulgent. They believe self-criticism is what keeps them in line. Most people have gotten it wrong because our culture says being hard on yourself is the way to be.", "The life that you are living now, is also a dream of millions. So always be satisfied with your life. Be Happy in every moment of life.", "Successful people are not gifted; they just work hard, then succeed on purpose.", "It is only when we take chances, when our lives improve. The initial and the most difficult risk that we need to take is to become honest.", "Remember you’re the one who can fill the world with sunshine.", "Learn from the mistakes of others. You can’t live long enough to make them all yourself.", "My heart, which is so full to overflowing, has often been solaced and refreshed by music when sick and weary.", "If you hear a voice within you say ‘you cannot paint,’ then by all means paint and that voice will be silenced.", "Life’s a game made for everyone and love is the prize", "The art of fulfillment is the ability to experience not only the thrill of the chase but also the magic of the moment, the unbridled joy of feeling truly alive.", "Try not to become a man of success, but rather become a man of value.", "Pride makes us artificial and humility makes us real.", "We realize the importance of our voices only when we are silenced."]
    
    func pickAQuote2() {
        let randomQuote2 = happyQuoteList.randomElement()
        print (randomQuote2)
        quoteLabel2.text = randomQuote2
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
