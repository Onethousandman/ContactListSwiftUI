//
//  DataStore.swift
//  ContactListSwiftUI
//
//  Created by Никита Тыщенко on 05.05.2024.
//

final class DataStore {
    static let shared = DataStore()
    
    let names = ["Nikita", "Pavel", "Vadim", "Egor", "Viktor", "Sergey"]
    let surnames = ["Popov", "Tyschenko", "Valeev", "Ivanov", "Turbin", "Glinkin"]
    let phones = [
        "+79653456787",
        "+79621234356",
        "+79679824587",
        "+79083457611",
        "+79020009911",
        "+79721212322"
    ]
    let emails = [
        "gorgunf@gmail.com",
        "mom12@gmail.com",
        "bot@yandex.ru",
        "vitya@gmail.com",
        "dogma@gmail.com",
        "misha@gmail.com"
    ]
    
    private init() {}
}
