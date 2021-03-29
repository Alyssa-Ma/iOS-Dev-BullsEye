//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Alyssa Ma on 3/29/21.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    //close button funcitonality
    @IBAction func close()
    {
        dismiss(animated: true, completion: nil)
    }
    
    //webview funcitonality
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(
            forResource: "BullsEye", withExtension: "html")
            {
                let request = URLRequest(url: url)
                webView.load(request)
            }
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
