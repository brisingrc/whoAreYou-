//
//  question.swift
//  whoAreYou
//
//  Created by Мак on 5/13/19.
//  Copyright © 2019 Aidar Zhussupov. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var answers: [answer]
}

extension Question {
    static func loadData() -> [Question] {
        return [
            Question(text: "Как умер десница короля Джон Арен?",
                     answers: [answer(text: "Был отравлен Серсеей  Ланнистер", type: .incorrect),
                               answer(text: "Был отравлен Лизой Аррен", type: .correct ),
                               answer(text: "Умер от старости", type: .incorrect),
                               answer(text: "Убит «пташками» Вариса", type: .incorrect)]),
            Question(text:"Девиз дома Ланнистеров",
                     answers: [answer(text: "Услышь мой рев!", type: .correct),
                               answer(text: "Ланнистеры всегда платят свои долги!", type: .incorrect),
                               answer(text: "Нам ярость!", type: .incorrect),
                               answer(text: "Вырастая-крепнем!", type:.correct )]),
            Question(text: "По мотивам произведений какого автора создан сериал «Игра престолов»?",
                     answers: [answer(text: "Джорджа Мартина", type: .correct),
                               answer(text: "Дэниела Вайса", type: .incorrect ),
                               answer(text: "Джеймса Роллинса", type: .incorrect),
                               answer(text: "Клайва Стейплз Льюиса", type: .incorrect)]),
            Question(text: "Кого из этих персонажей нету в списке Арьи?",
                     answers: [answer(text: "Серсея Ланистер", type: .incorrect),
                               answer(text: "Гора", type: .incorrect),
                               answer(text: "Уолдер Фрей", type: .incorrect),
                               answer(text: "Теон Грейджой", type: .correct)]),
            Question(text: "Девиз дома Мартеллов",
                     answers: [answer(text: "Непреклонные, несгибаеемые,несдающиеся", type: .correct),
                               answer(text: "Вырастая-крепнем!", type: .incorrect),
                               answer(text: "То что мертво, умереть не может", type: .incorrect),
                               answer(text: "Семья, долг, честь", type: .incorrect )]),
            Question(text: "Как называется серия книг, на которой основан сериал?",
                     answers: [answer(text: "Песнь льда и пламени", type: .correct),
                               answer(text: "Игра престолов", type: .incorrect),
                               answer(text: "Вестерос", type: .incorrect),
                               answer(text: "Семь Королевств", type: .incorrect)]),
            Question(text: "Как зовут актера, который сыграл Рамси Болтона?",
                     answers: [answer(text: "Иван Реон", type: .correct),
                               answer(text: "Альфи Аллен", type: .incorrect),
                               answer(text: "Дуглас Бут", type: .incorrect ),
                               answer(text: "Джек Глиссон", type: .incorrect)]),
            Question(text: "Кто из этих персонажей не Цареубийца?",
                     answers: [answer(text: "Бриенна Тарт", type: .incorrect),
                               answer(text: "Джон Сноу(Эйгон Таргариен", type: .incorrect),
                               answer(text: "Томмен Баратеон", type: .incorrect),
                               answer(text: "Санса Старк", type: .correct)]),
            Question(text: "Какое прозвище получил Сэмвелл из Ночного Дозора?",
                     answers: [answer(text: "Цареубийца", type: .incorrect),
                                answer(text: "Смертоносный", type: .correct),
                                answer(text: "Пирожок", type: .incorrect),
                                answer(text: "Мизинец", type: .incorrect)]),
            Question(text: "В какого бога верят на железных островах?",
                     answers: [answer(text: "в утонувшего Бога", type: .correct),
                               answer(text: "во Владыку Света", type: .incorrect),
                               answer(text: "в старых богов", type: .incorrect),
                               answer(text: "в Великого Жеребца", type: .incorrect)]),
            Question(text: "Кит Харингтон сыграл в сериале ..",
                     answers: [answer(text: "Роберта Баратеона", type: .incorrect),
                               answer(text: "Джона Сноу", type: .correct),
                               answer(text: "Питера Бейлиша", type: .incorrect),
                               answer(text: "Рамси Болтона", type: .incorrect)]),
            Question(text: "Какая война началась после смерти Роберта Баратеона?",
                     answers: [answer(text: "Война пяти королей", type: .correct),
                               answer(text: "Война шести королей", type: .incorrect),
                               answer(text: "Война  Таргариенов и Ланнистеров", type: .incorrect),
                               answer(text: "Война Ланнистеров и Болтонов", type: .incorrect)]),
            Question(text: "Kак зовут лютоволка Джона Сноу?",
                     answers: [answer(text: "Призрак", type: .correct),
                               answer(text: "Серый ветер", type: .incorrect),
                               answer(text: "Нимерия", type: .incorrect),
                               answer(text: "Лето", type: .incorrect)]),
            Question(text: "Под каким именем в сериале известна Королева Шипов?",
                     answers: [answer(text: "Дейенерис Таргариен", type: .incorrect),
                               answer(text: "Оленна Тирелл", type: .correct),
                               answer(text: "Серсея Ланнистер", type: .incorrect),
                               answer(text: "Маргери Тирелл", type: .incorrect)]),
            Question(text: "Кому принадлежит эта фраза: «Пей до тех пор, пока не поймешь ,что поступил правильно»", answers: [answer(text: "Тирион Ланнистер", type: .incorrect),
                answer(text: "Бронн", type: .correct),
                answer(text: "Пес", type: .incorrect),
                answer(text: "Роберт Баратеон", type: .incorrect)]),
            Question(text: "Как называется войско, чьим лидером является Серый Червь?",
                     answers: [answer(text: "Бессердечные", type: .incorrect),
                               answer(text: "Бесстрашные", type: .incorrect),
                               answer(text: "Беспощадные", type: .incorrect),
                               answer(text: "Безупречные", type: .correct)]),
            Question(text: "Кто организовал заговор с целью убийства короля Джоффри?",
                     answers: [answer(text: "Санса Старк", type: .incorrect),
                               answer(text: "Тирион  Ланнистер", type: .incorrect),
                               answer(text: "Оленна Тиррелл", type: .correct),
                               answer(text: "Станис Баратеон", type: .incorrect)]),
            Question(text: "Как зовут самого большего дракона Дейнерерис?",
                     answers: [answer(text: "Рейгаль", type: .incorrect),
                               answer(text: "Дрогон", type: .correct),
                               answer(text: "Визерион", type: .incorrect),
                               answer(text: "Дракарис", type: .incorrect)]),
            Question(text: "Кто обезглавил Эддарда Старка?",
                     answers: [answer(text: "Сир Меррин Трант", type: .incorrect),
                               answer(text: "Джоффри Баратеон", type: .incorrect),
                               answer(text: "Сир Илин Пейн", type: .correct),
                               answer(text: "Король ночи", type: .incorrect)]),
            Question(text: "Первый муж Сансы Старк",
                     answers: [answer(text: "Джоффри Баратеон", type: .incorrect),
                               answer(text: "Томмент Баратеон", type: .incorrect),
                               answer(text: "Тирион Ланнистер", type: .correct),
                               answer(text: "Рамси Болтон", type: .incorrect)])
            
            
            ]

    }
}

