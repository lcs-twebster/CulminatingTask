//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 400
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// CULMINATING TASK

//turning on high performance
canvas.highPerformance = true

//FUNCTION GLOSSARY

//teach the turtle to move from the origin to the centre of the canvas
func turtleToMiddleOfCanvas() {
    
    //move turtle to middle of bottom axis
    turtle.penUp()
    turtle.forward(steps: canvas.width / 2)
    turtle.currentHeading()
    
    //move turtle to center of canvas
    turtle.left(by: 90)
    turtle.currentHeading()
    turtle.penUp()
    turtle.forward(steps: canvas.height / 2)
    
    //turn the turtle to the right
    turtle.right(by: 90)
    
}

//teach the turtle to draw the shape
func drawShape () {
    turtle.penDown()

    //rhombus #1
    turtle.forward(steps: 2 * squareSize)

    turtle.left(by: 112.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.left(by: 67.5)

    turtle.forward(steps: 2 * squareSize)

    turtle.left(by: 112.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.penUp()

    turtle.left(by: 67.5)

    turtle.forward(steps: 2 * squareSize)

    turtle.left(by: 112.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.left(by: 67.5)

    turtle.forward(steps: 2 * squareSize)

    //Rhombus #2
    turtle.penDown()

    turtle.right(by: 112.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.right(by: 67.5)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 112.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.penUp()

    turtle.right(by: 67.5)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 112.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.right(by: 67.5)

    turtle.forward(steps: 2 * squareSize)

    //Rhombus #3

    turtle.penDown()

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 67.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.right(by: 112.5)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 67.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.penUp()

    turtle.right(by: 112.5)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 67.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.right(by: 112.5)

    turtle.forward(steps: 2 * squareSize)

    turtle.left(by: 180)

    turtle.forward(steps: 2 * squareSize)

    //rhombus #4
    turtle.penDown()

    turtle.right(by: 112.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.right(by: 67.5)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 112.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.penUp()

    turtle.right(by: 67.5)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 112.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.left(by: 112.5)

    turtle.penDown()
    
    turtle.forward(steps: Int(round(Double(1 * squareSize) * Double(2.0).squareRoot())))
}

//teach the turtle to draw a row of 15 shapes
func shapeRow () {
    for _ in 1...15 {
        drawShape()
    }
}

//teach the turtle to move to the start of a new row
func newRow () {
    turtle.penUp()
    turtle.backward(steps: 81 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 4 * squareSize)
    turtle.right(by: 90)
}

//teach the turtle to fill the canvas with shapes and alternate colour rows
func fillCanvas () {
    for _ in 1...5 {
        //darkest colour
        turtle.setPenColor(to: Color.init(hue: 220, saturation: 100, brightness: 75, alpha: 100))
        shapeRow()
        newRow()
        //lighter colour
        turtle.setPenColor(to: Color.init(hue: 210, saturation: 100, brightness: 87, alpha: 100))
        shapeRow()
        newRow()
        //lightest colour
        turtle.setPenColor(to: Color.init(hue: 200, saturation: 100, brightness: 100, alpha: 100))
        shapeRow()
        newRow()
        //lighter colour
        turtle.setPenColor(to: Color.init(hue: 200, saturation: 100, brightness: 87, alpha: 100))
        shapeRow()
        newRow()
    }
}

//BEGINNING OF CODE
let squareSize = 5
 
fillCanvas()

turtle.drawSelf()

//turning off high performance
canvas.highPerformance = false












/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
