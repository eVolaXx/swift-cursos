//
//  Contador.swift
//  MyApp
//
//  Created by Personal on 12/10/2026.
//

import SwiftUI

struct ContadorView: View {
    @State private var contador = 0   // estado: si cambia, la vista se redibuja sola

    var body: some View {
        VStack(spacing: 20) {
            Text("Contador: \(contador)")
                .font(.largeTitle)

            Button("Sumar") {
                contador += 1     // no hay "actualizarUI()": SwiftUI lo hace
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContadorView()   // esto es lo que pinta el Canvas a la derecha
}
