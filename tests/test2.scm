
(use-modules (opengl gl))
(use-modules (opengl glu))
(use-modules (opengl glut))

(define argcp (newintv1 1))
(define argvp (newstrv1 "tester"))

(define myIdle 
  (lambda ()
    (display "My test")
    (newline)
    (glFlush)))

(define renderScene 
  (lambda ()
    (glClear (GL-COLOR-BUFFER-BIT))
    (glBegin (GL-TRIANGLES))
      (glVertex3f -0.5 -0.5 0.0)
      (glVertex3f 0.5 0.0 0.0)
      (glVertex3f 0.0 0.5 0.0)
    (glEnd)
    (glutWireTeapot 1.5)
    (glFlush)
    (glutSwapBuffers)))

(define reshapeFunc
  (lambda (x y)
  #t))

(define mymouseFunc
  (lambda (x y z b)
  #t))

(define mykeybFunc
  (lambda (k y z )
    (glRotatef 30 1 0 1) 
    (renderScene)))

(glutInit argcp argvp)

;(glutIdleFunc myIdle)

(glutInitDisplayMode (logior (GLUT-DOUBLE) (GLUT-DEPTH) (GLUT-RGBA) ))
(glutInitWindowPosition 100 100)
(glutInitWindowSize 320 320)
(glutCreateWindow "3D Tech- GLUT Tutorial")
(glutDisplayFunc renderScene)
(glutReshapeFunc reshapeFunc)
(glutInitWindowSize 160 160)
(glutKeyboardFunc mykeybFunc)
(glutMouseFunc mymouseFunc)

(glutCreateWindow "AnotherWindow")

;(gluPerspective 45.0 1.0 3.0 7.0)
(glTranslatef 0 0 -5.0)
(glutDisplayFunc renderScene)
(glutMouseFunc mymouseFunc)
(glutKeyboardFunc mykeybFunc)

(glutMainLoop)


