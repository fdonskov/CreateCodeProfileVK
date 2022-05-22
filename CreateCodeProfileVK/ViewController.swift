//
//  ViewController.swift
//  CreateCodeProfileVK
//
//  Created by Федор Донсков on 22.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var imageViewPhoto: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .green
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    private lazy var secondFirstName: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 22)
        label.text = "Алексей Павлов"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var createStatus: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Установить статус"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var displayStatus: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "online"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var descriptionNameStatusStackView: UIStackView = {

        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.backgroundColor = .systemMint
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    // MARK: - viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray

        view.addSubview(imageViewPhoto)
        view.addSubview(descriptionNameStatusStackView)
        
        descriptionNameStatusStackView.addArrangedSubview(secondFirstName)
        descriptionNameStatusStackView.addArrangedSubview(createStatus)
        descriptionNameStatusStackView.addArrangedSubview(displayStatus)
        
        hierarhyConstraint()
    }
    
    // MARK: - Hierarhy constraint
    
    private func hierarhyConstraint() {
        imageViewPhotoConstraints()
        descriptionNameStatusConstraint()
    }
    
    // MARK: - Constraints elements
    
    private func imageViewPhotoConstraints() {
        NSLayoutConstraint.activate([
            imageViewPhoto.widthAnchor.constraint(equalToConstant: 100),
            imageViewPhoto.heightAnchor.constraint(equalToConstant: 100),
            imageViewPhoto.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            imageViewPhoto.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
    private func descriptionNameStatusConstraint() {
        NSLayoutConstraint.activate([
            descriptionNameStatusStackView.leftAnchor.constraint(equalTo: imageViewPhoto.rightAnchor, constant: 10),
            descriptionNameStatusStackView.topAnchor.constraint(equalTo: imageViewPhoto.topAnchor),
            descriptionNameStatusStackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            descriptionNameStatusStackView.bottomAnchor.constraint(equalTo: imageViewPhoto.bottomAnchor)
        ])
    }
    

}

