//
//  Validator.swift
//  Investment
//
//  Created by Thyago on 17/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import Foundation

class ValidationError: Error {
    var message: String
    
    init(_ message: String) {
        self.message = message
    }
}

protocol ValidatorConvertible {
    func validated(_ value: String) throws -> String
}

enum ValidatorType {
    case name
    case email
    case phone
    //case saveEmail
    case requiredField(field: String)
}

enum VaildatorFactory {
    static func validatorFor(type: ValidatorType) -> ValidatorConvertible {
        switch type {
        case .name: return NameValidator()
        case .email: return EmailValidator()
        case .phone: return PhoneValidator()
        //case .saveEmail: return SaveEmailValidator()
        case .requiredField(let fieldName): return RequiredFieldValidator(fieldName)
        }
    }
}

class PhoneValidator: ValidatorConvertible {
    func validated(_ value: String) throws -> String {
        guard value.count > 0 else {throw ValidationError("Por favor, insira seu telefone")}
        guard value.count < 8 else {throw ValidationError("Complete o número de telefone")}
        return value
    }
}

struct RequiredFieldValidator: ValidatorConvertible {
    private let fieldName: String
    
    init(_ field: String) {
        fieldName = field
    }
    
    func validated(_ value: String) throws -> String {
        guard !value.isEmpty else {
            throw ValidationError("Preencha os campos " + fieldName)
        }
        return value
    }
}

struct NameValidator: ValidatorConvertible {
    func validated(_ value: String) throws -> String {
        guard value.count >= 4 else {
            throw ValidationError("Nome do usuário precisa conter pelo menos 4 caracteres!" )
        }
        
        return value
    }
}

struct EmailValidator: ValidatorConvertible {
    func validated(_ value: String) throws -> String {
        do {
            if try NSRegularExpression(pattern: "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$", options: .caseInsensitive).firstMatch(in: value, options: [], range: NSRange(location: 0, length: value.count)) == nil {
                throw ValidationError("Endereço de email não existe")
            }
        } catch {
            throw ValidationError("Endereço de email não existe")
        }
        return value
    }
}
