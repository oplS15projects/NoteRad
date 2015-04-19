#lang racket

(require racket/gui)

; Make a frame by instantiating the frame% class
(define frame (new frame% [label "NoteRad"]))
 
; Make a static text message in the frame
(define msg (new message% [parent frame]
                          [label "No events so far..."]))
 
; Make a button in the frame
(new button% [parent frame]
             [label "Click Me"]
             ; Callback procedure for a button click:
             [callback (lambda (button event)
                         (send msg set-label "Button click"))])
 
; Show the frame by calling its show method
(send frame show #t)

; Derive a new canvas (a drawing window) class to handle events
(define my-canvas%
  (class canvas% ; The base class is canvas%
    ; Define overriding method to handle mouse events
    (define/override (on-event event)
      (send msg set-label "Canvas mouse"))
    ; Define overriding method to handle keyboard events
    (define/override (on-char event)
      (send msg set-label "Canvas keyboard"))
    ; Call the superclass init, passing on all init args
    (super-new)))
 
; Make a canvas that handles eve

(define menu-bar (new menu-bar%	[parent frame]))

(send menu-bar enable #t)

(define c (new editor-canvas% [parent frame]))
(define t (new text%))
(send c set-editor t) 
(define File (new menu% [label "File"] [parent menu-bar]))
(define New (new menu% [label "New"] [parent File]))
(define Open (new menu% [label "Open"] [parent File]))
(define Save (new menu% [label "Save"] [parent File]))
(define SaveAs (new menu% [label "Save As..."] [parent File]))
(define Exit (new menu% [label "Exit"] [parent File]))
(define Edit (new menu% [label "Edit"] [parent menu-bar]))
(define Font (new menu% [label "Font"] [parent menu-bar]))
(define Help (new menu% [label "Help"] [parent menu-bar]))
(define About (new menu% [label "About NoteRad"] [parent Help]))
(append-editor-operation-menu-items Edit #t)
(append-editor-font-menu-items Font )
