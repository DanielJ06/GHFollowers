//
//  UIHelper.swift
//  GHFollowers
//
//  Created by Daniel Rodrigues on 20/06/25.
//

import UIKit

struct UIHelper {
    
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let viewWidth = view.bounds.width
        let containerPadding: CGFloat = 12
        let itemSpacing: CGFloat = 10
        let availableSpace = viewWidth - (containerPadding * 2) - (itemSpacing * 2)
        let itemWidth = availableSpace / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(
            top: containerPadding,
            left: containerPadding,
            bottom: containerPadding,
            right: containerPadding
        )
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
    
}
