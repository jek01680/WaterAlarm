//
//  AddAlertViewController.swift
//  DrinkWater
//
//  Created by 정은경 on 2022/03/19.
//

import UIKit

class AddAlertViewController: UIViewController {
    //부모뷰에 전달하기 위해 클로저 사용
    //특정시간에 알람 발송 -> UNCalanderNotificationTrigger
    var pickedDate: ((_ date: Date) -> Void)?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func tapDismissButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapSaveButton(_ sender: UIBarButtonItem) {
        pickedDate?(datePicker.date)
        self.dismiss(animated: true, completion: nil)
    }
    
}
