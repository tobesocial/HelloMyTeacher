//
//  User.swift
//  HelloMyTeacher
//
//  Created by Дмитрий Федоров on 05.04.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
            User(
                login: "Alexey",
                password: "Efimov",
                person: Person(
                    name: "Dmitriy",
                    surname: "Fedorov",
                    job: "Инженер вертолета",
                    position: "Начальник группы",
                    discription: """
                    Здравствуйте, меня зовут Дмитрий, я родился в городе Уфа, Республики Башкортостан.
                    Закончил авиационный университет - УГАТУ и на данный момент работаю инженером вертолета.
                    Хочу научиться разрабатывать мобильные приложения под iOS, чтобы вместе со своими друзьями реализовать наши идеи.
                    """
                )
            )
    }
}

struct Person {
    let name: String
    let surname: String
    let job: String
    let position: String
    let discription: String
}
