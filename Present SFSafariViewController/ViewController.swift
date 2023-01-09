//
//  ViewController.swift
//  Present SFSafariViewController
//
//  Created by José Javier Romero Alvarez on 9/1/23.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {
    
    let safariBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            view.addSubview(safariBtn)
            safariBtn.backgroundColor = .systemBlue
            safariBtn.addTarget(self, action: #selector(openInSafari), for: .touchUpInside)
            safariBtn.setTitle(NSLocalizedString("Open in Safari", comment: ""), for: .normal)
            safariBtn.translatesAutoresizingMaskIntoConstraints = false
            safariBtn.heightAnchor.constraint(equalToConstant: 80).isActive = true
            safariBtn.widthAnchor.constraint(equalToConstant: 200).isActive = true
            safariBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            safariBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    
    @objc func openInSafari() {
        let urlApple = "https://www.apple.com"
        if let url = URL(string: urlApple) {
            let vc = SFSafariViewController(url: url)
            vc.delegate = self

            present(vc, animated: true)
        }
    }
}
