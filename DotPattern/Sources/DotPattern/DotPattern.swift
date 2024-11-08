// The Swift Programming Language
// https://docs.swift.org/swift-book
// DotPattern.swift

import SwiftUI

public struct DotPattern: View {
    public var dotColor: Color
    public var backgroundColor: Color
    public var dotSize: CGFloat
    public var spacing: CGFloat
    public var opacity: Double

    public init(dotColor: Color = .black, backgroundColor: Color = .clear, dotSize: CGFloat = 4, spacing: CGFloat = 12, opacity: Double = 0.5) {
        self.dotColor = dotColor
        self.backgroundColor = backgroundColor
        self.dotSize = dotSize
        self.spacing = spacing
        self.opacity = opacity
    }

    public var body: some View {
        GeometryReader { geometry in
            let columns = Int(geometry.size.width / (dotSize + spacing)) + 2
            let rows = Int(geometry.size.height / (dotSize + spacing)) + 2
            
            ZStack {
                backgroundColor
                ForEach(0..<rows, id: \.self) { row in
                    ForEach(0..<columns, id: \.self) { column in
                        Circle()
                            .fill(dotColor)
                            .frame(width: dotSize, height: dotSize)
                            .opacity(opacity)
                            .position(
                                x: CGFloat(column) * (dotSize + spacing),
                                y: CGFloat(row) * (dotSize + spacing)
                            )
                    }
                }
            }
            .clipped()
        }
    }
}
