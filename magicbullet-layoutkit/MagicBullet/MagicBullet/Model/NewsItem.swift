//
//  NewsItem.swift
//  MagicBullet
//
//

import Foundation

class NewsItem: Hashable {
    var pid: Int
    var title: String
    var length: String
    var detail: String
    var image: String
    var hashValue: Int {
        return pid.hashValue
    }
    
    init(pid: Int, title: String, length: String, detail: String, image: String) {
        self.pid = pid
        self.title = title
        self.length = length
        self.detail = detail
        self.image = image
    }
    
    static func ==(lhs: NewsItem, rhs: NewsItem) -> Bool {
        return lhs.title == rhs.title
    }
}

extension NewsItem {
    
    static func loadNewsItems() -> [NewsItem: Any]? {
        if let path = Bundle.main.path(forResource: "Properties", ofType: "plist") {
            //If your plist contain root as Array
            if let array = NSArray(contentsOfFile: path) as? [NewsItem: Any] {
                return array
            }
            ////If your plist contain root as Dictionary
            // if let dic = NSDictionary(contentsOfFile: path) as? [String: Any] {
            
            // }
        }
        return nil
    }
    func fullShowName() -> String {
        return title + " : " + detail
    }
}
