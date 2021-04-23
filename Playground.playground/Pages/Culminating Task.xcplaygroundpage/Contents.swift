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
canvas.highPerformance = false

//FUNCTION GLOSSARY

//teach the turtle to draw the shape (made of rhombi)
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
//get into position for rhombus #2
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
//get into position for rhombus #3
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
//get into postition for rhombus #4
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
//get into postiton for the turtle to move on to the next shape
    turtle.penUp()

    turtle.right(by: 67.5)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 112.5)

    turtle.forward(steps: Int(round(Double(2 * squareSize) * Double(1.0).squareRoot())))

    turtle.left(by: 112.5)

    turtle.penDown()
    
    turtle.forward(steps: Int(round(Double(1 * squareSize) * Double(2.0).squareRoot())))
}

//teach the turtle to draw a horizontal row of 15 of the shape
func shapeRow () {
    for _ in 1...15 {
        drawShape()
    }
}

//teach the turtle to move to the start of a new row (top left corner of the row below)
func newRow () {
    turtle.penUp()
    turtle.backward(steps: 81 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 12 * squareSize)
    turtle.right(by: 90)
}

//teach the turtle to draw rows dark blue shapes every 3rd row
func fillCanvasWithDarkBlue () {
    for _ in 1...7 {
        //darkest colour
        turtle.setPenColor(to: Color.init(hue: 220, saturation: 100, brightness: 60, alpha: 100))
        shapeRow()
        newRow()
    }
}

//teach the turtle to draw the rows medium blue shapes every 3rd row
func fillCanvasWithMediumBlue () {
    //move the turtle to starting position at bottom left of canvas above the dark blue row
    turtle.penUp()
    turtle.left(by: 90)
    turtle.backward(steps: 80 * squareSize)
    turtle.right(by: 90)
    //draw the shapes
    for _ in 1 ... 7 {
        turtle.setPenColor(to: Color.init(hue: 220, saturation: 100, brightness: 80, alpha: 100))
        shapeRow()
        newRow()
    }
}

//teach the turtle to draw the rows of light blue shapes every 3rd row
func fillCanvasWithLightBlue () {
    //move turtle to starting point at bottom of canvas
    turtle.penUp()
    turtle.left(by: 90)
    turtle.backward(steps: 80 * squareSize)
    turtle.right(by: 90)
    //draw the shapes
    for _ in 1 ... 6 {
        turtle.setPenColor(to: Color.init(hue: 220, saturation: 100, brightness: 100, alpha: 100))
        shapeRow()
        newRow()
    }
    
}

//teach the turtle to draw the dark, then medium, then light blue rows to completely fill the canvas
func fillCanvas () {
    fillCanvasWithDarkBlue()
    fillCanvasWithMediumBlue()
    fillCanvasWithLightBlue()
}

//BEGINNING OF CODE
//set square size
let squareSize = 5

 //fill the canvas with the shapes
fillCanvas()

//turning off high performance
canvas.highPerformance = false

//send code to the plotter
turtle.copySVGToClipboard()










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
