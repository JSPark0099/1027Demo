//
//  ContentView.swift
//  1027DrawDemo
//
//  Created by 김요한 on 2022/10/27.
//


// 1.도형들 데모
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("Hello, Rectangle!")
//                .font(.largeTitle)
//            Rectangle()
//
//            Text("Hello, Circle!")
//                .font(.largeTitle)
//            Circle()
//                .fill(Color.purple)
//                .frame(width: 200, height: 200)
//
//            Text("Hello, Capsule")
//                .font(.largeTitle)
//            Capsule()
//                .stroke(lineWidth: 10)
//                .foregroundColor(.blue)
//                .frame(width: 200, height: 100)
//
//            //애플이 지향하는 것, 모서리가 둥근 사각형!
//            Text("Hello, RoundRectangle")
//            RoundedRectangle(cornerRadius: CGFloat(20))
//                .stroke(style: StrokeStyle(lineWidth: CGFloat(5), dash: [CGFloat(10), CGFloat(5)]))
//
//            Text("Hello Ellipse")
//            Ellipse()
//                .stroke(style: StrokeStyle(lineWidth: 20, dash: [CGFloat(10), CGFloat(5), CGFloat(2)], dashPhase: CGFloat(10)))
//                .foregroundColor(.blue)
//                .frame(width: 250, height: 150)
//
//        }
//        .padding()
//    }
//}


//2.타원형
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Ellipse()
//                .fill(Color.red)
//                .overlay(
//                    Ellipse()
//                        .stroke(Color.blue, lineWidth: 10)
//                )
//                .frame(width: 250, height: 150)
//        }
//        .padding()
//    }
//}


//3. 삼각형
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Path { path in
                path.move(to: CGPoint(x: 10, y: 0))
                path.addLine(to: CGPoint(x: 10, y: 350))
                path.addLine(to: CGPoint(x: 300, y: 300))
                path.closeSubpath()
            }
            .fill(Color.green)
            
            MyShape()
                .fill(Color.purple)
        }
        .padding()
    }
}

struct MyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // 도형을 정의하기 코드는 여기에 추가...
        path.move(to: CGPoint(x: 10, y: 0))
        path.addLine(to: CGPoint(x: 10, y: 350))
        path.addLine(to: CGPoint(x: 300, y: 300))
        path.closeSubpath()
        
        return path
    }
}



//3. 이건 어려워요. 참고만 하세요. 책을보며...
//import SwiftUI
//
//struct ContentView: View {
//
//    let colors = Gradient(colors: [Color.red, Color.yellow,
//    Color.green, Color.blue, Color.purple])
//
//    var body: some View {
//
//        MyShape()
//            .fill(RadialGradient(gradient: colors,
//                                   center: .center,
//                              startRadius: CGFloat(0),
//                                endRadius: CGFloat(300)))
//             .background(LinearGradient(gradient: Gradient(colors:
//                                       [Color.black, Color.white]),
//                               startPoint: .topLeading,
//                                 endPoint: .bottomTrailing))
//             .frame(width: 360, height: 350)
//    }
//}

//
//struct MyShape: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//
//        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
//        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY),
//            control: CGPoint(x: rect.midX, y: rect.midY))
//        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
//        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
//        path.closeSubpath()
//        return path
//    }
//}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
