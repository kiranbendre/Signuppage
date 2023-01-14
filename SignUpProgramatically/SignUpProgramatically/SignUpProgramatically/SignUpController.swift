//
//  ViewController.swift
//  SignUpProgramatically
//
//  Created by Iphone XR on 15/11/22.
//

import UIKit

class SignUpController: UIViewController, UITextFieldDelegate {
    
    let titleLabel = UILabel()
    let titleTextField =  UITextField()
    let titleValidationLbl = UILabel()
    let passwordTextField = UITextField()
    let passwordValidationLbl = UILabel()
    let confirmpasswordTF = UITextField()
    let confirmPValidationLbl = UILabel()
    let secretKeyTF = UITextField()
    let secretValidationLbl = UILabel()
    let signUpBtn = UIButton()
    let passwordbutton = UIButton()
    let keyButton = UIButton()
    let confirmbutton = UIButton()
    
    var isActive: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: Give background color using RGB
        view.backgroundColor = UIColor(red: 33.0/255, green: 40.0/255, blue: 64.0/255, alpha: 1.0)
        
        titleValidationLbl.isHidden = true
        passwordValidationLbl.isHidden = true
        confirmPValidationLbl.isHidden = true
        secretValidationLbl.isHidden = true
        
       //MARK: Create label here
        
        titleLabel.font = UIFont(name: titleLabel.font.fontName, size: 40)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        let myAttrString = NSMutableAttributedString(string: "Welcome to \n",  attributes:  [.foregroundColor: UIColor.gray,NSAttributedString.Key.font:UIFont.systemFont(ofSize: 20.0)])

        let myAttrString2 = NSMutableAttributedString(string: "Clouzer Edge",  attributes:  [.foregroundColor: UIColor.gray,NSAttributedString.Key.font:UIFont.systemFont(ofSize: 30.0)])
        myAttrString.append(myAttrString2)
        titleLabel.attributedText = myAttrString
        self.view.addSubview(titleLabel)
        
        //MARK: Add Constraint to Label
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 90).isActive = true
        NSLayoutConstraint(item: titleLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 110).isActive = true
        NSLayoutConstraint(item: titleLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -110).isActive = true
       NSLayoutConstraint(item: titleLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 60).isActive = true
      
        //MARK: Create a title textfield
        
        titleTextField.attributedPlaceholder = NSAttributedString(string: "Enter your email", attributes:[NSAttributedString.Key.foregroundColor: UIColor.gray])
        titleTextField.font = UIFont.systemFont(ofSize: 15)
        titleTextField.textColor = .white
        titleTextField.backgroundColor = .clear
        titleTextField.borderStyle = UITextField.BorderStyle.roundedRect
        titleTextField.layer.borderColor = UIColor.gray.cgColor;
        titleTextField.layer.borderWidth = 1.0
        titleTextField.layer.masksToBounds = true
        titleTextField.layer.cornerRadius = 15.0
        titleTextField.tag = 1
        titleTextField.addTarget(self,action: #selector(textFieldDidChange),for: .editingChanged)
        titleTextField.autocorrectionType = UITextAutocorrectionType.no
        // sampleTextField.keyboardType = UIKeyboardType.default
        titleTextField.returnKeyType = UIReturnKeyType.done
        titleTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        titleTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        titleTextField.delegate = self
        self.view.addSubview(titleTextField)
        //MARK: Add Constraint to TitleTextfield
        titleTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: titleTextField, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 300).isActive = true
        NSLayoutConstraint(item: titleTextField, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: titleTextField, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        NSLayoutConstraint(item: titleTextField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 45).isActive = true
        
        //MARK: Create validationlabel for password
          titleValidationLbl.text = "Enter your email"
          titleValidationLbl.textColor = .red
          titleValidationLbl.numberOfLines = 0
          titleValidationLbl.textAlignment = .left
          titleValidationLbl.sizeToFit()
         
          self.view.addSubview(titleValidationLbl)
          //MARK: Add Constraint to Password validation Label
         titleValidationLbl.translatesAutoresizingMaskIntoConstraints = false
          NSLayoutConstraint(item: titleValidationLbl, attribute: .top, relatedBy: .equal, toItem: titleTextField, attribute: .bottom, multiplier: 1.0, constant: 10).isActive = true
          NSLayoutConstraint(item: titleValidationLbl, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
          NSLayoutConstraint(item: titleValidationLbl, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
          
       //MARK: Create password textfield here
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Enter your password", attributes:[NSAttributedString.Key.foregroundColor: UIColor.gray])
        passwordTextField.textColor = .white
        passwordTextField.backgroundColor = .clear
        passwordTextField.layer.borderColor = UIColor.gray.cgColor;
        passwordTextField.layer.borderWidth = 1.0
        passwordTextField.font = UIFont.systemFont(ofSize: 15)
        passwordTextField.borderStyle = UITextField.BorderStyle.roundedRect
        passwordTextField.layer.cornerRadius = 15.0
        passwordTextField.layer.masksToBounds = true
        passwordTextField.autocorrectionType = UITextAutocorrectionType.no
        // sampleTextField.keyboardType = UIKeyboardType.default
        passwordTextField.returnKeyType = UIReturnKeyType.done
        passwordTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        passwordTextField.tag = 2
        passwordTextField.addTarget(self,action: #selector(textFieldDidChange),for: .editingChanged)
        passwordTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        passwordTextField.delegate = self
        self.view.addSubview(passwordTextField)
        //MARK: Add Constraint to PasswordTextfield
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: passwordTextField, attribute: .top, relatedBy: .equal, toItem: titleValidationLbl, attribute: .bottom, multiplier: 1.0, constant: 14).isActive = true
        NSLayoutConstraint(item: passwordTextField, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: passwordTextField, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        NSLayoutConstraint(item: passwordTextField, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 80).isActive = true
        NSLayoutConstraint(item: passwordTextField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 45).isActive = true
        
        //MARK:  Create button Eyeicon for password tf
        passwordbutton.frame = CGRect(x:0, y:0, width:10, height:10)
       
        passwordbutton.setImage(UIImage(named: "closeeye"), for: .normal)
        passwordbutton.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        
        passwordbutton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
       // passwordbutton.frame = CGRect(x:0, y: 0, width: 5, height: 5)
        passwordbutton.tag = 1
       // passwordbutton.backgroundColor = .red
        passwordTextField.rightView = passwordbutton
        passwordTextField.rightViewMode = .always
        

      //MARK: Create validationlabel for password
        passwordValidationLbl.text = "passwordValidationLbl"
        passwordValidationLbl.textColor = .red
        passwordValidationLbl.numberOfLines = 0
        passwordValidationLbl.textAlignment = .left
        passwordValidationLbl.sizeToFit()
        self.view.addSubview(passwordValidationLbl)
        //MARK: Add Constraint to Password validation Label
        passwordValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: passwordValidationLbl, attribute: .top, relatedBy: .equal, toItem: passwordTextField, attribute: .bottom, multiplier: 1.0, constant: 10).isActive = true
        NSLayoutConstraint(item: passwordValidationLbl, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: passwordValidationLbl, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
        //MARK: Create confirm password textfield her
        
        confirmpasswordTF.attributedPlaceholder = NSAttributedString(string: "Enter your confirm password", attributes:[NSAttributedString.Key.foregroundColor: UIColor.gray])
        confirmpasswordTF.textColor = .white
        confirmpasswordTF.layer.cornerRadius = 15.0
        confirmpasswordTF.backgroundColor = UIColor.clear
        confirmpasswordTF.font = UIFont.systemFont(ofSize: 15)
        confirmpasswordTF.layer.borderColor = UIColor.gray.cgColor;
        confirmpasswordTF.layer.borderWidth = 1.0
        confirmpasswordTF.layer.masksToBounds = true
        confirmpasswordTF.borderStyle = UITextField.BorderStyle.roundedRect
        confirmpasswordTF.autocorrectionType = UITextAutocorrectionType.no
        // sampleTextField.keyboardType = UIKeyboardType.default
        confirmpasswordTF.returnKeyType = UIReturnKeyType.done
        confirmpasswordTF.tag = 3
        confirmpasswordTF.addTarget(self,action: #selector(textFieldDidChange),for: .editingChanged)
        confirmpasswordTF.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        confirmpasswordTF.delegate = self
        self.view.addSubview(confirmpasswordTF)
        //Add Constraint to Textfield
        confirmpasswordTF.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: confirmpasswordTF, attribute: .top, relatedBy: .equal, toItem: passwordValidationLbl, attribute: .bottom, multiplier: 1.0, constant: 13).isActive = true
        NSLayoutConstraint(item: confirmpasswordTF, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: confirmpasswordTF, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        NSLayoutConstraint(item: confirmpasswordTF, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 45).isActive = true
        
        //MARK:  Create button Eyeicon for confirm tf
        
        confirmbutton.setImage(UIImage(named: "closeeye"), for: .normal)
        //confirmbutton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -16, bottom: 0, right: 0)
        confirmbutton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
       confirmbutton.frame = CGRect(x:0, y:0, width:10, height:10)
        confirmbutton.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        confirmbutton.tag = 2
        confirmpasswordTF.rightView = confirmbutton
        confirmpasswordTF.rightViewMode = .always
        
        //MARK: Create validationlabel for Confirmpassword
        confirmPValidationLbl.text = "confirm passwordValidationLbl"
        confirmPValidationLbl.textColor = .red
        confirmPValidationLbl.numberOfLines = 0
        confirmPValidationLbl.textAlignment = .left
        confirmPValidationLbl.sizeToFit()
        self.view.addSubview(confirmPValidationLbl)
        //MARK: Add Constraint to Label
        confirmPValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: confirmPValidationLbl, attribute: .top, relatedBy: .equal, toItem: confirmpasswordTF, attribute: .bottom, multiplier: 1.0, constant: 10).isActive = true
        NSLayoutConstraint(item: confirmPValidationLbl, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: confirmPValidationLbl, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
        //MARK: Create Secret key TF here
        
        secretKeyTF.attributedPlaceholder = NSAttributedString(string: "Enter your secret key", attributes:[NSAttributedString.Key.foregroundColor: UIColor.gray])
        secretKeyTF.textColor = .white
        secretKeyTF.layer.cornerRadius = 15.0
        secretKeyTF.backgroundColor = UIColor.clear
        secretKeyTF.layer.borderColor = UIColor.gray.cgColor;
        secretKeyTF.layer.borderWidth = 1.0
        secretKeyTF.layer.masksToBounds = true
        secretKeyTF.borderStyle = UITextField.BorderStyle.roundedRect
        secretKeyTF.font = UIFont.systemFont(ofSize: 15)
        secretKeyTF.autocorrectionType = UITextAutocorrectionType.no
        // sampleTextField.keyboardType = UIKeyboardType.default
        secretKeyTF.returnKeyType = UIReturnKeyType.done
        secretKeyTF.clearButtonMode = UITextField.ViewMode.whileEditing
        secretKeyTF.tag = 4
        secretKeyTF.addTarget(self,action: #selector(textFieldDidChange),for: .editingChanged)
        secretKeyTF.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        secretKeyTF.delegate = self
        self.view.addSubview(secretKeyTF)
        //MARK: Add Constraint to Secret key Textfield
        secretKeyTF.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: secretKeyTF, attribute: .top, relatedBy: .equal, toItem: confirmPValidationLbl, attribute: .bottom, multiplier: 1.0, constant: 14).isActive = true
        NSLayoutConstraint(item: secretKeyTF, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: secretKeyTF, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        NSLayoutConstraint(item: secretKeyTF, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 45).isActive = true
        
        //MARK:- Create button for secretkey eyeicon
        
        keyButton.setImage(UIImage(named: "closeeye"), for: .normal)
       // keyButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -16, bottom: 0, right: 0)
       keyButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        keyButton.frame = CGRect(x:0, y:0, width:10, height:10)
        keyButton.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        keyButton.tag = 3
        secretKeyTF.rightView = keyButton
        secretKeyTF.rightViewMode = .always

        //MARK:- Create secret validation label here
        secretValidationLbl.text = " secret key validation label"
        secretValidationLbl.textColor = .red
        secretValidationLbl.numberOfLines = 0
        secretValidationLbl.textAlignment = .left
        secretValidationLbl.sizeToFit()
        //secretValidationLbl.backgroundColor = UIColor.blue
        self.view.addSubview(secretValidationLbl)
        //Add Constraint to Label
        secretValidationLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: secretValidationLbl, attribute: .top, relatedBy: .equal, toItem: secretKeyTF, attribute: .bottom, multiplier: 1.0, constant: 10).isActive = true
        NSLayoutConstraint(item: secretValidationLbl, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: secretValidationLbl, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
       //MARK:- Create a SignButton
        
        signUpBtn.setTitle("SignUp", for: .normal)
        signUpBtn.setTitleColor(UIColor.white, for: [])
        signUpBtn.addTarget(self,
                              action: #selector(SignBtnAction),
                              for: .touchUpInside)
        
        signUpBtn.backgroundColor = UIColor(red: 63.0/255, green: 70.0/255, blue: 100.0/255, alpha: 1.0)
        signUpBtn.center = view.center
        signUpBtn.layer.cornerRadius = 15.0
        signUpBtn.layer.borderWidth = 1.0
        //signUpBtn.layer.borderColor = UIColor.gray.cgColor;
        //signUpBtn.borderStyle = UITextField.BorderStyle.roundedRect
        signUpBtn.layer.masksToBounds = true
        view.addSubview(signUpBtn)
        self.view.addSubview(signUpBtn)
        //Add Constraint to Button
        signUpBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: signUpBtn, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 700).isActive = true
        NSLayoutConstraint(item: signUpBtn, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: signUpBtn, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        NSLayoutConstraint(item: signUpBtn, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 45).isActive = true
        }
    
   // MARK:- Eye icon img tapped func
    @objc func buttonTapped(_ sender: Any) {

        if ((sender as AnyObject).tag == 1) {
            if isActive {
                isActive = false
                (sender as AnyObject).setImage(UIImage(named: "closeeye"), for: .normal)
                passwordTextField.isSecureTextEntry = true
            } else {
                isActive = true
                (sender as AnyObject).setImage(UIImage(named: "openeye"), for: .normal)
                passwordTextField.isSecureTextEntry = false
            }
        }

        else if ((sender as AnyObject).tag == 2){
            if isActive {
                isActive = false
                (sender as AnyObject).setImage(UIImage(named: "closeeye"), for: .normal)
                confirmpasswordTF.isSecureTextEntry = true
            } else {
                isActive = true
                (sender as AnyObject).setImage(UIImage(named: "openeye"), for: .normal)
               confirmpasswordTF.isSecureTextEntry = false
            }
        }

        else if((sender as AnyObject).tag == 3) {
            if isActive {
                isActive = false
                (sender as AnyObject).setImage(UIImage(named: "closeeye"), for: .normal)
                secretKeyTF.isSecureTextEntry = true
            } else {
                isActive = true
                (sender as AnyObject).setImage(UIImage(named: "openeye"), for: .normal)
               secretKeyTF.isSecureTextEntry = false
            }
        }
   }
    //MARK:- SignUp Button Action
    @objc func SignBtnAction(_ sender: UIButton!){
        print("trt")
       titleValidationLbl.isHidden = true
       passwordValidationLbl .isHidden = true
       confirmPValidationLbl.isHidden = true
       secretValidationLbl.isHidden = true
        
        guard let email = titleTextField.text,titleTextField.text?.count != 0 else{
            titleValidationLbl.isHidden = false
            titleValidationLbl.text = "Please enter your email"
            return
            
        }
         guard let password = passwordTextField.text,passwordTextField.text?.count != 0 else{
             passwordValidationLbl.isHidden = false
             passwordValidationLbl.text = "Please enter your password"
             return
             }
         guard let confirmpassword = confirmpasswordTF.text, confirmpasswordTF.text?.count != 0  else {
             confirmPValidationLbl.isHidden = false
             confirmPValidationLbl.text = "Please enter your confirm password"
             return
         }
        guard let secretKEY = secretKeyTF.text, secretKeyTF.text?.count != 0  else {
            secretValidationLbl.isHidden = false
            secretValidationLbl.text = "Please enter your secret key"
            return
        }
    }
    //MARK:- Check textfield is empty or not
    @objc func textFieldDidChange(textfield: UITextField)  {
        let name0value = titleTextField.text
        let name1value = passwordTextField.text
        let name2value = confirmpasswordTF.text
        let name3value = secretKeyTF.text
        

        if(textfield.tag == 1) {
            print("button 1 pressed")
            if name0value!.isEmpty  {
                titleValidationLbl.text = "email is empty"
               titleValidationLbl.isHidden = false
                }
            else{
               titleValidationLbl.isHidden = true
                if isValidEmail(emailID: textfield.text!) == false {
                    titleValidationLbl.isHidden = false
                   titleValidationLbl.text = "Please enter valid email address"
                }else{
                    titleValidationLbl.isHidden = true
                }
             }
        }
        else if (textfield.tag == 2) {
            if name1value!.isEmpty  {
                passwordValidationLbl.text = "password is empty"
                passwordValidationLbl.isHidden = false
                }
            else{
               passwordValidationLbl.isHidden = true
                if isValidPassword(passwordID: textfield.text!) == false {
                  passwordValidationLbl.isHidden = false
                   passwordValidationLbl.text = "minimum 8 char with alphanumeric value a special char & atleast 1 char in uppercase"
                }else{
                    passwordValidationLbl.isHidden = true
                }
             }
        }
        else if(textfield.tag == 3) {
            if name2value!.isEmpty  {
                confirmPValidationLbl.text = " confirm password is empty"
                confirmPValidationLbl.isHidden = false
                }
            else{
               
                if confirmpasswordTF.text == passwordTextField.text{
                    confirmPValidationLbl.isHidden  = true
                }else{
                    confirmPValidationLbl.isHidden = false
                    confirmPValidationLbl.text = " confirm password dont match"
                }
             }
        }
        else if (textfield.tag == 4){
          if name3value!.isEmpty  {
               secretValidationLbl.text = " secret key is empty"
               secretValidationLbl.isHidden = false
                }
            else{
               secretValidationLbl.isHidden = true
                secretValidationLbl.text = "incorrect secret key"
                }
        }
}
    //MARK: Create validation func.
    func isValidEmail(emailID:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailID)
    }
    func isValidPassword(passwordID:String) -> Bool {
        let regex = "(?=^.{8,}$)(?=.*\\d)(?=.*[!@#$%^&*]+)(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", regex)
        return passwordTest.evaluate(with: passwordID)
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField == secretKeyTF{
            let allowedCharacters = CharacterSet.decimalDigits
            let characterSet = CharacterSet(charactersIn: string)
            return allowedCharacters.isSuperset(of: characterSet)
        }
        return true
    }

}

