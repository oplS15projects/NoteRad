FP7-webpage NoteRad
This is a template for using your repo's README.md as your project web page. I recommend you copy and paste into your README file. Delete this line and the one above it, customize everything else. Make it look good!

Authors

Neel Tripathi
Muthuraman Lakshmanan
Ajay Kumar

Overview

Our end-product is a text editing application that will provide the following functionality: saving, opening, and creating new text files, copyying/pasting text into the application, and word wrapping.

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


Each team member should identify a favorite line of code, expression, or procedure written by them, and explain what it does. Why is it your favorite? What OPL philosophy does it embody? Remember code looks something like this:

(map (lambda (x) (foldr compose functions)) data)
Lillian (another team member)

This expression reads in a regular expression and elegantly matches it against a pre-existing hashmap....

(let* ((expr (convert-to-regexp (read-line my-in-port)))
             (matches (flatten
                       (hash-map *words*
                                 (lambda (key value)
                                   (if (regexp-match expr key) key '()))))))
  matches)
Additional Remarks

Anything else you want to say in your report. Can rename or remove this section.

How to Download and Run
You may want to link to your latest release for easy downloading by people (such as Mark).

Include what file to run, what to do with that file, how to interact with the app when its running, etc.
