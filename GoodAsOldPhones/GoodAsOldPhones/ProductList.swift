//
//  ProductList.swift
//  GoodAsOldPhones
//
//  Created by Woonohyo on 2020/06/10.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

struct ProductList: View {
    var body: some View {
        NavigationView {
            List(productData) {
                
                ProductRow(product: $0)
                
            }
        }.navigationBarTitle("Products")
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList()
    }
}
