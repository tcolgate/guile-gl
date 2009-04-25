(use-modules (opengl gl))
(use-modules (opengl glu))
(use-modules (opengl glut))

(use-modules (ice-9 pretty-print))

(define argcp (newintv1 1))
(define argvp (newstrv1 "tester"))

(define Pi 3.14159265358979)

(define T0 0)
(define Frames 0)
(define autoexit 0)

(define view_rotx 20.0)
(define view_roty 30.0)
(define view_rotz 0.0)
(define angle 0.0)

(define gear1 1)
(define gear2 2)
(define gear3 3)

(define gear
  (lambda (inner_radius outer_radius width teeth tooth_depth)

    (let ((r0 inner_radius)
	  (r1 (- outer_radius (/ tooth_depth 2.0))) 
	  (r2 (+ outer_radius (/ tooth_depth 2.0))))

      (define (per-tooth n m func)
        (cond ((> n m)
                 #f)
              (else
                (func n)
                (per-tooth (+ n 1) m func))))

      (glShadeModel (GL-FLAT))
      (glNormal3f 0.0 0.0 1.0)
      (glRotatef view_rotx 1.0 0.0 0.0)

      (glBegin (GL-QUAD-STRIP))
      (per-tooth 0 teeth 
        (lambda (x)
          (let ((angle (* x (* 2.0 (/ Pi teeth))))
                (da (* 2.0 (/ Pi (/ teeth 4.0)))))
            (glVertex3f (* r0 (cos angle)) (* r0 (sin angle)) (* width 0.5)) 
            (glVertex3f (* r1 (cos angle)) (* r1 (sin angle)) (* width 0.5)) 
            (cond ((< x teeth)
                     (glVertex3f (* r0 (cos angle)) (* r0 (sin angle)) (* width 0.5)) 
                     (glVertex3f (* r1 (cos (+ angle (* 3.0 da)))) (* r1 (sin (+ angle (* 3.0 da)))) (* width 0.5))) 
                  (else 
                     #f)))))
      (glEnd)

;      (glBegin (GL-QUADS))
;      (per-tooth 0 teeth 
;        (lambda (x)
;          (let ((angle (* x (* 2.0 (/ Pi teeth))))
;                (da (* 2.0 (/ Pi (/ teeth 4.0)))))
;            (glVertex3f (* r1 (cos angle)) (* r1 (sin angle)) (* width 0.5))
;            (glVertex3f (* r2 (cos (+ angle da))) (* r2 (sin (+ angle da))) (* width 0.5))
;            (glVertex3f (* r2 (cos (+ angle (* 2.0 da)))) (* r2 (sin (+ angle (* 2.0 da)))) (* width 0.5))
;            (glVertex3f (* r1 (cos (+ angle (* 3.0 da)))) (* r1 (sin (+ angle (* 3.0 da)))) (* width 0.5)))))
;      (glEnd)

;      (glNormal3f 0.0 0.0 -1.0)
;
;      (glBegin (GL-QUAD-STRIP))
;      (per-tooth 0 teeth 
;        (lambda (x)
;          (let ((angle (* x (* 2.0 (/ Pi teeth))))
;                (da (* 2.0 (/ Pi (/ teeth 4.0)))))
;            (glVertex3f (* r1 (cos angle)) (* r1 (sin angle)) (* width -0.5)) 
;            (glVertex3f (* r0 (cos angle)) (* r0 (sin angle)) (* width -0.5)) 
;            (cond ((< x teeth)
;                     (glVertex3f (* r1 (cos (+ angle (* 3.0 da)))) (* r1 (sin (+ angle (* 3.0 da)))) (* width -0.5))) 
;                     (glVertex3f (* r0 (cos angle)) (* r0 (sin angle)) (* width -0.5)) 
;                  (else 
;                     #f)))))
;      (glEnd)
;
;      (glBegin (GL-QUADS))
;      (per-tooth 0 teeth 
;        (lambda (x)
;          (let ((angle (* x (* 2.0 (/ Pi teeth))))
;                (da (* 2.0 (/ Pi (/ teeth 4.0)))))
;            (glVertex3f (* r1 (cos (+ angle (* 3.0 da)))) (* r1 (sin (+ angle (* 3.0 da)))) (* width -0.5))
;            (glVertex3f (* r2 (cos (+ angle (* 2.0 da)))) (* r2 (sin (+ angle (* 2.0 da)))) (* width -0.5))
;            (glVertex3f (* r2 (cos (+ angle da))) (* r2 (sin (+ angle da))) (* width 0.5))
;            (glVertex3f (* r1 (cos angle)) (* r1 (sin angle)) (* width 0.5)))))
;      (glEnd)
;
;      (glBegin (GL-QUAD-STRIP))
;      (per-tooth 0 teeth 
;        (lambda (x)
;          (let ((angle (* x (* 2.0 (/ Pi teeth))))
;                (da (* 2.0 (/ Pi (/ teeth 4.0)))))
;            (glVertex3f (* r1 (cos angle)) (* r1 (sin angle)) (* width 0.5))
;            (glVertex3f (* r1 (cos angle)) (* r1 (sin angle)) (* width -0.5))
;            (let* ((u  (- (* r2 (cos (+ angle da))) (* r1 (cos angle))))
;                   (v  (- (* r2 (sin (+ angle da))) (* r1 (sin angle))))
;                   (len  (sqrt (+ (* u u) (* v v)))))
;              (let ((u (/ u len))
;                    (v (/ v len)))
;                (glNormal3f v (* -1 u)  0.0)
;                (glVertex3f (* r2 (cos (+ angle da))) (* r2 (sin (+ angle da))) (* width 0.5))
;                (glVertex3f (* r2 (cos (+ angle da))) (* r2 (sin (+ angle da))) (* width -0.5))
;                (glNormal3f (cos angle) (sin angle) 0.0)
;                (glVertex3f (* r2 (cos (+ angle ( * 2 da)))) (* r2 (sin (+ angle (* 2 da)))) (* width 0.5))
;                (glVertex3f (* r2 (cos (+ angle ( * 2 da)))) (* r2 (sin (+ angle (+ 2 da)))) (* width -0.5))
;                 (let ((u (- (* r1 (cos (+ angle (* 3 da)))) (* r2 (cos (+ angle (* 2 da))))))
;;                       (v (- (* r1 (sin (+ angle (* 3 da)))) (* r2 (sin (+ angle (* 2 da)))))))
;                  (glNormal3f v (* -1 u) 0.0)
;                  (glVertex3f (* r1 (cos (+ angle ( * 3 da)))) (* r1 (sin (+ angle (* 3 da)))) (* width 0.5))
;                  (glVertex3f (* r1 (cos (+ angle ( * 3 da)))) (* r1 (sin (+ angle (* 3 da)))) (* width -0.5))
;                  (glNormal3f (cos angle) (sin angle) 0.0)))))))
;      (glVertex3f (* r1 (cos 0)) (* r1 (sin 0)) (* width 0.5))
;      (glVertex3f (* r1 (cos 0)) (* r1 (sin 0)) (* width -0.5))
;      (glEnd)
;
      (glShadeModel (GL-SMOOTH))

      (glBegin (GL-QUAD-STRIP))
      (per-tooth 0 teeth 
        (lambda (x)
          (let ((angle (* x (* 2.0 (/ Pi teeth)))))
            (glNormal3f (* -1 (cos angle)) (* -1 (sin angle)) 0.0)
            (glVertex3f (* r0 (cos angle)) (* r0 (sin angle)) (* width -0.5))
            (glVertex3f (* r0 (cos angle)) (* r0 (sin angle)) (* width  0.5)))))
      (glEnd))))

(define draw 
  (lambda ()
    (glClear (logior (GL-COLOR-BUFFER-BIT)(GL-DEPTH-BUFFER-BIT)))

    (glPushMatrix)

      (glRotatef view_rotx 1.0 0.0 0.0)
      (glRotatef view_roty 0.0 1.0 0.0)
      (glRotatef view_rotz 0.0 0.0 1.0)

      (glPushMatrix)
	(glTranslatef  -3.0 -2.0 0.0)
        (glRotatef angle 0.0 0.0 1.0)
        (glCallList gear1)
      (glPopMatrix)

      (glPushMatrix)
	(glTranslatef  3.1 -2.0 0.0)
        (glRotatef (- (* -2.0 angle) 9.0)  0.0 0.0 1.0)
        (glCallList gear2)
      (glPopMatrix)

      (glPushMatrix)
	(glTranslatef  -3.1 4.2 0.0)
        (glRotatef (- (* -2.0 angle) 25.0)  0.0 0.0 1.0)
        (glCallList gear3)
      (glPopMatrix)

    (glPopMatrix)
    (glutSwapBuffers)))

(define myidle
  (lambda ()
    (glutPostRedisplay)))

(define key
  (lambda (k y z )
    (display "Keyfunc called with ")
    (display k)
    (display " ")
    (display y)
    (display " ")
    (display z)
    (newline)))

(define special
  (lambda (x y z )
    (display "Special called with ")
    (display x)
    (display " ")
    (display y)
    (display " ")
    (display z)
    (newline)))

(define reshape
  (lambda (x y)
    (display "Reshape called with ")
    (display x)
    (display " ")
    (display y)
    (newline)))

(define init
  (lambda (argcp argvp)
    (define pos (newfv '(5.0 5.0 10.0 0.01)))
    (define red (newfv '(0.8 0.1 0.0 1.0)))
    (define green (newfv '(0.0 0.8 0.2 1.0)))
    (define blue (newfv '(0.2 0.2 1.0 1.0)))

    (glLightfv (GL-LIGHT0) (GL-POSITION) pos) 
    (glEnable (GL-CULL-FACE))
    (glEnable (GL-LIGHTING))
    (glEnable (GL-LIGHT0))
    (glEnable (GL-DEPTH-TEST))

    (set! gear1 (glGenLists 1))
    (glNewList gear1 (GL-COMPILE))
    (glMaterialfv (GL-FRONT) (GL-AMBIENT-AND-DIFFUSE) red) 
    (gear 1.0 4.0 1.0 20.0 0.7)
    (glEndList)

    (set! gear2 (glGenLists 1))
    (glNewList gear2 (GL-COMPILE))
    (glMaterialfv (GL-FRONT) (GL-AMBIENT-AND-DIFFUSE) green) 
    (gear 0.5 2.0 2.0 10.0 0.7)
    (glEndList)

    (set! gear3 (glGenLists 1))
    (glNewList gear3 (GL-COMPILE))
    (glMaterialfv (GL-FRONT) (GL-AMBIENT-AND-DIFFUSE) blue) 
    (gear 1.3 2.0 0.5 10.0 0.7)
    (glEndList)

    (glEnable (GL-NORMALIZE))))

(define visible 
  (lambda (vis)
    (cond 
      (not (null? vis) (glutIdleFunc myidle))
      (else (glutIdleFunc myidle)))))

(glutInit argcp argvp)

(glutInitDisplayMode (logior (GLUT-DOUBLE) (GLUT-DEPTH) (GLUT-RGB) ))
(glutInitWindowPosition 0 0)
(glutInitWindowSize 300 300)
(glutCreateWindow "Gears")

(init argcp argvp) 

(glutDisplayFunc draw)
(glutReshapeFunc reshape)
(glutKeyboardFunc key)
(glutSpecialFunc special)
(glutVisibilityFunc visible)
(glutIdleFunc myidle)

(glutMainLoop)



