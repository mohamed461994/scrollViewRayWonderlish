//
//  RwScrolleView.swift
//  scrollViewRayWonderlish
//
//  Created by MohamedSh on 2/24/18.
//  Copyright © 2018 MohamedSh. All rights reserved.
//

import UIKit

class RwScrolleView: UIView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    func setupView(){
        let gester = UIGestureRecognizer(target: self, action: #selector(penGesterRecog(with:)))
        addGestureRecognizer(gester)
    }
    @objc func penGesterRecog(with gestureRecognizer: UIPanGestureRecognizer){
        let translation = gestureRecognizer.translation(in: self)
        UIView.animate(withDuration: 0.2){
            self.bounds.origin.y = self.bounds.origin.y - translation.y
            print(translation)
        }
        gestureRecognizer.setTranslation(CGPoint.zero, in: self)
        
    }

}













