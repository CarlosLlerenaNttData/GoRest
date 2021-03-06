//
//  GRActivityIndicatorView.swift
//  
//
//  Created by Carlos Alfredo Llerena Huayta on 12/07/22.
//

import UIKit
import Lottie

public class GRActivityIndicatorView: UIView {
    
    private var contentView: UIView!
    
    private var activityIndicatorView: AnimationView! {
        didSet {
            activityIndicatorView.frame = activityIndicatorContainer.bounds
            activityIndicatorView.loopMode = .loop
            activityIndicatorView.play()
        }
    }
    
    @IBOutlet weak private var activityIndicatorContainer: UIView! {
        didSet {
            activityIndicatorView = AnimationView(name: GRResource.Lottie.grResource, bundle: Bundle.module)
            activityIndicatorContainer.addSubview(activityIndicatorView)
        }
    }
    
    
    // MARK: INIT
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    
    //MARK: HELPERS
    private func setupViews() {
        contentView = loadViewFromNib()
        contentView.frame = self.frame
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(contentView)
    }

    private func loadViewFromNib() -> UIView {
        let nib = UINib(nibName: String(describing: Self.self), bundle: Bundle.module)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
}
