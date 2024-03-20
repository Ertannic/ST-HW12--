//
//  CompositionalModel.swift
//  ST-HW12- Саралаев Ержан
//
//  Created by Ertannic Saralay on 20.03.2024.
//

import Foundation


struct CompositionalModel: Hashable {
    var mainTitle: String?
    var description: String?
    var image: String
    var numberOfItem: Int?
}

extension CompositionalModel {
    static let modelsArray = [
        [CompositionalModel(mainTitle: "Мои альбомы",image: "photo"),
         
        ],
        [
            CompositionalModel(mainTitle: "Люди и места", image: "HumanAndLocations")
        ],
        [
                    CompositionalModel(mainTitle: "Title 3", image: "symbol1"),
                    CompositionalModel(mainTitle: "Title 4", image: "symbol2"),
                    CompositionalModel(mainTitle: "Title 5", image: "symbol3"),
                    CompositionalModel(mainTitle: "Title 6", image: "symbol4"),
                    CompositionalModel(mainTitle: "Title 7", image: "symbol5"),
                    CompositionalModel(mainTitle: "Title 3", image: "symbol1"),
                    CompositionalModel(mainTitle: "Title 3", image: "symbol1"),
                    CompositionalModel(mainTitle: "Title 3", image: "symbol1"),
                ],
                [
                    CompositionalModel(mainTitle: "Title 8", image: "symbol6"),
                    CompositionalModel(mainTitle: "Title 9", image: "symbol7"),
                    CompositionalModel(mainTitle: "Title 10", image: "symbol8"),
                    CompositionalModel(mainTitle: "Title 11", image: "symbol9"),
                ]
    ]
}
