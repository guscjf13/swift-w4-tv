//
//  MainVC.swift
//  TVApp
//
//  Created by herb.salt on 2021/01/26.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var mainSegmentControl: UISegmentedControl!
    @IBOutlet weak var mainCollectionView: MainCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    func initView() {
        mainCollectionView.initView(device: UIDevice.current)
    }
    
    @IBAction func mainSegmentChanged(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case EnumModel.VideoType.original.rawValue:
            mainCollectionView.currentSegment = .original
        case EnumModel.VideoType.live.rawValue:
            mainCollectionView.currentSegment = .live
        default:
            return
        }
        mainCollectionView.reloadData()
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        mainCollectionView.setLayout(device: UIDevice.current)
    }

}
