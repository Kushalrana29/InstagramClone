//
//  FeedViewController.swift
//  InstaClone
//
//  Created by Kushal Rana on 27/04/23.
//

import UIKit

class FeedController: UICollectionViewController {
    
    //MARK: - Lifecycle
    
  private  let cellIdentifier = "Cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollcetionViewCell()
        configureUI()
        
    }
    
    func registerCollcetionViewCell() {
    
        collectionView.register(FeedCell.self, forCellWithReuseIdentifier:cellIdentifier )
    }
    
    init() {
            super.init(collectionViewLayout: UICollectionViewFlowLayout())
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    

    //MARK: - Helpers
    
    func configureUI(){
        view.backgroundColor = .white
    }

}


extension FeedController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)as! FeedCell
        
        return cell
    }
}


extension FeedController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = view.frame.width
        var height = width + 8 + 40 + 8
        height += 50
        height += 60
        
        let size =  CGSize(width: width, height: height)
        return size
    }
}
