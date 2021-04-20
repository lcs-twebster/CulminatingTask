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


//FUNCTIONS GLOSSARY
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

//teach the turtle to draw the arrow
func drawArrow () {
    turtle.penDown()
    turtle.forward(steps: 5 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * squareSize)
    turtle.left(by: 135)
    turtle.forward(steps: Int(round(2.0 * Double(2).squareRoot() * Double(squareSize))))
    turtle.left(by: 90)
    turtle.forward(steps: Int(round(2.0 * Double(2).squareRoot() * Double(squareSize))))
    turtle.left(by: 135)
    turtle.forward(steps: 1 * squareSize)
    turtle.right(by: 90)
    turtle.forward(steps: 5 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 2 * squareSize)
    turtle.left(by: 90)
}

//teach the turtle to draw a row of 7 arrows
func arrowRow () {
    for _ in 1...7 {
        drawArrow()
        turtle.penUp()
        turtle.forward(steps: 7 * squareSize)
    }
}

//teach the turtle to move to the start of a new row of arrows
func newRow () {
    turtle.penUp()
    turtle.backward(steps: 49 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 3 * squareSize)
    turtle.right(by: 90)
}

//teach the turtle to draw 15 rows of arrows to fill the whole canvas
func fillCanvasWithArrows () {
    arrowRow()
    for _ in 1...14 {
        newRow()
        arrowRow()
    }
}


//BEGINNING OF CODE
//move turtle to middle of canvas
//turtleToMiddleOfCanvas()

//setting the square size
let squareSize = 8

//changing line colour to green and width thicker
canvas.lineColor = Color.init(hue: 125, saturation: 100, brightness: 100, alpha: 100)

canvas.defaultLineWidth = 4


//fill the canvas with arrows
fillCanvasWithArrows()

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
