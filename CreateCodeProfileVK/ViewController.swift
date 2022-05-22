//
//  ViewController.swift
//  CreateCodeProfileVK
//
//  Created by Федор Донсков on 22.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var imageViewPhoto: UIImageView = {
        let imageNew: UIImage = UIImage(named: "sea") ?? UIImage(named: "")!
        var image = UIImageView()
        
        image = UIImageView(image: imageNew)
        
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
        label.textColor = .systemBlue
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
    
    private lazy var logoButtonDisplayStatus: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "iphone.homebutton"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var editButton: UIButton = {
        let button = UIButton()
        button.setTitle("Редактировать", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.backgroundColor = .darkGray
        
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
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.text = "История"
        label.textColor = .systemBlue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var logoButtonNote: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "square.and.pencil"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelNote: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.text = "Запись"
        label.textColor = .systemBlue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var logoButtonPhoto: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "photo.fill"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelPhoto: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.text = "Фото"
        label.textColor = .systemBlue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var logoButtonClip: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "play.rectangle"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelClip: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.text = "Клип"
        label.textColor = .systemBlue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var logoButtonCity: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "house"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelCity: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.text = "Город: Москва"
        label.textColor = .systemGray

        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var logoButtonSubscribers: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "wifi"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelSubscribers: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.text = "35 подписчиков"
        label.textColor = .systemGray
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var logoButtonWork: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "briefcase"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelWork: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.text = "Указать место работы"
        label.textColor = .systemBlue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var logoButtonGift: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "snowflake"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelGift: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.text = "Получить подарок >"
        label.textColor = .systemPurple
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var logoButtonInfo: UIButton = {
        let logoButton = UIButton()
        logoButton.setImage(UIImage(named: "info.circle.fill"), for: .normal)
        
        return logoButton
    }()
    
    private lazy var labelInfo: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.text = "Подробная информация"
        label.textColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
        
    
    // MARK: - Elements stackView
    private lazy var logoDisplayStatusStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.distribution = .fillEqually
        stackView.spacing = -500
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var descriptionNameStatusStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        
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
    
    private lazy var settingsTopRowButtonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var buttonCityStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.spacing = 10
        stackView.distribution = .equalSpacing
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var buttonSubscribersStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.spacing = 10
        stackView.distribution = .equalSpacing
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var buttonWorkStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.spacing = 12
        stackView.distribution = .equalSpacing
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var buttonGiftStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.spacing = 15
        stackView.distribution = .equalSpacing
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var buttonInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.spacing = 12
        stackView.distribution = .equalSpacing
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var settingsBottomButtonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = 8
        stackView.distribution = .equalSpacing
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    // MARK: - viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()

        setupHierarchy()
        hierarhyConstraint()
    }
    
    // MARK: - Setup View Hierarhy
    
    private func setupHierarchy() {
        view.backgroundColor = UIColor.black
        view.addSubview(imageViewPhoto)
                
        view.addSubview(descriptionNameStatusStackView)
        
        view.addSubview(editButton)
        
        view.addSubview(buttonHistoryStackView)
        view.addSubview(buttonNoteStackView)
        view.addSubview(buttonPhotoStackView)
        view.addSubview(buttonClipStackView)
        
        view.addSubview(settingsTopRowButtonsStackView)
        
        view.addSubview(buttonCityStackView)
        view.addSubview(buttonSubscribersStackView)
        view.addSubview(buttonWorkStackView)
        view.addSubview(buttonGiftStackView)
        view.addSubview(buttonInfoStackView)

        view.addSubview(settingsBottomButtonsStackView)
        
        logoDisplayStatusStackView.addArrangedSubview(displayStatus)
        logoDisplayStatusStackView.addArrangedSubview(logoButtonDisplayStatus)
        
        descriptionNameStatusStackView.addArrangedSubview(secondFirstName)
        descriptionNameStatusStackView.addArrangedSubview(createStatus)
        descriptionNameStatusStackView.addArrangedSubview(logoDisplayStatusStackView)
        
        buttonHistoryStackView.addArrangedSubview(logoButtonHistory)
        buttonHistoryStackView.addArrangedSubview(labelHistory)
        
        buttonNoteStackView.addArrangedSubview(logoButtonNote)
        buttonNoteStackView.addArrangedSubview(labelNote)
        
        buttonPhotoStackView.addArrangedSubview(logoButtonPhoto)
        buttonPhotoStackView.addArrangedSubview(labelPhoto)
        
        buttonClipStackView.addArrangedSubview(logoButtonClip)
        buttonClipStackView.addArrangedSubview(labelClip)
        
        settingsTopRowButtonsStackView.addArrangedSubview(buttonHistoryStackView)
        settingsTopRowButtonsStackView.addArrangedSubview(buttonNoteStackView)
        settingsTopRowButtonsStackView.addArrangedSubview(buttonPhotoStackView)
        settingsTopRowButtonsStackView.addArrangedSubview(buttonClipStackView)

        
        buttonCityStackView.addArrangedSubview(logoButtonCity)
        buttonCityStackView.addArrangedSubview(labelCity)

        buttonSubscribersStackView.addArrangedSubview(logoButtonSubscribers)
        buttonSubscribersStackView.addArrangedSubview(labelSubscribers)

        buttonWorkStackView.addArrangedSubview(logoButtonWork)
        buttonWorkStackView.addArrangedSubview(labelWork)

        buttonGiftStackView.addArrangedSubview(logoButtonGift)
        buttonGiftStackView.addArrangedSubview(labelGift)

        buttonInfoStackView.addArrangedSubview(logoButtonInfo)
        buttonInfoStackView.addArrangedSubview(labelInfo)

        settingsBottomButtonsStackView.addArrangedSubview(buttonCityStackView)
        settingsBottomButtonsStackView.addArrangedSubview(buttonSubscribersStackView)
        settingsBottomButtonsStackView.addArrangedSubview(buttonWorkStackView)
        settingsBottomButtonsStackView.addArrangedSubview(buttonGiftStackView)
        settingsBottomButtonsStackView.addArrangedSubview(buttonInfoStackView)
    }
    
    // MARK: - Hierarhy constraint
    
    private func hierarhyConstraint() {
        imageViewPhotoConstraints()
        descriptionNameStatusConstraint()
        
        editButtonConstraint()
        settingsTopButtonsStackViewConstraint()
        settingsBottomButtonStackViewConstraint()
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
            descriptionNameStatusStackView.leftAnchor.constraint(equalTo: imageViewPhoto.rightAnchor, constant: 20),
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
    
    private func settingsTopButtonsStackViewConstraint() {
        NSLayoutConstraint.activate([
            settingsTopRowButtonsStackView.topAnchor.constraint(equalTo: editButton.bottomAnchor, constant: 20),
            settingsTopRowButtonsStackView.leadingAnchor.constraint(equalTo: editButton.leadingAnchor),
            settingsTopRowButtonsStackView.trailingAnchor.constraint(equalTo: editButton.trailingAnchor)
        
        ])
    }
    
    private func settingsBottomButtonStackViewConstraint() {
        NSLayoutConstraint.activate([
            settingsBottomButtonsStackView.topAnchor.constraint(equalTo: settingsTopRowButtonsStackView.bottomAnchor, constant: 20),
            settingsBottomButtonsStackView.leadingAnchor.constraint(equalTo: settingsTopRowButtonsStackView.leadingAnchor),
            settingsBottomButtonsStackView.trailingAnchor.constraint(equalTo: settingsTopRowButtonsStackView.trailingAnchor)
        ])
    }
}

