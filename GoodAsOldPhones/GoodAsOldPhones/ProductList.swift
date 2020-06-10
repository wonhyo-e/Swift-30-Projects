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
        List(productData) {
            ProductRow(product: $0)
        }
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList()
    }
}
