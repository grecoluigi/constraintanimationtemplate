//
//  ViewController.swift
//  Constraint Animation Template
//
//  Created by Luigi Greco on 27/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swiftLogoImageView: UIImageView!
    
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var stackView: UIStackView!


    override func viewDidLoad() {
        super.viewDidLoad()
        swiftLogoImageView.translatesAutoresizingMaskIntoConstraints = false
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateLogo()
    }

    
    func animateLogo(){

        UIView.animate(withDuration: 2.0,
                       delay: 0.0,
                       options: [.curveLinear],
                       animations: {
            self.leadingConstraint.isActive = false
            self.trailingConstraint.isActive = false
            self.bottomConstraint.isActive = false
            self.topConstraint.isActive = false
            self.view.layoutIfNeeded()

        }, completion: {
            (_) in
            self.stackView.isHidden = false
            //self.stackView.isHidden = false
        })
    }
}

