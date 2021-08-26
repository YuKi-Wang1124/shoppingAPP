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
    @IBOutlet weak var pageLabel: UILabel!
    @IBOutlet weak var informationSegmentedControl: UISegmentedControl!
    @IBOutlet weak var xsSizeButton: UIButton!
    @IBOutlet weak var sSizeButton: UIButton!
    @IBOutlet weak var mSizeButton: UIButton!
    @IBOutlet weak var lSizeButton: UIButton!
    @IBOutlet weak var xlSizeButton: UIButton!
    
    let dressImageNameArray = ["dress0","dress1","dress2","dress3","dress4","dress5","dress6","dress7","dress8"]
    let coatImageNameArray = ["coat0","coat1","coat2","coat3","coat4","coat5","coat6","coat7","coat8"]
    let kidImageNameArray = ["kid0","kid1","kid2","kid3","kid4","kid5","kid6","kid7"]
    
    var indexNumber: Int = 0
    var pageNumber: Int = 1
 
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dressImageView.image = UIImage(named: dressImageNameArray[0])
        informationImageView.image = UIImage(named: "intro")
        pageLabel.text = "  1 / 9 "
        pageLabel.layer.cornerRadius = 14
        
    }


    func changeSync() {
        dressImageView.image = UIImage(named: dressImageNameArray[indexNumber])
        pageControl.currentPage = indexNumber
        pageNumber = indexNumber + 1
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
    
    
    

    
 
}


