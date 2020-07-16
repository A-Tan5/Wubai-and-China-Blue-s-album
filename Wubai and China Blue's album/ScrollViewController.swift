//
//  ScrollViewController.swift
//  Wubai and China Blue's album
//
//  Created by tantsunsin on 2020/7/15.
//  Copyright © 2020 tantsunsin. All rights reserved.
//

import UIKit

class Album{
    var name: String
    var year: Int
    init(name: String, year: Int){
        self.name = name
        self.year = year
    }
    
    convenience init(){
        self.init(name:"", year:0)
    }
}


class ScrollViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var YearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    var albumsofWubai:[Album] = [
        Album(name:"愛上別人是快樂的事", year:1992),
        Album(name:"浪人情歌", year:1994),
        Album(name:"愛情的盡頭", year:1996),
        Album(name:"樹枝孤鳥", year:1998),
        Album(name:"白鴿", year:1999),
        Album(name:"夢的河流", year:2001),
        Album(name:"淚橋", year:2003),
        Album(name:"雙面人", year:2005),
        Album(name:"純真年代", year:2006),
        Album(name:"太空彈", year:2008),
        Album(name:"詩情搖滾", year:2009),
        Album(name:"單程車票", year:2011),
        Album(name:"無盡閃亮的哀愁", year:2013),
        Album(name:"釘子花", year:2016),
        Album(name:"讓水倒流", year:2019),
    ]

    func scrollViewDidScroll(_ scrollView: UIScrollView){
        let page = ScrollView.contentOffset.x / ScrollView.frame.size.width
        let PageNumber = Int(page)
        
        self.NameLabel.text = albumsofWubai[PageNumber].name
        self.YearLabel.text = String(albumsofWubai[PageNumber].year)
        

    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
