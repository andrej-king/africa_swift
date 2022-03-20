import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    
    @State private var randomCircle = Int.random(in: 12...16)
    
    // MARK: - FUNCTIONS
    
    // 1. RANDOM COORDINATE
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    // 2. RANDOM SIZE
    // 3. RANDOM SCALE
    // 4. RANDOM SPEED
    // 5. RANDOM DELAY
    
    // MARK: - BODY
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    
                    // This circle always will be in the center of any device
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: 256, height: 256, alignment: .center)
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                    )
                } //: LOOP
                
                Text("Width: \(Int(geometry.size.width)) Height: \(Int(geometry.size.height))")
            } //: ZSTACK
        } //: GEOMETRY
    }
}

// MARK: - PREVIEW

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
