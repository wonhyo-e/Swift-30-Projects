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
        List {
            ProductRow(product: productData[0])
            ProductRow(product: productData[1])
            ProductRow(product: productData[2])
            ProductRow(product: productData[3])
        }
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList()
    }
}
