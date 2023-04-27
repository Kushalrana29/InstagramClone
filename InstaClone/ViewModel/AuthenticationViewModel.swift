//
//  AuthenticationViewModel.swift
//  InstaClone
//
//  Created by Kushal Rana on 27/04/23.
//

import UIKit

protocol FormViewModel {
    func updateForm()
}

protocol AuthenticationViewModel {
    var formIsValid: Bool { get }
    var buttonBackgroundColor: UIColor { get }
    var buttonTitleColor: UIColor { get }
}


struct LoginViewModel: AuthenticationViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
    
    var buttonBackgroundColor: UIColor {
        return formIsValid ?  .blue : .systemBlue.withAlphaComponent(0.5)
    }
    
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
    
}


struct RegistrationViewModel: AuthenticationViewModel {
    
    var email: String?
    var password: String?
    var fullname: String?
    var username: String?
    
    
    var formIsValid: Bool{
        return email?.isEmpty == false && password?.isEmpty == false
        && fullname?.isEmpty == false && username?.isEmpty == false
    }
    
    
    var buttonBackgroundColor: UIColor{
        
        var btnColor = UIColor(red: 160/255, green: 87/255, blue: 215/255, alpha: 1)
        
        return formIsValid ? btnColor  : .systemBlue.withAlphaComponent(0.5)
        
    }
    
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
   
    
}
