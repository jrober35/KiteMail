//
//  ConversationStatisticsViewController.swift
//  KiteMail
//
//  Created by John Robertson on 5/18/17.
//  Copyright © 2017 SendBird. All rights reserved.
//

import UIKit
import SendBirdSDK


class ConversationStatisticsViewController: UIViewController {
   @IBOutlet weak var navItem: UINavigationItem!
   
   var channel: SBDGroupChannel!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      // Do any additional setup after loading the view.
      self.navItem.leftBarButtonItems?[0] = UIBarButtonItem(image: UIImage(named: "btn_close"), style: UIBarButtonItemStyle.done, target: self, action: #selector(close))
      
   }

   override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
      
      /*self.channel.refresh { (error) in
         if error != nil {
            let vc = UIAlertController(title: Bundle.sbLocalizedStringForKey(key: "ErrorTitle"), message: error?.domain, preferredStyle: UIAlertControllerStyle.alert)
            let closeAction = UIAlertAction(title: Bundle.sbLocalizedStringForKey(key: "CloseButton"), style: UIAlertActionStyle.cancel, handler: nil)
            vc.addAction(closeAction)
            DispatchQueue.main.async {
               self.present(vc, animated: true, completion: nil)
            }
            
            return
         }
      }*/
      
   }
   
   @objc private func close() {
      self.dismiss(animated: false, completion: nil)
   }
}
