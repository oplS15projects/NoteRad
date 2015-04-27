
Authors

Neel Tripathi

Muthuraman Lakshmanan

Ajay Kumar

Overview

Our end-product is a text editing application that will provide the following functionality: saving, opening, and creating new text files, copying/pasting text into the application, and word wrapping.

Screenshot

![Alt text](./NoteRad_b4_save.jpg?raw=true "Before Save")
![Alt text](./NoteRad_on_save.jpg?raw=true "On Save")
![Alt text](./NoteRad_after_save.jpg?raw=true "After Save")

Concepts Demonstrated

Data Abstraction - We used pre-existing library procedures in our design without knowing exactly what code was hidden under the hood. 
Object Oriented Programming - We constructed an object and used encapsulated member procedures and attributes in designing the application.


We utilized [The Racket Graphical Interface Toolkit](http://docs.racket-lang.org/gui/) to create a windowing toolbox and an editor toolbox. The window contained the frame in which the meat of the application exists. Inside the frame is an editor class which implements the functionality of handling textual input. 


Favorite Lines of Code

Neel

This expression opens a save dialog window. It demonstrates the concept of data abstraction, as the save-file procedure is a high-level abstraction designed to shield the user from low-level implementation details. 

(send editor save-file
                       (send editor get-filename) 'text)
                       
Muthuraman Lakshmanan

Appends menu items to menu to implement a standard set of font-manipulation operations, such as changing the font face or style. This expression shows the notion of working on broad ideas and not worrying about the nitty-gritty details. This is done by using the racket documentation to perform the nitty-gritty function implementation and using those nitty gritty functions to build more sophisticated applications.  
 
(append-editor-font-menu-items Font )

Ajay Kumar

This expression sets the text editor to wrap the text to fit in the size of the current window frame. It demonstrates the notion of data abstraction, when a library function supplied to the programmer hides the implementation details. 

(send editor auto-wrap #t)

How to Download and Run

[Release](https://github.com/oplS15projects/NoteRad/releases/tag/v1.3)

Run noterad.rkt and go to town with the coolest text editor you've ever seen. Its operation is self explanatory. 
