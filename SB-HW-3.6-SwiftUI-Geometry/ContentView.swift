//
//  ContentView.swift
//  SB-HW-3.6-SwiftUI-Geometry
//
//  Created by Sergey Nestroyniy on 07.11.2022.
//

import SwiftUI

struct ContentView: View {
    let height: CGFloat
    let width: CGFloat
    
    var body: some View {
        let size = min(height, width)
        
        VStack{
            Text("Geometry of Archery")
                .font(.largeTitle)
            
            Spacer()
            
            GeometryReader {_ in
                
                Circle()
                    .scale(1.5)
                    .foregroundColor(.blue)
                    .overlay(Circle()
                        .scale(1.52)
                        .stroke(.black, lineWidth: 0.02 * size)
                    )
                    .shadow(color: Color(white: 0.3), radius: 0.1 * size)
                

                
                Circle()
                    .scale(1)
                    .foregroundColor(.red)
                    .shadow(color: Color(white: 0.3), radius: 0.02 * size)

                
                
                Circle()
                    .scale(0.5)
                    .foregroundColor(.yellow)
                    .shadow(color: Color(white: 0.3), radius: 0.02 * size)

                
                
                Group {
                    Path { path in
                        path.addArc(center: CGPoint(x: 0, y: size), radius: 0.97 * size, startAngle: Angle(degrees: 269), endAngle: Angle(degrees: 1), clockwise: false)
                    }
                    .stroke(lineWidth: 0.1 * size)
                
                
                Path { path in
                    path.move(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: 0, y: size))
                    path.addLine(to: CGPoint(x: size, y: size))
                }
                .stroke(lineWidth: 0.02 * size)
                
                Path { path in
                    path.move(to: CGPoint(x: 0, y: size))
                    path.addLine(to: CGPoint(x: 0.95 * size, y: 0.05 * size))
                }
                .stroke(lineWidth: 0.04 * size)
                
                Path { path in
                    path.move(to: CGPoint(x: 0.02 * size, y: 0.9 * size))
                    path.addQuadCurve(to: CGPoint(x: 0.25 * size, y: 0.75 * size), control: CGPoint(x: 0.05 * size, y: 0.8 * size) )
                    path.addQuadCurve(to: CGPoint(x: 0.1 * size, y: 0.98 * size), control: CGPoint(x: 0.2 * size, y: 0.95 * size) )
                    path.addLine(to: CGPoint(x: 0.08 * size, y: 0.92 * size))
                }
                
                Image (systemName: "arrowtriangle.right.fill")
                    .resizable()
                    .scaleEffect(0.15)
                    .rotationEffect(Angle(degrees: -45))
                    .offset(x: 0.42 * size, y: -0.42 * size)
                }
                .shadow(color: Color(white: 0.2), radius: 0.05 * size, x: 2, y: 2)

                
            }
            .frame(width: size, height: size)
            .scaleEffect(0.6)
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(height: 100, width: 100)
    }
}
