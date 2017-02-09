//
//  SecondViewController.swift
//  Кухонный калькулятор
//
//  Created by Игорь on 09.02.17.
//  Copyright © 2017 Игорь. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nametextbox: UITextField!
    @IBOutlet weak var musttexbox: UITextField!
    @IBOutlet weak var there: UITextField!
    @IBOutlet weak var nameLabel1: UILabel!
    @IBOutlet weak var thereLabel1: UILabel!
    @IBOutlet weak var nameLabel2: UILabel!
    @IBOutlet weak var mustlabel2: UILabel!
    @IBOutlet weak var thereLabel2: UILabel!
    @IBOutlet weak var nameLabel3: UILabel!
    @IBOutlet weak var mustLabel3: UILabel!
    @IBOutlet weak var thereLabel3: UILabel!
    @IBOutlet weak var nameLabel4: UILabel!
    @IBOutlet weak var mustLabel4: UILabel!
    @IBOutlet weak var thereLabel4: UILabel!
    @IBOutlet weak var mustLabel1: UILabel!
    @IBOutlet weak var mustLabel5: UILabel!
    @IBOutlet weak var thereLabel5: UILabel!
    @IBOutlet weak var nameLabel6: UILabel!
    @IBOutlet weak var mustLabel6: UILabel!
    @IBOutlet weak var thereLabel6: UILabel!
    @IBOutlet weak var thereLabel7: UILabel!
    @IBOutlet weak var nameLabel8: UILabel!
    @IBOutlet weak var mustLabel8: UILabel!
    @IBOutlet weak var thereLabel8: UILabel!
    @IBOutlet weak var mustLabel7: UILabel!
    @IBOutlet weak var nameLabel7: UILabel!
    @IBOutlet weak var nameLabel5: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel1.text = ""
        nameLabel2.text = ""
        nameLabel3.text = ""
        nameLabel4.text = ""
        nameLabel5.text = ""
        nameLabel6.text = ""
        nameLabel7.text = ""
        nameLabel8.text = ""
        mustLabel1.text = ""
        mustlabel2.text = ""
        mustLabel3.text = ""
        mustLabel4.text = ""
        mustLabel5.text = ""
        mustLabel6.text = ""
        mustLabel7.text = ""
        mustLabel8.text = ""
        thereLabel1.text = ""
        thereLabel2.text = ""
        thereLabel3.text = ""
        thereLabel4.text = ""
        thereLabel5.text = ""
        thereLabel6.text = ""
        thereLabel7.text = ""
        thereLabel8.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func recalculate(_ sender: Any)
    {
        var rez = Double(0)
        if (mustLabel1.text != String("") && thereLabel1.text != String(""))
        {
            let must1 = Double(mustLabel1.text!)
            let there1 = Double (thereLabel1.text!)
            rez = (must1! * there1!)/must1!
            thereLabel1.text = String(rez)
        }
        
        if (mustlabel2.text != String("") && thereLabel2.text != String(""))
        {
            let must2 = Double(mustlabel2.text!)
            let there2 = Double(thereLabel1.text!)
            let must3 = Double(mustLabel1.text!)
            rez = (must2! * there2!)/must3!
            thereLabel2.text = String(rez)
        }
        if (mustLabel3.text != String ("") && thereLabel3.text != String(""))
        {
           let must4 = Double (mustLabel3.text!)
           let there3 = Double (thereLabel2.text!)
           let must5 = Double(mustlabel2.text!)
           rez = (must4! * there3!)/must5!
           thereLabel3.text = String(rez)
        }
        if (mustLabel4.text != String ("") && thereLabel4.text != String(""))
        {
           let must6 = Double (mustLabel4.text!)
           let there4 = Double (thereLabel3.text!)
           let must7 = Double (mustLabel3.text!)
           rez = (must6! * there4!)/must7!
           thereLabel4.text = String(rez)
        }
        if (mustLabel5.text != String ("") && thereLabel5.text != String(""))
        {
            let must8 = Double (mustLabel5.text!)
            let there5 = Double (thereLabel4.text!)
            let must9 = Double (mustLabel4.text!)
            rez = (must8! * there5!)/must9!
            thereLabel5.text = String(rez)
        }
        if (mustLabel6.text != String ("") && thereLabel6.text != String(""))
        {
            let must10 = Double (mustLabel6.text!)
            let there6 = Double (thereLabel5.text!)
            let must11 = Double (mustLabel5.text!)
            rez = (must10! * there6!)/must11!
            thereLabel6.text = String(rez)
        }
        if (mustLabel7.text != String ("") && thereLabel7.text != String(""))
        {
            let must12 = Double (mustLabel7.text!)
            let there7 = Double (thereLabel6.text!)
            let must13 = Double (mustLabel6.text!)
            rez = (must12! * there7!)/must13!
            thereLabel7.text = String(rez)
        }
        if(mustLabel8.text != String ("") && thereLabel8.text != String (""))
        {
            let must14 = Double(mustLabel8.text!)
            let there8 = Double (thereLabel7.text!)
            let must15 = Double (mustLabel7.text!)
            rez = (must14! * there8!)/must15!
            thereLabel8.text = String(rez)
        }
    }
    @IBAction func clearButton(_ sender: Any)
    {
        nameLabel1.text = ""
        nameLabel2.text = ""
        nameLabel3.text = ""
        nameLabel4.text = ""
        nameLabel5.text = ""
        nameLabel6.text = ""
        nameLabel7.text = ""
        nameLabel8.text = ""
        mustLabel1.text = ""
        mustlabel2.text = ""
        mustLabel3.text = ""
        mustLabel4.text = ""
        mustLabel5.text = ""
        mustLabel6.text = ""
        mustLabel7.text = ""
        mustLabel8.text = ""
        thereLabel1.text = ""
        thereLabel2.text = ""
        thereLabel3.text = ""
        thereLabel4.text = ""
        thereLabel5.text = ""
        thereLabel6.text = ""
        thereLabel7.text = ""
        thereLabel8.text = ""
    }
    @IBAction func addButton(_ sender: Any)
    {
        if (nametextbox.text == String("") || musttexbox.text == String("") || there.text == String(""))
        {
            
        }
        else
        {
            if (nameLabel1.text == String(""))
            {
                nameLabel1.text = nametextbox.text
                mustLabel1.text = musttexbox.text
                thereLabel1.text = there.text
                nametextbox.text = ""
                musttexbox.text = ""
                there.text = ""
            }
            else
            {
                if (nameLabel2.text == String (""))
                {
                    nameLabel2.text = nametextbox.text
                    mustlabel2.text = musttexbox.text
                    thereLabel2.text = there.text
                    nametextbox.text = ""
                    musttexbox.text = ""
                    there.text = ""
                }
                else
                {
                    if (nameLabel3.text == String(""))
                    {
                        nameLabel3.text = nametextbox.text
                        mustLabel3.text = musttexbox.text
                        thereLabel3.text = there.text
                        nametextbox.text = ""
                        musttexbox.text = ""
                        there.text = ""
                    }
                    else
                    {
                        if (nameLabel4.text == String(""))
                        {
                            nameLabel4.text = nametextbox.text
                            mustLabel4.text = musttexbox.text
                            thereLabel4.text = there.text
                            nametextbox.text = ""
                            musttexbox.text = ""
                            there.text = ""
                        }
                        else
                        {
                            if(nameLabel5.text == String(""))
                            {
                                nameLabel5.text = nametextbox.text
                                mustLabel5.text = musttexbox.text
                                thereLabel5.text = there.text
                                nametextbox.text = ""
                                musttexbox.text = ""
                                there.text = ""
                            }
                            else
                            {
                                if (nameLabel6.text == String(""))
                                {
                                    nameLabel6.text = nametextbox.text
                                    mustLabel6.text = musttexbox.text
                                    thereLabel6.text = there.text
                                    nametextbox.text = ""
                                    musttexbox.text = ""
                                    there.text = ""
                                }
                                else
                                {
                                   if (nameLabel7.text == String(""))
                                   {
                                    nameLabel7.text = nametextbox.text
                                    mustLabel7.text = musttexbox.text
                                    thereLabel7.text = there.text
                                    nametextbox.text = ""
                                    musttexbox.text = ""
                                    there.text = ""
                                   }
                                    else
                                    {
                                        nameLabel8.text = nametextbox.text
                                        mustLabel8.text = musttexbox.text
                                        thereLabel8.text =  there.text
                                        nametextbox.text = ""
                                        musttexbox.text = ""
                                        there.text = ""
                                    }
                                }
                        }
                        }
                        
                    }
                    
                }
                
            }

        }
}
}
