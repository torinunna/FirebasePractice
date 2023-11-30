//
//  SignUpViewController.swift
//  FirebasePractice
//
//  Created by YUJIN KWON on 11/30/23.
//

import UIKit
import SnapKit

class SignUpViewController: UIViewController {
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "이메일을 입력하세요"
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호를 입력해주세요"
        return textField
    }()

    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("가입하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpLayout()
    }
}

private extension SignUpViewController {
    func setUpLayout() {

        
        [emailTextField, passwordTextField, signUpButton].forEach { view.addSubview($0) }
        
        emailTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(100)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(emailTextField.snp.bottom).offset(25)
        }
        
        signUpButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.width.equalTo(200)
            $0.top.equalTo(passwordTextField.snp.bottom).offset(50)
        }
    }
}

