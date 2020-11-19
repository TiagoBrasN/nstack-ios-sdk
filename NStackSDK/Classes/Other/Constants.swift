//
//  Constants.swift
//  NStack
//
//  Created by Kasper Welner on 02/10/15.
//  Copyright © 2015 Nodes. All rights reserved.
//

enum Constants {
    enum CacheKeys {
        static let previousVersion      = "PreviousVersionKey"
        static let lastUpdatedDate      = "LastUpdatedKey"
        static let prevAcceptedLanguage = "PrevAcceptedLanguageKey"
        static let countries            = "CountriesKey"
        static let continents           = "ContinentsKey"
        static let languanges           = "LanguangesKey"
        static let timezones            = "TimezonesKey"
        static let languageOverride     = "LanguageOverride"
    }

    enum LocalizationManagerKeys {
        static let previousAcceptLanguage = "LocalizationManager-PAL"
        static let lastUpdatedDate = "LocalizationManager-LUD"
        static let currentBestFitLanguage = "LocalizationManager-BFL"
        static let availableLanguages = "LocalizationManager-AVL"
        static let defaultLanguage = "LocalizationManager-DFL"
        static let languageOverride = "LocalizationManager-LGO"
        static let persistedLocalizationType = "LocalizationManager-PTT"
    }
}
