//
//  PaymentCard.swift
//  common
//
//  Created by Rommel Valdiviezo on 25/7/24.
//

import Foundation

public struct PaymentCard: Identifiable{
    public var id: ObjectIdentifier
    public var remoteId: String
    public var nickname: String?
    public var lastFourDigits: String
    public var bank: String
    public var name: String {
        get{
            guard let nick = nickname else{
                return "\(bank) **** \(lastFourDigits)"
            }
            return nick
        }
    }
    public var expirationMonth: Int
    public var expirationYear: Int
    
    public init(id: ObjectIdentifier, remoteId: String, nickname: String? = nil, lastFourDigits: String, bank: String, expirationMonth: Int, expirationYear: Int) {
        self.id = id
        self.remoteId = remoteId
        self.nickname = nickname
        self.lastFourDigits = lastFourDigits
        self.bank = bank
        self.expirationMonth = expirationMonth
        self.expirationYear = expirationYear
    }
    
}
