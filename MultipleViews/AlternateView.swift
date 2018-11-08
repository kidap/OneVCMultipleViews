//
//  AlternateView.swift
//  MultipleViews
//
//  Created by Karlo Pagtakhan on 2018-11-08.
//  Copyright © 2018 Karlo Pagtakhan. All rights reserved.
//

import UIKit

class AlternateView: UIView, TextsContaining {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!

    fileprivate var view: UIView!

    var texts: [String] = [] {
        didSet {
            firstLabel.text = texts[0]
            secondLabel.text = texts[1]
        }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupXib()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        view.frame = bounds
    }
}

private extension AlternateView {
    func setupXib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "AlternateView", bundle: bundle)
        view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(view)
    }
}
