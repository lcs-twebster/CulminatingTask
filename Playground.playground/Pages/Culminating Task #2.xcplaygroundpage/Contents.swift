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

// CULMINATING TASK #2

//FUNCTIONS GLOSSARY

//teach the turtle to draw a single shape
func drawShape () {
    //drawing the outer hexagon
    turtle.penDown()

    turtle.left(by: 90)

    turtle.forward(steps: 3 * squareSize)

    turtle.right(by: 60)

    turtle.forward(steps: 3 * squareSize)

    turtle.right(by: 60)

    turtle.forward(steps: 3 * squareSize)

    turtle.right(by: 60)

    turtle.forward(steps: 3 * squareSize)

    turtle.right(by: 60)

    turtle.forward(steps: 3 * squareSize)

    turtle.right(by: 60)

    turtle.forward(steps: 3 * squareSize)

    //getting in position to draw the inner hexagon
    turtle.penUp()

    turtle.right(by: 60)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 60)

    //drawing the inner hexagon
    turtle.penDown()

    turtle.forward(steps: 3 * squareSize)

    turtle.right(by: 60)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 60)

    turtle.forward(steps: 1 * squareSize)
                   
    turtle.right(by: 60)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 60)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 120)

    turtle.forward(steps: 2 * squareSize)

    turtle.right(by: 60)

    turtle.forward(steps: 2 * squareSize)

    //getting in position to exit the inner hexagon
    turtle.penUp()

    turtle.right(by: 180)

    turtle.forward(steps: 2 * squareSize)

    turtle.left(by: 60)

    turtle.forward(steps: 2 * squareSize)

    turtle.left(by: 60)

    //drawing the lines exiting the inner hexagon
    turtle.penDown()

    turtle.forward(steps: 1 * squareSize)

    turtle.left(by: 60)

    turtle.forward(steps: 2 * squareSize)

    turtle.left(by: 60)

    turtle.forward(steps: 3 * squareSize)

    //getting into position to repeat the shape
    turtle.penUp()

    turtle.right(by: 120)

    turtle.forward(steps: 1 * squareSize)

    turtle.left(by: 90)

}

//teach the turtle to draw a row left to right of 9 of the shape
func shapeRow () {
    for _ in 1...9 {
        drawShape()
    }
}

//teach the turtle to move to the start of a new centered row
func newRow () {
    turtle.penUp()
    
    turtle.left(by: 180)
    
    turtle.forward(steps: 47 * squareSize)
    
    turtle.right(by: 90)
    
    turtle.forward(steps: 9 * squareSize)
    
    turtle.right(by: 90)
}

//teach the turtle to move to the starting point of the offset rows
func offsetStart () {
    turtle.left(by: 90)
    turtle.backward(steps: 40 * squareSize)
    turtle.left(by: 90)
    turtle.forward(steps: 2 * squareSize)
    turtle.right(by: 180)
    
}

//teach the turtle to repeat shapeRow and newRow 5 times for the centered shapes
func centeredRowRepeat () {
    for _ in 1...5 {
        shapeRow()
        newRow()
    }
}

//teach the turtle to repeat shapeRow and newRow 5 times for the offset shapes
func offsetRowRepeat () {
    
}

//BEGINNING OF CODE

//setting square size
let squareSize = 10

centeredRowRepeat()

turtle.drawSelf()

//newRow replace 97 with 96.5 and replace 9 with 8.5
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
