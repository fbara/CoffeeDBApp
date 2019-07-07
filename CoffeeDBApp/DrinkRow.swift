//
//  DrinkRow.swift
//  CoffeeDBApp
//
//  Created by Frank Bara on 7/7/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI

struct DrinkRow : View {
    
    var categoryName: String
    var drinks: [Drink]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(self.categoryName)
            .font(.title)
            
            ScrollView(showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(self.drinks.identified(by: \.name)) { drink in
                        DrinkItem(drink: drink)
                            .frame(width: 300)
                            .padding(.trailing, 30)
                    }
                }
            }
        }
        
        
        
    }
}

#if DEBUG
struct DrinkRow_Previews : PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT DRINKS", drinks: drinkData)
    }
}
#endif
