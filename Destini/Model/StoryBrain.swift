//
//  StoryBrain.swift
//  Destini
//
//  Created by Aleksandra Asichka on 2023-02-02.
//

import Foundation

struct StoryBrain {
    
    private let story = [
        //0
        Story(
            title: "Меня зовут Клэр, Хочешь узнать мою историю?",
            choice1: "Очень хочу", choice1Destination: 2,
            choice2: "Неинтересно, лучше расскажи анекдот", choice2Destination: 1
        ),
        //1
        Story(
            title: "Ну ладно, ехал Гена с Чебурашкой на велике, знаешь такой?",
            choice1: "Да конечно, там еще про руль", choice1Destination: 4,
            choice2: "Не помню продолжай!", choice2Destination: 3
        ),
        //2
        Story(
            title: "Отлично, я расскажу тебе как лежала в больнице. Знаешь кто меня навестил?",
            choice1: "Да, знаю это бабушка.", choice1Destination: 6,
            choice2: "Думаю тебя навещали друзья.", choice2Destination: 5
        ),
        //3
        Story(
            title: "Ну вот они ехали, и тут их остановил милиционер, помнишь что дальше?",
            choice1: "Да, там было очень смешно)))", choice1Destination: 7,
            choice2: "Нет продолжай, совсем забыла.", choice2Destination: 8
        ),
        //4
        Story(
            title: "Ой, а я только этот анекдот знаю, когда прочту еще, сообщу тебе!",
            choice1: "Договорились, пока-пока", choice1Destination: 0,
            choice2: "Ну расскажи хоть историю про себя!!!", choice2Destination: 2
        ),
        //5
        Story(
            title: "Ты не угадала, у меня совсем нет друзей( Будешь дружить со мной?",
            choice1: "Да, я буду", choice1Destination: 9,
            choice2: "Нет, пока-пока", choice2Destination: 0
        ),
        //6
        Story(
            title: "Ты права, бабуля меня любит, она принесла мне вкусные пончики!",
            choice1: "Круто, вкуснота", choice1Destination: 9,
            choice2: "Твоя история неинтересна, пока-пока", choice2Destination: 0
        ),
        //7
        Story(
            title: "И мне было смешно, хахаха",
            choice1: "Пока, скоро увидимся", choice1Destination: 0,
            choice2: "Скукотаааааа", choice2Destination: 0
        ),
        Story(
            title: "Ой я забыла, напомни мне концовку",
            choice1: "Рассказать вслух", choice1Destination: 0,
            choice2: "Тоже забыла", choice2Destination: 0
        ),
        Story(
            title: "Я рада, что у меня есть ты!!!",
            choice1: "Пока", choice1Destination: 0,
            choice2: "Пока-пока", choice2Destination: 0
        )
    ]
    
    private var storyNumber = 0
    
    func getChoice1() -> String {
        return story[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return story[storyNumber].choice2
    }
    
    func getTextLabel() -> String {
        return story[storyNumber].title
    }
    
    mutating func nextStep(_ userChoice: String) {
        let currentStory = story[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
}
