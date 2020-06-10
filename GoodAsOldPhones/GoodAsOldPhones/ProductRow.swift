//
//  ProductRow.swift
//  GoodAsOldPhones
//
//  Created by Woonohyo on 2020/06/10.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

struct ProductRow: View {
    var product: Product
    
    var body: some View {
        HStack {
            product.cellImage
            Text(product.name)
            Spacer()
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProductRow(product: productData[0])
            ProductRow(product: productData[1])
            ProductRow(product: productData[2])
            ProductRow(product: productData[3])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
