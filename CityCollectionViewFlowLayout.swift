//
//  CityCollectionViewFlowLayout.swift
//  Wanderlust
//
//  Created by Mihikaa Goenka on 8/6/19.
//  Copyright © 2019 Mihikaa Goenka. All rights reserved.
//

import UIKit

class CityCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    let cellWidth: CGFloat = 200
    let cellHeight: CGFloat = 200
    let padding: CGFloat = 5
    
    override func prepare() {
        super.prepare()
        let edgeInset = (UIScreen.main.bounds.width - 2 * cellWidth - padding) / 2
        itemSize = CGSize(width: cellWidth, height: cellHeight)
        minimumLineSpacing = edgeInset
        minimumInteritemSpacing = edgeInset
        sectionInset = UIEdgeInsets(top: edgeInset, left: edgeInset, bottom: edgeInset, right: edgeInset)
    }

}
