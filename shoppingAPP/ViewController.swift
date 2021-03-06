//
//  ViewController.swift
//  shoppingAPP
//
//  Created by 王昱淇 on 2021/8/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dressImageView: UIImageView!
    @IBOutlet weak var informationImageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet var imagesSwipeGestureRecognizer: UISwipeGestureRecognizer!
    @IBOutlet var imagesRightSwipeGestureRecognizer: UISwipeGestureRecognizer!
    @IBOutlet weak var informationSegmentedControl: UISegmentedControl!
    @IBOutlet weak var pageLabel: UILabel!
    @IBOutlet weak var piecesLabel: UILabel!
    @IBOutlet weak var piecesStepper: UIStepper!
    @IBOutlet weak var totalAcountLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    
    let dressImageNameArray = ["dress0","dress1","dress2","dress3","dress4","dress5","dress6","dress7","dress8"]

    var indexNumber: Int = 0
    var pageNumber: Int = 1
    var pieces: Int = 0
    var totalAcountMoney: Int = 0
    var money: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dressImageView.image = UIImage(named: dressImageNameArray[0])
        informationImageView.image = UIImage(named: "intro")
        pageLabel.text = "  1 / 9 "
        pageLabel.layer.cornerRadius = 14
        piecesLabel.text = " 數量           \(pieces)"
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currencyISOCode
        formatter.locale = Locale(identifier: "zh_TW")
        formatter.maximumFractionDigits = 0
        let moneyString = formatter.string(from: NSNumber(value: money))
        totalAcountLabel.font = UIFont.systemFont(ofSize: 30)
        totalAcountLabel.textAlignment = .center
        totalAcountLabel.text = moneyString
    }


    func changeSync() {
        dressImageView.image = UIImage(named: dressImageNameArray[indexNumber])
        pageNumber = indexNumber + 1
        pageControl.currentPage = indexNumber
        pageLabel.text = " \(pageNumber) / 9 "
    }
    
    
    @IBAction func prePageButton(_ sender: Any) {
        indexNumber -= 1
        if indexNumber == -1 {
            indexNumber = 8
            changeSync()
        } else {
            changeSync()
        }
    }
    
    @IBAction func nextPageButton(_ sender: Any) {
        indexNumber += 1
        if indexNumber == 9 {
            indexNumber = 0
            changeSync()
        } else {
            changeSync()
        }
    }
    
    @IBAction func changeContents(_ sender: UIPageControl) {
        if pageControl.currentPage == 0 {
            indexNumber = 0
            changeSync()
        } else if pageControl.currentPage == 1 {
            indexNumber = 1
            changeSync()
        } else if pageControl.currentPage == 2 {
            indexNumber = 2
            changeSync()
        } else if pageControl.currentPage == 3 {
            indexNumber = 3
            changeSync()
        } else if pageControl.currentPage == 4 {
            indexNumber = 4
            changeSync()
        } else if pageControl.currentPage == 5 {
            indexNumber = 5
            changeSync()
        } else if pageControl.currentPage == 6 {
            indexNumber = 6
            changeSync()
        } else if pageControl.currentPage == 7 {
            indexNumber = 7
            changeSync()
        } else if pageControl.currentPage == 8 {
            indexNumber = 8
            changeSync()
        }
    }
    
    
   
    @IBAction func changeInformation(_ sender: UISegmentedControl) {
        if informationSegmentedControl.selectedSegmentIndex == 0 {
            informationImageView.image = UIImage(named: "intro")
        } else if informationSegmentedControl.selectedSegmentIndex == 1 {
            informationImageView.image = UIImage(named: "sizeChart")
        }
    
    }
    
    
    @IBAction func piecesSteper(_ sender: Any) {
        piecesLabel.font = UIFont.systemFont(ofSize: 24)
        pieces = Int(piecesStepper.value)
        piecesLabel.text = " 數量           \(pieces)"
        money = 890 * pieces
        let formatter = NumberFormatter()
        formatter.numberStyle = .currencyISOCode
        formatter.locale = Locale(identifier: "zh_TW")
        formatter.maximumFractionDigits = 0
        let moneyString = formatter.string(from: NSNumber(value: money))
        totalAcountLabel.font = UIFont.systemFont(ofSize: 30)
        totalAcountLabel.textAlignment = .center
        totalAcountLabel.text = moneyString
    }
    

    
    @IBAction func swpie(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .right {
            indexNumber -= 1
            if indexNumber == -1 {
                indexNumber = 8
            } else {
                changeSync()
            }
        } else if sender.direction == .left {
                indexNumber += 1
                if  indexNumber == 9 {
                    indexNumber = 0
                    changeSync()
                } else {
                    changeSync()
                }
        }
    }
    


}
