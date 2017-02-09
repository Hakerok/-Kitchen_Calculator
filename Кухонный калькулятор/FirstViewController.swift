//
//  FirstViewController.swift
//  Кухонный калькулятор
//
//  Created by Игорь on 09.02.17.
//  Copyright © 2017 Игорь. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var pickView: UIPickerView!
    @IBOutlet weak var kolText: UITextField!
    @IBOutlet weak var cupLabel: UILabel!
    @IBOutlet weak var litrlable: UILabel!
    @IBOutlet weak var millilitrLable: UILabel!
    @IBOutlet weak var gramLable: UILabel!
    @IBOutlet weak var smalLable: UILabel!
    @IBOutlet weak var bigLable: UILabel!
    var ingrid = ["Абрикосы сушеные", "Анчоусы", "Арахис измельченный","Арахисовое масло","Базилик сушеный","Бананы нарезанные","Бананы пюре","Бисквитная смесь","Бразильские орехи цельные",
    "Ванильные вафли измельченные","Взбитые яйца","Виноградные орехи","Вода","Гвоздика молотая","Гвоздика целая","Гвоздика приготовленная","Говядина сырая","Горох сырой","Горчица приготовленная",
    "Горчица сухая","Горчичное семя","Грецкие орехи молотые","Грецкие орехи нарезанные","Грецкие орехи без сколрупы","Гречневая крупа","Грибы нарезанные","Грибы целые","Дрожжи сухие активные","Душистый перец","Желатин","Зеленый лук","Зефир маленький","Изюм","Имбирь кристалл","Имбирь молотый","Имбирь свежий","Инжир сушенный","Капуста измельченная","Картофель нарезанный сырой","Картофель приготов. кубиками","Картофельное пюре","Кедровые орешки","Киш-миш","Клубника","Клюква","Кокосовая стружка","Корица молотая","Кофе молотый","Кофе растворимый","Крекеры","Кукуруза","Кукурузная мука","Кукурузный крахмал","Куркума молотая","Лук нарезанный","Лук рубленный","Лук строганный","Лук-шалог","Майонез","Мак. изделия макароны","Мак. изделия яичная лапша","Маранта","Маргарин твердый","Маргарин топленый","Мармелад","Масло","Масло-кешью","Масло растительное","Мед","Миндаль молотый","Миндаль целый","Молоко сухое","Мука","Мука бобовых","Мука гречневая","Мука картофельная","Мука манная","Мука пшеничная","Мука ржаная","Мука рисовая","Овес прессованный","Овсянка сырая","Оливки нарезанные","Оливковое масло","Орехи пекан молотые","Орехи пекан очищенные","Отруби непросеянные","Паприка","Патока","Пекарский порошок","Перец горошком белый","Перец горошком черный","Перец чили нарезанный","Петрушка свежая","Печенье измельченная","Побеги бамбука","Помидоры нарезанные","Пшеница","Рис","Рис дикий","Рис сырой","Рис тушеный","Сало","Сахар гранулированный","Сахар кондитерский","Сахар коричневый","Сгущенное молоко","Семена кунжута","Семена мака","Семена сельдерея","Сироп кукурузный","Сладкий кортофель","Сметана","Смородина","Сода","Соль","Соус Тартар","Спагетти сырные","Сыр Колби тертый","Сыр Джек тертый","Сыр сливочный","Сыр творожный","Сыр Парамезан тертый","Сыр Чеддер тертый","Тунец консервы","Тыква приготовленная","Фарина","Фасоль сушенная","Фундук целый","Хлебная панировка","Цветная капуста","Цедра апельсина","Цедра лимонная","Чай","Чеснок","Чечевица","Шоколад какао-порошок","Шоколад растопленный","Шоколад тертый","Шоколад стружка","Шпинат","Яблоки нарезанные","Яблоки сушеные","Яичные белки","Яичные желтки","Ячмень сырой"]
    var PickedAnswer = 0
    var mill = Float(0.0)
    var cup = Float(0.0)
    var teaspoon = Float(0.0)
    var spoon = Float(0.0)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        cupLabel.text = ""
        litrlable.text = ""
        millilitrLable.text = ""
        gramLable.text = ""
        smalLable.text = ""
        bigLable.text = ""
        pickView.delegate = self
        pickView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func cupBUtton(_ sender: Any)
    {
        let kolprint = Float(kolText.text!)
        cupLabel.text = kolText.text
        gramLable.text = String(cup*kolprint!);
        litrlable.text = String((cup*kolprint!)/1000/mill)
        millilitrLable.text = String((cup*kolprint!)/mill)
        smalLable.text = String((cup*kolprint!)/teaspoon)
        bigLable.text = String((cup*kolprint!)/spoon)
    }

    
    @IBAction func litrButton(_ sender: Any)
    {
            let kolprint = Float(kolText.text!)
            gramLable.text = String(mill*kolprint!*1000)
            litrlable.text = kolText.text
            millilitrLable.text = String(kolprint!*1000)
            cupLabel.text = String((mill*kolprint!*1000)/cup)
            smalLable.text = String((mill*kolprint!*1000)/teaspoon)
            bigLable.text = String((mill*kolprint!*1000)/spoon)
        
    }
    @IBAction func millilitrButton(_ sender: Any)
    {
        
            let kolprint = Float(kolText.text!)
            millilitrLable.text = kolText.text
            cupLabel.text = String((mill*kolprint!*1000)/cup)
            smalLable.text = String((mill*kolprint!*1000)/teaspoon)
            bigLable.text = String((mill*kolprint!*1000)/spoon)
            gramLable.text = String(mill*kolprint!)
            litrlable.text = String(kolprint!/1000)
        
    }
    @IBAction func gramButton(_ sender: Any)
    {
       
            let kolprint = Float(kolText.text!)
            gramLable.text = kolText.text
            litrlable.text = String((kolprint!/mill)/1000)
            millilitrLable.text = String(kolprint!/mill)
            cupLabel.text = String(kolprint!/cup)
            smalLable.text = String(kolprint!/teaspoon)
            bigLable.text = String(kolprint!/spoon)
        
    }
    @IBAction func smalButton(_ sender: Any)
    {
            let kolprint = Float(kolText.text!)
            smalLable.text = kolText.text
            gramLable.text = String(teaspoon * kolprint!)
            litrlable.text = String((teaspoon * kolprint!)/1000/mill)
            millilitrLable.text = String((teaspoon * kolprint!)/mill)
            cupLabel.text = String((teaspoon * kolprint!)/cup)
            bigLable.text = String((teaspoon * kolprint!)/spoon)
        
    }
    @IBAction func bigButton(_ sender: Any)
    {
       
            let kolprint = Float(kolText.text!)
            bigLable.text = kolText.text
            gramLable.text = String(spoon * kolprint!)
            litrlable.text = String((spoon * kolprint!)/1000/mill)
            millilitrLable.text = String((spoon * kolprint!)/mill)
            cupLabel.text = String((spoon * kolprint!)/cup)
            smalLable.text = String((spoon * kolprint!)/teaspoon)
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return ingrid.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return ingrid[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        PickedAnswer = row
        
        if PickedAnswer == 0
        {
            mill = 0.64; cup = 150; teaspoon = 3.2; spoon = 9.5
        }
        if PickedAnswer == 1
        {
            mill = 1.02; cup = 240; teaspoon = 5.1; spoon = 15.3
        }
        if PickedAnswer == 2
        {
            mill = 0.68; cup = 160; teaspoon = 3.4; spoon = 10.2
        }
        if PickedAnswer == 3
        {
            mill = 0.76; cup = 180; teaspoon = 3.8; spoon =  11.4
        }
        if PickedAnswer == 4
        {
            mill = 0.11; cup = 25; teaspoon = 0.5; spoon = 1.6
        }
        if PickedAnswer == 5
        {
            mill = 0.76; cup = 180; teaspoon = 3.8; spoon = 11.4
        }
        if PickedAnswer == 6
        {
            mill = 0.97; cup = 230; teaspoon = 4.9; spoon  = 14.6
        }
        if PickedAnswer == 7
        {
            mill = 0.55; cup = 130; teaspoon = 2.8; spoon = 8.3
        }
        if PickedAnswer == 8
        {
            mill = 0.64; cup = 150; teaspoon = 3.2; spoon =  9.5
        }
        if PickedAnswer == 9
        {
            mill = 0.68; cup = 160; teaspoon = 3.4; spoon = 10.2
        }
        if PickedAnswer == 10
        {
            mill = 0.97; cup = 230; teaspoon = 4.9; spoon = 14.6
        }
        if PickedAnswer == 11
        {
            mill = 0.51; cup = 120; teaspoon = 2.5; spoon = 7.6
        }
        if PickedAnswer == 12
        {
            mill = 1; cup = 237; teaspoon = 5; spoon = 15.1
        }
        if PickedAnswer == 13
        {
            mill = 0.40; cup = 95; teaspoon = 2; spoon = 6
        }
        if PickedAnswer == 14
        {
            mill = 0.38; cup = 90; teaspoon = 1.9; spoon = 5.7
        }
        if PickedAnswer == 15
        {
            mill = 0.97; cup = 230; teaspoon = 4.9 ;spoon = 14.6
        }
        if PickedAnswer == 16
        {
            mill = 0.93; cup = 220; teaspoon = 4.7; spoon = 14
        }
        if PickedAnswer == 17
        {
            mill = 0.64; cup = 150; teaspoon = 3.2; spoon = 9.5
        }
        if PickedAnswer == 18
        {
            mill = 1.06; cup = 250; teaspoon = 5.3; spoon = 15.9
        }
        if PickedAnswer == 19
        {
            mill = 0.49; cup = 115; teaspoon = 2.4; spoon = 7.3
        }
        if PickedAnswer == 20
        {
            mill = 0.64; cup = 150; teaspoon = 3.2; spoon = 9.5
        }
        if PickedAnswer == 21
        {
            mill = 0.36; cup = 85; teaspoon = 1.8; spoon = 5.4
        }
        if PickedAnswer == 22
        {
            mill = 0.49; cup = 115; teaspoon = 2.4; spoon = 7.3
        }
        if PickedAnswer == 23
        {
            mill = 0.51; cup = 120; teaspoon = 2.5; spoon = 7.6
        }
        if PickedAnswer == 24
        {
            mill = 0.72; cup = 170; teaspoon = 3.6; spoon = 10.8
        }
        if PickedAnswer == 25
        {
            mill = 0.32; cup = 75; teaspoon = 1.6; spoon = 4.8
        }
        if PickedAnswer == 26
        {
            mill = 0.25; cup = 60; teaspoon = 1.3; spoon = 3.8
        }
        if PickedAnswer == 27
        {
            mill = 1.23; cup = 290; teaspoon = 6.1; spoon = 18.4
        }
        if PickedAnswer == 28
        {
            mill = 0.42; cup = 100; teaspoon = 2.1; spoon = 6.4
        }
        if PickedAnswer == 29
        {
            mill = 0.93; cup = 220; teaspoon = 4.7; spoon = 14
        }
        if PickedAnswer == 30
        {
            mill = 0.21; cup = 50; teaspoon = 1.1; spoon = 3.2
        }
        if PickedAnswer == 31
        {
            mill = 0.21; cup = 50; teaspoon = 1.1; spoon = 3.2
        }
        if PickedAnswer == 32
        {
            mill = 0.64; cup = 150; teaspoon = 3.2; spoon = 9.5
        }
        if PickedAnswer == 33
        {
            mill = 1.02; cup = 240; teaspoon = 5.1; spoon = 15.3
        }
        if PickedAnswer == 34
        {
            mill = 0.51; cup = 120; teaspoon = 2.5; spoon = 7.6
        }
        if PickedAnswer == 35
        {
            mill = 0.97; cup = 230; teaspoon = 4.9; spoon = 14.6
        }
        if PickedAnswer == 36
        {
            mill = 0.7; cup = 165; teaspoon = 3.5; spoon = 10.5
        }
        if PickedAnswer == 37
        {
            mill = 1.44; cup = 340; teaspoon = 7.2; spoon = 21.6
        }
        if PickedAnswer == 38
        {
            mill = 0.76; cup = 180; teaspoon = 3.8; spoon = 11.4
        }
        if PickedAnswer == 39
        {
            mill = 0.85; cup = 200; teaspoon = 4.2; spoon = 12.7
        }
        if PickedAnswer == 40
        {
            mill = 0.89; cup = 210; teaspoon = 4.4; spoon = 13.3
        }
        if PickedAnswer == 41
        {
            mill = 0.53; cup = 125; teaspoon = 2.6; spoon = 7.9
        }
        if PickedAnswer == 42
        {
            mill = 0.64; cup = 150; teaspoon = 3.2; spoon = 9.5
        }
        if PickedAnswer == 43
        {
            mill = 0.64; cup = 150; teaspoon = 3.2; spoon = 9.5
        }
        if PickedAnswer == 44
        {
            mill = 0.42; cup = 100; teaspoon = 2.1; spoon = 6.4
        }
        if PickedAnswer == 45
        {
            mill = 0.32; cup = 75; teaspoon = 1.6; spoon = 4.8
        }
        if PickedAnswer == 46
        {
            mill = 0.51; cup = 120; teaspoon = 2.5; spoon = 7.6
        }
        if PickedAnswer == 47
        {
            mill = 0.38; cup = 90; teaspoon = 1.9; spoon = 5.7
        }
        if PickedAnswer == 48
        {
            mill = 0.23; cup = 55; teaspoon = 1.2; spoon = 3.5
        }
        if PickedAnswer == 49
        {
            mill = 0.25; cup = 60; teaspoon = 1.3; spoon = 3.8
        }
        if PickedAnswer == 50
        {
            mill = 0.72; cup = 170; teaspoon = 3.6; spoon = 10.8
        }
        if PickedAnswer == 51
        {
            mill = 0.51
            cup = 120
            teaspoon = 2.5
            spoon = 7.6
        }
        if PickedAnswer == 52
        {
            mill = 0.64
            cup = 150
            teaspoon = 3.2
            spoon = 9.5
        }
        if PickedAnswer == 53
        {
            mill = 0.59
            cup = 140
            teaspoon = 3
            spoon = 8.9
        }
        if PickedAnswer == 54
        {
            mill = 0.64
            cup = 150
            teaspoon = 3.2
            spoon = 9.5
        }
        if PickedAnswer == 55
        {
            mill = 0.85
            cup = 200
            teaspoon = 4.2
            spoon = 12.7
        }
        if PickedAnswer == 56
        {
            mill = 0.55
            cup = 130
            teaspoon = 2.8
            spoon = 8.3
        }
        if PickedAnswer == 57
        {
            mill = 1.02
            cup = 240
            teaspoon = 5.1
            spoon = 15.3
        }
        if PickedAnswer == 58
        {
            mill = 0.93
            cup = 220
            teaspoon = 4.7
            spoon = 14
        }
        if PickedAnswer == 59
        {
            mill = 0.49
            cup = 115
            teaspoon = 2.4
            spoon = 7.3
        }
        if PickedAnswer == 60
        {
            mill = 0.38
            cup = 90
            teaspoon = 1.9
            spoon = 5.7
        }
        if PickedAnswer == 61
        {
            mill = 0.95
            cup = 225
            teaspoon = 4.8
            spoon = 14.3
        }
        if PickedAnswer == 62
        {
            mill = 0.93
            cup = 220
            teaspoon = 4.7
            spoon = 14
        }
        if PickedAnswer == 63
        {
            mill = 0.89
            cup = 210
            teaspoon = 4.4
            spoon = 13.3
        }
        if PickedAnswer == 64
        {
            mill = 0.68
            cup = 160
            teaspoon = 3.4
            spoon = 10.2
        }
        if PickedAnswer == 65
        {
            mill = 0.97
            cup = 230
            teaspoon = 4.9
            spoon = 14.6
        }
        if PickedAnswer == 66
        {
            mill = 0.47
            cup = 110
            teaspoon = 2.3
            spoon = 7
        }
        if PickedAnswer == 67
        {
            mill = 0.89
            cup = 210
            teaspoon = 4.4
            spoon = 13.3
        }
        if PickedAnswer == 68
        {
            mill = 1.44
            cup = 340
            teaspoon = 7.2
            spoon = 21.6
        }
        if PickedAnswer == 69
        {
            mill = 0.36
            cup = 85
            teaspoon = 1.8
            spoon = 5.4
        }
        if PickedAnswer == 70
        {
            mill = 0.72
            cup = 170
            teaspoon = 3.6
            spoon = 10.8
        }
        if PickedAnswer == 71
        {
            mill = 0.49
            cup = 115
            teaspoon = 2.4
            spoon = 7.3
        }
        if PickedAnswer == 72
        {
            mill = 0.55
            cup = 130
            teaspoon = 2.8
            spoon = 8.3
        }
        if PickedAnswer == 73
        {
            mill = 0.55
            cup = 130
            teaspoon = 2.8
            spoon = 8.3
        }
        if PickedAnswer == 74
        {
            mill = 0.72
            cup = 170
            teaspoon = 3.6
            spoon =  10.8
            
        }
        if PickedAnswer == 75
        {
            mill = 0.72
            cup = 170
            teaspoon = 3.6
            spoon = 10.8
        }
        if PickedAnswer == 76
        {
            mill = 0.74
            cup = 175
            teaspoon = 3.7
            spoon = 11.1
        }
        if PickedAnswer == 77
        {
            mill = 0.42
            cup = 100
            teaspoon = 2.1
            spoon  = 6.4
        }
        if PickedAnswer == 78
        {
            mill = 0.38
            cup = 90
            teaspoon = 1.9
            spoon = 5.7
        }
        if PickedAnswer == 79
        {
            mill = 0.64
            cup = 150
            teaspoon = 3.2
            spoon =  9.5
        }
        if PickedAnswer == 80
        {
            mill = 0.34
            cup = 80
            teaspoon = 1.7
            spoon = 5.1
        }
        if PickedAnswer == 81
        {
            mill = 0.34
            cup = 80
            teaspoon = 1.7
            spoon = 5.1
        }
        if PickedAnswer == 82
        {
            mill = 0.76
            cup = 180
            teaspoon = 3.8
            spoon = 11.4
        }
        if PickedAnswer == 83
        {
            mill = 0.81
            cup = 190
            teaspoon = 4
            spoon = 12.1
        }
        if PickedAnswer == 84
        {
            mill = 0.42
            cup = 100
            teaspoon = 2.1
            spoon = 6.4
        }
        if PickedAnswer == 85
        {
            mill = 0.51
            cup = 120
            teaspoon = 2.5
            spoon = 7.6
        }
        if PickedAnswer == 86
        {
            mill = 0.23
            cup = 55
            teaspoon = 1.2
            spoon = 3.5
        }
        if PickedAnswer == 87
        {
            mill = 0.49
            cup = 115
            teaspoon = 2.4
            spoon = 7.3
        }
        if PickedAnswer == 88
        {
            mill = 0.48
            cup = 350
            teaspoon = 7.4
            spoon = 22.2
        }
        if PickedAnswer == 89
        {
            mill = 0.76
            cup = 180
            teaspoon = 3.8
            spoon = 11.4
        }
        if PickedAnswer == 90
        {
            mill = 0.64
            cup = 150
            teaspoon = 3.2
            spoon = 9.5
        }
        if PickedAnswer == 91
        {
            mill = 0.57
            cup = 135
            teaspoon = 2.9
            spoon = 8.6
        }
        if PickedAnswer == 92
        {
            mill = 0.72
            cup = 170
            teaspoon = 3.6
            spoon = 10.8
        }
        if PickedAnswer == 93
        {
            mill = 0.17
            cup = 40
            teaspoon = 0.8
            spoon = 2.5
        }
        if PickedAnswer == 94
        {
            mill = 0.51
            cup = 120
            teaspoon = 2.5
            spoon = 7.6
        }
        if PickedAnswer == 95
        {
            mill = 1.14
            cup = 270
            teaspoon = 5.7
            spoon = 17.2
        }
        if PickedAnswer == 96
        {
            mill = 0.68
            cup = 160
            teaspoon = 3.4
            spoon = 10.2
        }
        if PickedAnswer == 97
        {
            mill = 0.53
            cup = 125
            teaspoon = 2.6
            spoon = 7.9
        }
        if PickedAnswer == 98
        {
            mill = 0.09
            cup = 22
            teaspoon = 0.5
            spoon = 1.4
        }
        if PickedAnswer == 99
        {
            mill = 0.61
            cup = 145
            teaspoon = 3.1
            spoon = 9.2
        }
        if PickedAnswer == 100
        {
            mill = 0.89
            cup = 210
            teaspoon = 4.4
            spoon = 13.3
        }
        if PickedAnswer == 101
        {
            mill = 0.68
            cup = 160
            teaspoon = 3.4
            spoon = 10.2
        }
        if PickedAnswer == 102
        {
            mill = 0.93
            cup = 220
            teaspoon = 4.7
            spoon = 14
        }
        if PickedAnswer == 103
        {
            mill = 0.81
            cup = 190
            teaspoon = 4
            spoon = 12.1
        }
        if PickedAnswer == 104
        {
            mill = 0.55
            cup = 130
            teaspoon = 2.8
            spoon = 8.3
        }
        if PickedAnswer == 105
        {
            mill = 0.85
            cup = 200
            teaspoon = 4.2
            spoon = 12.7
        }
        if PickedAnswer == 106
        {
            mill = 0.93
            cup = 220
            teaspoon = 4.7
            spoon = 14
        }
        if PickedAnswer == 107
        {
            mill = 0.68
            cup = 160
            teaspoon = 3.4
            spoon = 10.2
        }
        if PickedAnswer == 108
        {
            mill = 0.57
            cup = 135
            teaspoon = 2.9
            spoon = 8.6
        }
        if PickedAnswer == 109
        {
            mill = 0.51
            cup = 120
            teaspoon = 2.5
            spoon = 7.6
        }
        if PickedAnswer == 110
        {
            mill = 1.48
            cup = 350
            teaspoon = 7.4
            spoon = 22.2
        }
        if PickedAnswer == 111
        {
            mill = 1.02
            cup = 240
            teaspoon = 5.1
            spoon = 15.3
        }
        if PickedAnswer == 112
        {
            mill = 0.51
            cup = 120
            teaspoon = 2.5
            spoon = 7.6
        }
        if PickedAnswer == 113
        {
            mill = 0.64
            cup = 150
            teaspoon = 3.2
            spoon = 9.5
        }
        if PickedAnswer == 114
        {
            mill = 0.87
            cup = 205
            teaspoon = 4.3
            spoon = 13
        }
        if PickedAnswer == 115
        {
            mill = 1.02
            cup = 240
            teaspoon = 5.1
            spoon = 15.3
        }
        if PickedAnswer == 116
        {
            mill = 0.64
            cup = 150
            teaspoon = 3.2
            spoon = 9.5
        }
        if PickedAnswer == 117
        {
            mill = 0.51
            cup = 120
            teaspoon = 2.5
            spoon = 7.6
        }
        if PickedAnswer == 118
        {
            mill = 0.47
            cup = 110
            teaspoon = 2.3
            spoon = 7
        }
        if PickedAnswer == 119
        {
            mill = 0.55
            cup = 130
            teaspoon = 2.8
            spoon = 8.3
        }
        if PickedAnswer == 120
        {
            mill = 1.02
            cup = 240
            teaspoon = 5.1
            spoon = 15.3
        }
        if PickedAnswer == 121
        {
            mill = 0.97
            cup = 230
            teaspoon = 4.9
            spoon = 14.6
        }
        if PickedAnswer == 122
        {
            mill = 0.76
            cup = 180
            teaspoon = 3.8
            spoon = 11.4
        }
        if PickedAnswer == 123
        {
            mill = 0.51
            cup = 120
            teaspoon = 2.5
            spoon = 7.6
        }
        if PickedAnswer == 124
        {
            mill = 0.85
            cup = 200
            teaspoon = 4.2
            spoon = 12.7
        }
        if PickedAnswer == 125
        {
            mill = 0.76
            cup = 180
            teaspoon = 3.8
            spoon = 11.4
        }
        if PickedAnswer == 126
        {
            mill = 0.76
            cup = 180
            teaspoon = 3.8
            spoon = 11.4
        }
        if PickedAnswer == 127
        {
            mill = 0.85
            cup = 200
            teaspoon = 4.2
            spoon = 12.7
        }
        if PickedAnswer == 128
        {
            mill = 0.72
            cup = 170
            teaspoon = 3.6
            spoon = 10.8
        }
        if PickedAnswer == 129
        {
            mill = 0.25
            cup = 60
            teaspoon = 1.3
            spoon = 3.8
        }
        if PickedAnswer == 130
        {
            mill = 0.97
            cup = 230
            teaspoon = 4.9
            spoon = 14.6
        }
        if PickedAnswer == 131
        {
            mill = 0.38
            cup = 90
            teaspoon = 1.9
            spoon = 5.7
        }
        if PickedAnswer == 132
        {
            mill = 0.64
            cup = 150
            teaspoon = 3.2
            spoon = 9.5
        }
        if PickedAnswer == 133
        {
            mill = 0.32
            cup = 75
            teaspoon = 1.6
            spoon = 4.8
        }
        if PickedAnswer == 134
        {
            mill = 0.68
            cup = 160
            teaspoon = 3.4
            spoon = 10.2
        }
        if PickedAnswer == 135
        {
            mill = 0.65
            cup = 200
            teaspoon = 4.2
            spoon = 12.7
        }
        if PickedAnswer == 136
        {
            mill = 0.47
            cup = 110
            teaspoon = 2.3
            spoon = 7
        }
        if PickedAnswer == 137
        {
            mill = 1.02
            cup = 240
            teaspoon = 5.1
            spoon = 15.3
        }
        if PickedAnswer == 138
        {
            mill = 0.42
            cup = 100
            teaspoon = 2.1
            spoon = 6.4
        }
        if PickedAnswer == 139
        {
            mill = 0.76
            cup = 180
            teaspoon = 3.8
            spoon = 11.4
        }
        if PickedAnswer == 140
        {
            mill = 0.76
            cup = 180
            teaspoon = 3.8
            spoon = 11.4
        }
        if PickedAnswer == 141
        {
            mill = 0.76
            cup = 180
            teaspoon = 3.8
            spoon = 11.4
        }
        if PickedAnswer == 142
        {
            mill = 0.38
            cup = 90
            teaspoon = 1.9
            spoon = 5.7
        }
        if PickedAnswer == 143
        {
            mill = 0.93
            cup = 220
            teaspoon = 4.7
            spoon = 14
        }
        if PickedAnswer == 144
        {
            mill = 1.14
            cup = 270
            teaspoon = 5.7
            spoon = 17.2
        }
        if PickedAnswer == 145
        {
            mill = 0.78
            cup = 185
            teaspoon = 3.9
            spoon = 11.8
        }
    }
    }



