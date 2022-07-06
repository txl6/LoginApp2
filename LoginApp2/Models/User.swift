//
//  User.swift
//  LoginApp2
//
//  Created by Антон Полин  on 06.07.2022.
//

struct User {
    let login: String
    let password: String
    let person: Data
    
    static func getUser() -> User {
        User(login: "admin",
             password: "sun14",
             person: Data(firstName: "Антон",
                          secondName: "Полин",
                          age: "24 года",
                          hobbies: "Закончил университет по профессии строитель,но после работы понял,что душа к этому не лежит. Я увлекаюсь музыкой, игрой в футбол и немного в баскетбол,теперь изучаю мобильную разработку со swiftbook☺️",
                          myPets: "У меня есть кот, его зовут - Маркус, нашел его на улице, очень дружелюбный кот 🐈",
                          imageOne: "cat",
                          imageSecond: "I")
        )
    }
}

struct Data {
    let firstName: String
    let secondName: String
    let age: String
    let hobbies: String
    let myPets: String
    let imageOne: String
    let imageSecond:String
}


