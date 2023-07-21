//
//  JokesViewController.swift
//  Pick Me Up
//
//  Created by Nicole Michel on 2022-02-04.
//

import UIKit

class JokesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var restrictRotation:UIInterfaceOrientationMask = .portrait
    
    @IBOutlet var jokesDisplay: UITableView!
    
    let jokeArray = [
        ["Jokes", "What is the biggest lie in the entire universe?", "I just got fired from my job at the keyboard factory.", "My email password has been hacked.", "I once fell in love with a girl who only knew 4 vowels.", "I thought I won the argument with my wife as to how to arrange the dining room furniture.", "My wife keeps telling me that I’m the cheapest person she has ever met in her life.", "Ladies, if he can’t appreciate your fruit jokes…", "Sometimes I tuck my knees into my chest and lean forward.", "How much money does a skunk have?", "Why should you stay away from teenage skunks?", "Which U.S. state is famous for its extra-small soft drinks?", "What did the flame say to his buddies after he fell in love?", "What do you get when you cross a centipede with a parrot?", "What do you get when you cross a fish with an elephant?", "How did the telephone propose to its girlfriend?", "How do you prevent a Summer cold?", "What do planets like to read?", "Which dog breed is guaranteed to laugh at all of your jokes?", "What do you call friends who love math?", "What do you call a number that can’t keep still?", "What does the zero say to the eight?", "Why did the two 4’s skip lunch?", "How does a mathematician induce good behavior in her children?", "What did 2 say to 4 after 2 beat him in a race?", "Where do lightning bolts go on dates?", "What do you call dangerous precipitation?", "I'm so good at sleeping.", "Why should you never break up with a goalie?", "Orion's Belt is a big waist of space.", "The other day, my wife asked me to pass her lipstick but I accidentally passed her a glue stick.", "Why do blind people hate skydiving?", "What do you call a guy with a rubber toe?", "My wife told me I had to stop acting like a flamingo.", "Why did the old man fall in the well?", "What do you call a frenchman wearing sandals?", "I ate a clock yesterday.", "I know a lot of jokes about unemployed people.", "Where do you find a cow with no legs?", "And the lord said unto John, \"Come forth and you will receive eternal life.\"", "Why was 6 afraid of 7?"],
                     
        ["Answer", "I have read and agree to the Terms & Conditions.", "They told me I wasn't putting in enough shifts.", "That's the third time I've had to rename the cat.", "She didn't know I existed.", "But when I got home the tables were turned.", "I'm not buying it.", "You need to let that mango.", "That's how I roll.", "One scent.", "Because they are going through P-U-berty.", "Mini-soda.", "\"I found the perfect match.\"", "A walkie-talkie.", "Swimming trunks.", "He gave her a ring.", "Catch it in the Winter.", "Comet books!", "A Chi-ha-ha.", "Algebros.", "A roamin' numeral.", "Nice belt.", "They already 8.", "\"I’ve told you n times, I’ve told you n+1 times…\"", "2 Fast 4 you.", "To Cloud 9.", "A rain of terror.", "I can do it with my eyes closed.", "Because he's a keeper.", "Terrible joke. Only three stars.", "She still isn't talking to me.", "It scares the hell out of their dogs.", "Roberto.", "So I had to put my foot down.", "Because he couldn't see that well.", "Phillipe Phillope.", "It was very time consuming.", "But none of them work.", "Right where you left it.", "John came fifth and won a toaster.", "Because 7 was a registered 6 offender."]]
    
    let cellID = "cellID"
    // creates an arbitrary constant name for a cell
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jokesDisplay.dataSource = self
        jokesDisplay.delegate = self
        // defines the table and gets the data from the view controller that its stored in self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jokeArray[section].count - 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellID)
        }
        cell?.textLabel!.numberOfLines = 0
        cell?.textLabel!.lineBreakMode = .byWordWrapping
        cell?.textLabel?.text = jokeArray[indexPath.section][indexPath.row + 1]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedItem = jokeArray[indexPath.section + 1][indexPath.row + 1]
        
        let alert = UIAlertController(title: "Answer", message: "\(selectedItem)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            //Just dismiss the action
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: true)
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

