lib_LTLIBRARIES=libguile_opengl_gl.la libguile_opengl_glu.la libguile_opengl_glut.la

GUILE_CFLAGS  = @GUILE_CFLAGS@
GUILE_LDFLAGS = @GUILE_LDFLAGS@

SWIG_FLAGS = -guile -Linkage module -package opengl -scm -proxy -emit-setters -I/usr/include

gl_wrap.c: gl.i help.i
	$(SWIG) $(SWIG_FLAGS) -module gl -o $@ $<

glu_wrap.c: glu.i help.i
	$(SWIG) $(SWIG_FLAGS) -module glu -o $@ $<

glut_wrap.c: glut.i help.i
	$(SWIG) $(SWIG_FLAGS) -module glut -o $@ $<

libguile_opengl_gl_la_CFLAGS=-I../lightning
libguile_opengl_gl_la_SOURCES=gl_wrap.c
libguile_opengl_gl_la_LDFLAGS=-module

libguile_opengl_glu_la_CFLAGS=-I../lightning
libguile_opengl_glu_la_SOURCES=glu_wrap.c
libguile_opengl_glu_la_LDFLAGS=-module

libguile_opengl_glut_la_CFLAGS=-I../lightning
libguile_opengl_glut_la_SOURCES=glut_wrap.c
libguile_opengl_glut_la_LDFLAGS=-module

EXTRA_DIST = opengl opengl/gl.scm opengl/glu.scm opengl/glut.scm
guilegldir =  @GUILE_SITE@/opengl
guilegl_DATA = opengl/gl.scm opengl/glu.scm opengl/glut.scm

