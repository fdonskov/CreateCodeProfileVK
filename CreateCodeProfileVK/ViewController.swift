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
        
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 50
        
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
    
    private lazy var editButton: UIButton = {
        let button = UIButton()
        button.setTitle("Редактировать", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.backgroundColor = .systemGreen
        
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 18
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    // Функциональные кнопки
    private lazy var logoButtonHistory: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "camera"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelHistory: UILabel = {
        let labelHistory = UILabel()
        labelHistory.font = .systemFont(ofSize: 15)
        labelHistory.text = "История"
        
        labelHistory.translatesAutoresizingMaskIntoConstraints = false
        
        return labelHistory
    }()
    
    private lazy var logoButtonNote: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "square.and.pencil"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelNote: UILabel = {
        let labelHistory = UILabel()
        labelHistory.font = .systemFont(ofSize: 15)
        labelHistory.text = "Запись"
        
        labelHistory.translatesAutoresizingMaskIntoConstraints = false
        
        return labelHistory
    }()
    
    private lazy var logoButtonPhoto: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "photo.fill"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelPhoto: UILabel = {
        let labelHistory = UILabel()
        labelHistory.font = .systemFont(ofSize: 15)
        labelHistory.text = "Фото"
        
        labelHistory.translatesAutoresizingMaskIntoConstraints = false
        
        return labelHistory
    }()
    
    private lazy var logoButtonClip: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "play.rectangle"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelClip: UILabel = {
        let labelHistory = UILabel()
        labelHistory.font = .systemFont(ofSize: 15)
        labelHistory.text = "Клип"
        
        labelHistory.translatesAutoresizingMaskIntoConstraints = false
        
        return labelHistory
    }()
        
    
    // MARK: - Elements stackView
    
    private lazy var descriptionNameStatusStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.backgroundColor = .systemMint
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var buttonHistoryStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 5
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var buttonNoteStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 5
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var buttonPhotoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 5
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var buttonClipStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 5
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var settingsButtonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    
    
    // MARK: - viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray

        view.addSubview(imageViewPhoto)
        view.addSubview(descriptionNameStatusStackView)
        view.addSubview(editButton)
        view.addSubview(buttonHistoryStackView)
        view.addSubview(buttonNoteStackView)
        view.addSubview(buttonPhotoStackView)
        view.addSubview(buttonClipStackView)
        view.addSubview(settingsButtonStackView)
        
        descriptionNameStatusStackView.addArrangedSubview(secondFirstName)
        descriptionNameStatusStackView.addArrangedSubview(createStatus)
        descriptionNameStatusStackView.addArrangedSubview(displayStatus)
        
        buttonHistoryStackView.addArrangedSubview(logoButtonHistory)
        buttonHistoryStackView.addArrangedSubview(labelHistory)
        
        buttonNoteStackView.addArrangedSubview(logoButtonNote)
        buttonNoteStackView.addArrangedSubview(labelNote)
        
        buttonPhotoStackView.addArrangedSubview(logoButtonPhoto)
        buttonPhotoStackView.addArrangedSubview(labelPhoto)
        
        buttonClipStackView.addArrangedSubview(logoButtonClip)
        buttonClipStackView.addArrangedSubview(labelClip)
        
        settingsButtonStackView.addArrangedSubview(buttonHistoryStackView)
        settingsButtonStackView.addArrangedSubview(buttonNoteStackView)
        settingsButtonStackView.addArrangedSubview(buttonPhotoStackView)
        settingsButtonStackView.addArrangedSubview(buttonClipStackView)

        




        
        hierarhyConstraint()
    }
    
    // MARK: - Hierarhy constraint
    
    private func hierarhyConstraint() {
        imageViewPhotoConstraints()
        descriptionNameStatusConstraint()
        
        editButtonConstraint()
        settingsButtonStackViewConstraint()
//        buttonConstraint()
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
    
    private func editButtonConstraint() {
        NSLayoutConstraint.activate([
            editButton.topAnchor.constraint(equalTo: imageViewPhoto.bottomAnchor, constant: 20),
            editButton.leadingAnchor.constraint(equalTo: imageViewPhoto.leadingAnchor),
            editButton.trailingAnchor.constraint(equalTo: descriptionNameStatusStackView.trailingAnchor),
            editButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func settingsButtonStackViewConstraint() {
        NSLayoutConstraint.activate([
            settingsButtonStackView.topAnchor.constraint(equalTo: editButton.bottomAnchor, constant: 20),
            settingsButtonStackView.leadingAnchor.constraint(equalTo: editButton.leadingAnchor),
            settingsButtonStackView.trailingAnchor.constraint(equalTo: editButton.trailingAnchor)
        
        ])
    }
    
//    private func buttonConstraint() {
//        NSLayoutConstraint.activate([
//            buttonClipStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            buttonClipStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//        ])
//    }
    
}

