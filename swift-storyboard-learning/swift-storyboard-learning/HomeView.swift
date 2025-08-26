//
//  HomeView.swift
//  swift-storyboard-learning
//
//  Created by 吉田翔 on 2025/08/26.
//

import UIKit

class HomeView: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
    
    let icons = ["plane-icon", "car-icon"]
        let titles = ["航空券","レンタカー"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return icons.count
        }
        
        func collectionView(_ collectionView: UICollectionView,
                            cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            // StoryboardのセルIDを使ってセルを取り出す
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IconCategoryCell",
                                                          for: indexPath) as! IconCategoryCell
            cell.iconImageView.image = UIImage(named: icons[indexPath.item])
          
            return cell
        }
        
        // MARK: - Delegate（タップ処理）
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            print("\(titles[indexPath.item]) がタップされました")
        }
    
    
    @IBOutlet var iconColectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iconColectionView.dataSource = self
        iconColectionView.delegate = self
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
