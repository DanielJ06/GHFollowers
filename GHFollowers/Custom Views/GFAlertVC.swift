//
//  GFAlertVC.swift
//  GHFollowers
//
//  Created by Daniel Rodrigues on 25/05/25.
//

import UIKit

class GFAlertVC: UIViewController {
    
    let containerView = UIView()
    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let alertMessageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "Ok")
    
    let containerPadding: CGFloat = 20
    
    var alertTitle: String?
    var alertMessage: String?
    var buttonTitle: String?
    
    init(title: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.alertMessage = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        configureContainerView()
        configureTitleLabel()
        configureActionButton()
        configureAlertMessageLabel()
    }
    
    private func configureContainerView() {
        view.addSubview(containerView)
        containerView.layer.cornerRadius = 16
        containerView.layer.borderWidth = 1
        containerView.layer.borderColor = UIColor.white.cgColor
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = UIColor.systemBackground
        
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
    private func configureTitleLabel() {
        containerView.addSubview(titleLabel)
        titleLabel.text = alertTitle ?? "Something went wrong"
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: containerPadding),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: containerPadding),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -containerPadding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    private func configureActionButton() {
        containerView.addSubview(actionButton)
        actionButton.setTitle(buttonTitle ?? "Ok", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissAlertVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -containerPadding),
            actionButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: containerPadding),
            actionButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -containerPadding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    @objc func dismissAlertVC() {
        dismiss(animated: true)
    }
    
    private func configureAlertMessageLabel() {
        containerView.addSubview(alertMessageLabel)
        alertMessageLabel.text = alertMessage ?? "Something went wrong"
        alertMessageLabel.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            alertMessageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            alertMessageLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: containerPadding),
            alertMessageLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -containerPadding),
            alertMessageLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
        ])
    }
    
}
