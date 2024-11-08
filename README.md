# DotPattern

`DotPattern` is a Swift Package designed for SwiftUI applications, allowing you to add customizable dot patterns as backgrounds. This package is ideal for developers looking to maintain a consistent design language with dotted backgrounds across buttons, views, or other UI components.

## Example Usage of `DotPattern`

Here’s an example of how to use `DotPattern` in your SwiftUI views:
Below are some sample implementations of `DotPattern` with different configurations:

<div style="display: flex; align-items: center;">
  <img src="https://github.com/user-attachments/assets/40afe169-d0f1-4c4c-899e-a87c6e8927c5" width="350"/>
  <img src="https://github.com/user-attachments/assets/724986a9-9c0d-4bae-985c-f5b2dbc4dc40" width="200" style="margin-left: 20px;"/>
</div>

```swift
private func dotBackground(dotColor: Color, backgroundColor: Color, dotSize: CGFloat, spacing: CGFloat, opacity: Double, cornerRadius: CGFloat) -> some View {
        DotPattern(dotColor: dotColor, backgroundColor: backgroundColor, dotSize: dotSize, spacing: spacing, opacity: opacity)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
```
```swift
 // MARK: Dot Pattern Button
            Button(action: {
                print("Button pressed")
            }) {
                Text("Dot Pattern Button")
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        dotBackground(dotColor: .white, backgroundColor: .red.opacity(0.8), dotSize: 3, spacing: 3, opacity: 0.2, cornerRadius: 12)
              )
            }
// MARK: Dot Pattern Button
```
```swift
 // MARK: Card with Dot Pattern Overlay
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .frame(height: 150)
                .overlay(
                    dotBackground(dotColor: .gray, backgroundColor: .clear, dotSize: 4, spacing: 6, opacity: 0.1, cornerRadius: 15)
                )
                .shadow(radius: 5)
                .padding()
                .overlay(Text("Card with Dot Pattern").foregroundColor(.blue))
// MARK: Card with Dot Pattern Overlay
```
## Core Functionalities

- **Dot Color**: Customize the color of the dots.
- **Background Color**: Set the background color behind the dots.
- **Dot Size**: Adjust the size of the dots.
- **Spacing**: Control the spacing between dots.
- **Opacity**: Adjust the opacity of the dots for subtle or more prominent patterns.

## Requirements

- **iOS**: 17.0 or newer
- **Swift**: 5.0 or newer
- **SwiftUI**

## Installation

### Swift Package Manager

You can add **DotPattern** to your project using **Swift Package Manager** or by directly copying the code into your project.

### 1. Using Swift Package Manager:
1. In Xcode, go to **File > Add Packages**.
2. Enter the repository URL: `[https://github.com/imacapella/DotPattern]`.
3. Select **Add Package**.

### 2. Directly Adding the Code:
If you prefer to add **DotPattern** directly to your project, you can simply copy the code from the repository and include it in your project files.

1. Copy the **DotPattern.swift** file.
2. Paste it into your project folder in Xcode.




