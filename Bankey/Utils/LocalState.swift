//
//  LocalState.swift
//  Bankey
//
//  Created by Weerawut Chaiyasomboon on 19/12/2567 BE.
//

import Foundation

public class LocalState {
    private enum Keys: String {
        case hasOnboarded
    }
    
    public static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        } set {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
        }
    }
}
