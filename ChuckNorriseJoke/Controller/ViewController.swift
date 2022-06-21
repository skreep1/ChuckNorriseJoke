//
//  ViewController.swift
//  ChuckNorriseJoke
//
//  Created by Maksim Skrypka on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!
    
    @IBAction func nextButton(_ sender: Any) {
        getApi()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //jokeViewMode.parse()
        getApi()
    
    }
    
    func getApi () {
        let api = URL(string: "https://api.chucknorris.io/jokes/random")
        
        URLSession.shared.dataTask(with: api!) {
            data, response, error in
            if error != nil {
            print("Error")
            return
        }
        do {
            let result = try JSONDecoder().decode(Joke.self, from: data!)
            DispatchQueue.main.async {
                self.jokeLabel.text = result.value
            }
            
        }
        catch {
            
        }
    
        }.resume()
}

}

