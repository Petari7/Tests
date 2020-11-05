//
//  ArticleDetailView.swift
//  Tests
//
//  Created by SMBA on 04/11/2020.
//

import UIKit
import PureLayout
import WebKit

class ArticleDetailView: UIView {
    
    
    let wkWebView: WKWebView = {
        let webView = WKWebView()
        webView.backgroundColor = .gray
        return webView
    }()
    
    let adView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemTeal
        return view
    }()
    
    let metaLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .black
        return label
    }()
    
    let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .orange
        return imageView
    }()
    
    let provisionLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let provisionImageView: UIImageView = {
        let provisionImageView = UIImageView()
        provisionImageView.backgroundColor = .magenta
        return provisionImageView
    }()
    
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .darkGray
        return imageView
    }()
    
    let categoryView: UIView = {
        let categoryView = UIView()
        categoryView.backgroundColor = .brown
        return categoryView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        return label
    }()
    
    let authorView: UIView = {
        let authorVIew = UIView()
        authorVIew.backgroundColor = .blue
        return authorVIew
    }()
    
    let separatorView: UIView = {
        let separatorView = UIView()
        separatorView.backgroundColor = .systemPink
        return separatorView
    }()
    
    let provisionView: UIView = {
        let provisionView = UIView()
        provisionView.backgroundColor = .green
        return provisionView
    }()
    
    let articleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    
    let contentView: UIView = {
        let view = UIView()
        return view
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        self.addSubview(scrollView)
        scrollView.autoPinEdgesToSuperviewEdges()
        scrollView.backgroundColor = .gray
        
        scrollView.addSubview(contentView)
        contentView.autoPinEdgesToSuperviewEdges()
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        
        contentView.addSubview(stackView)
        stackView.autoPinEdgesToSuperviewEdges()
        
        stackView.addArrangedSubview(articleImageView)
        articleImageView.autoSetDimension(.height, toSize: 378)
        
        stackView.addArrangedSubview(provisionView)
        provisionView.autoSetDimension(.height, toSize: 72)
        
        stackView.addArrangedSubview(separatorView)
        separatorView.autoSetDimension(.height, toSize: 0.5)
   
        stackView.addArrangedSubview(authorView)
        authorView.autoSetDimension(.height, toSize: 72)
        
        stackView.addArrangedSubview(separatorView)
        separatorView.autoSetDimension(.height, toSize: 0.5)
   
        articleImageView.addSubview(titleLabel)
        titleLabel.autoPinEdge(.bottom, to: .bottom, of: articleImageView, withOffset: -16)
        titleLabel.autoPinEdge(.leading, to: .leading, of: articleImageView, withOffset: 16)
        titleLabel.autoPinEdge(.trailing, to: .trailing, of: articleImageView, withOffset: -16)
        titleLabel.autoSetDimension(.height, toSize: 24)
        
        articleImageView.addSubview(categoryView)
        categoryView.autoPinEdge(.leading, to: .leading, of: articleImageView, withOffset: 16)
        categoryView.autoPinEdge(.bottom, to: .top, of: titleLabel, withOffset: -46)
        categoryView.autoSetDimension(.height, toSize: 37)
        categoryView.autoSetDimension(.width, toSize: 75)
        
        provisionView.addSubview(backgroundImageView)
        backgroundImageView.autoPinEdge(.leading, to: .leading, of: provisionView, withOffset: 18)
        backgroundImageView.autoPinEdge(.top, to: .top, of: provisionView, withOffset: 20)
        backgroundImageView.autoPinEdge(.bottom, to: .bottom, of: provisionView, withOffset: -20)
        backgroundImageView.autoSetDimension(.height, toSize: 32)
        backgroundImageView.autoSetDimension(.width, toSize: 32)
        
        backgroundImageView.addSubview(provisionImageView)
        provisionImageView.autoPinEdge(.trailing, to: .trailing, of: backgroundImageView, withOffset: -7)
        provisionImageView.autoPinEdge(.leading, to: .leading, of: backgroundImageView, withOffset: 7)
        provisionImageView.autoPinEdge(.top, to: .top, of: backgroundImageView, withOffset: 8)
        provisionImageView.autoPinEdge(.bottom, to: .bottom, of: backgroundImageView, withOffset: -8)
        provisionImageView.autoSetDimension(.height, toSize: 16)
        provisionImageView.autoSetDimension(.width, toSize: 18)
        
        provisionView.addSubview(provisionLabel)
        provisionLabel.autoPinEdge(.top, to: .top, of: provisionView, withOffset: 36)
        provisionLabel.autoPinEdge(.leading, to: .leading, of: provisionView, withOffset: 62)
        provisionLabel.autoPinEdge(.bottom, to: .bottom, of: provisionView, withOffset: 36)
        provisionImageView.autoPinEdge(.trailing, to: .trailing, of: provisionView, withOffset: -16)
        
        authorView.addSubview(avatarImageView)
        avatarImageView.autoPinEdge(.top, to: .top, of: authorView, withOffset: 18)
        avatarImageView.autoPinEdge(.leading, to: .leading, of: authorView, withOffset: 16)
        avatarImageView.autoPinEdge(.bottom, to: .bottom, of: authorView, withOffset: -18)
        avatarImageView.autoSetDimension(.height, toSize: 36)
        avatarImageView.autoSetDimension(.width, toSize: 36)
        
        authorView.addSubview(metaLabel)
        metaLabel.autoPinEdge(.top, to: .top, of: authorView, withOffset: 29.5)
        metaLabel.autoPinEdge(.bottom, to: .bottom, of: authorView, withOffset: -29)
        metaLabel.autoPinEdge(.leading, to: .leading, of: avatarImageView, withOffset: 10)
        metaLabel.autoPinEdge(.trailing, to: .trailing, of: authorView, withOffset: -16)
        metaLabel.autoSetDimension(.height, toSize: 13.5)
        
        stackView.addArrangedSubview(adView)
        adView.autoSetDimension(.height, toSize: 140)
        adView.autoSetDimension(.width, toSize: 140)
        
        stackView.addArrangedSubview(wkWebView)
        wkWebView.autoSetDimension(.height, toSize: 2000)
        
    }

}
