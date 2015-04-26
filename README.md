FP7-webpage NoteRad
This is a template for using your repo's README.md as your project web page. I recommend you copy and paste into your README file. Delete this line and the one above it, customize everything else. Make it look good!

Authors

Neel Tripathi
Muthuraman Lakshmanan
Ajay Kumar

Overview

Our end-product will be a text editing application that will provide the following functionality: saving, opening, and creating new text files, copyying/pasting text into the application, and word wrapping.

Screenshot

![Alt text](/relative/path/to/NoteRad_b4_save.jpg?raw=true "Before Save")
![Alt text](/relative/path/to/NoteRad_on_save.jpg?raw=true "On Save")
![Alt text](/relative/path/to/NoteRad_after_save.jpg?raw=true "After Save")

Concepts Demonstrated

Identify the OPL concepts demonstrated in your project. Be brief. A simple list and example is sufficient.

Data abstraction is used to provide access to the elements of the RSS feed.
The objects in the OpenGL world are represented with recursive data structures.
Symbolic language processing techniques are used in the parser.
External Technology and Libraries

Briefly describe the existing technology you utilized, and how you used it. Provide a link to that technology(ies).

Favorite Lines of Code

Mark (a team member)

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