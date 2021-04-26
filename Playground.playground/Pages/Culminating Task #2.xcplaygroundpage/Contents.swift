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

//teach the turtle to draw the single shape
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

//teach the turtle to draw a row left to right of 8 of the shape
func shapeRowEight () {
    for _ in 1...8 {
        drawShape()
    }
}

//teach the turtle to draw a row left to right of 9 of the shape
func shapeRowNine () {
    for _ in 1...9 {
        drawShape()
    }
}

//teach the turtle to move to the start of a new row
func newRow () {
    turtle.penUp()
    
    turtle.left(by: 180)
    
    turtle.forward(steps: Int(round(44.15 * Double(squareSize))))
    
    turtle.right(by: 90)
    
    turtle.forward(steps: Int(round(4.6 * Double(squareSize))))
    
    turtle.right(by: 90)
}

//Teach the turtle to fill the canvas by repeating shapeRowEight and shapeRowNine
func fillCanvas () {
    for _ in 1...5 {
        shapeRowEight()
        newRow()
        shapeRowNine()
        newRow()
    }
}

//BEGINNING OF CODE

//setting square size
let squareSize = 10

//filling the canvas with the shapes
fillCanvas()

