//
//  ObservationDetailViewController.swift
//  Field Survey
//
//  Created by Jonah Zukosky on 7/15/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class ObservationDetailViewController: UIViewController {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var observationTitle: UILabel!
    @IBOutlet weak var observationDescription: UITextView!
    @IBOutlet weak var date: UILabel!
    
    var iconImage: UIImage = UIImage()
    var observationTitleText: String = ""
    var observationDescriptionText: String = ""
    var bufferDate: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        icon.image = iconImage
        observationTitle.text = observationTitleText
        observationDescription.text = observationDescriptionText
        date.text = bufferDate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
