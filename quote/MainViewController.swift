//
//  ViewController.swift
//  quote
//
//  Created by Elina Eickstädt on 02.03.19.
//  Copyright © 2019 Elina Eickstädt. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView();
    
    // Liste
    let quotes = [NSLocalizedString("quote1", comment: ""), NSLocalizedString("quote2", comment: ""), NSLocalizedString("quote3", comment: ""), NSLocalizedString("quote4", comment: ""), NSLocalizedString("quote5", comment: ""), NSLocalizedString("quote6", comment: "")];
    
    override func loadView() {
        self.view = self.mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(loadNewQuote))
        self.mainView.logoImageView.isUserInteractionEnabled = true
        self.mainView.logoImageView.addGestureRecognizer(tapGesture)
        self.mainView.quoteLabel.text = self.quotes[0]
    }
    
    @objc func loadNewQuote() {
        print("load new quote")
        let randomquote = quotes.randomElement()!
        let actualquote = "quote1"
        while randomquote == actualquote{
            let randomquote = quotes.randomElement()!
        }
        self.mainView.quoteLabel.text = randomquote
        let actualquote = randomquote
    }
}

