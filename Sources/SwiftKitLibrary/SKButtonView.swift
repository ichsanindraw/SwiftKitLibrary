//
//  SKButtonView.swift
//  SwiftKitLibrary
//
//  Created by Ichsan Indra Wahyudi on 04/11/24.
//

import Foundation
import UIKit

public class SKButtonView: UIView {
    enum Style {
        case main
        case ghost
    }
    
    enum Size {
        case small
        case medium
        case large
        
        internal var height: CGFloat {
            switch self {
            case .small:
                return 32
            case .medium:
                return 40
            case .large:
                return 48
            }
        }
    }
    
    // MARK: Views
    
    private let wrapperView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: Variables
    
    public var title: String = "" {
        didSet {
            titleLabel.text = title
            setNeedsLayout()
        }
    }
    
    private let style: SKButtonView.Style
    private let size: SKButtonView.Size
    
    init(
        style: SKButtonView.Style = .main,
        size: SKButtonView.Size = .medium
    ) {
        self.style = style
        self.size = size
        
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(wrapperView)
        
        NSLayoutConstraint.activate([
            wrapperView.topAnchor.constraint(equalTo: topAnchor),
            wrapperView.leadingAnchor.constraint(equalTo: leadingAnchor),
            wrapperView.trailingAnchor.constraint(equalTo: trailingAnchor),
            wrapperView.bottomAnchor.constraint(equalTo: bottomAnchor),
            wrapperView.heightAnchor.constraint(equalToConstant: size.height)
        ])
        
        wrapperView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: wrapperView.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: wrapperView.centerYAnchor),
        ])
    }
}
