lib_LTLIBRARIES=libguile_opengl_gl.la libguile_opengl_glu.la libguile_opengl_glut.la

BUILT_SOURCES=$(builddir)/gl_wrap.c $(builddir)/glu_wrap.c $(builddir)/glut_wrap.c
SWIGSOURCES=gl.i glu.i glut.i help.i

SWIG_FLAGS = -guile2 -Linkage module -package opengl -proxy -emit-setters -I/usr/include

gl_wrap.c: gl.i help.i
	$(SWIG) $(SWIG_FLAGS) -module gl -o $@ $<

glu_wrap.c: glu.i help.i
	$(SWIG) $(SWIG_FLAGS) -module glu -o $@ $<

glut_wrap.c: glut.i help.i
	$(SWIG) $(SWIG_FLAGS) -module glut -o $@ $<

libguile_opengl_gl_la_CFLAGS=@FFI_CFLAGS@ @GUILE_CFLAGS@
nodist_libguile_opengl_gl_la_SOURCES=gl_wrap.c
libguile_opengl_gl_la_LDFLAGS=-module @FFI_LIBS@ @GUILE_LDFLAGS@

libguile_opengl_glu_la_CFLAGS=@FFI_CFLAGS@ @GUILE_CFLAGS@
nodist_libguile_opengl_glu_la_SOURCES=glu_wrap.c
libguile_opengl_glu_la_LDFLAGS=-module @FFI_LIBS@ @GUILE_LDFLAGS@

libguile_opengl_glut_la_CFLAGS=@FFI_CFLAGS@ @GUILE_CFLAGS@
nodist_libguile_opengl_glut_la_SOURCES=glut_wrap.c
libguile_opengl_glut_la_LDFLAGS=-module @FFI_LIBS@ @GUILE_LDFLAGS@

SCHEMESOURCES=$(builddir)/opengl/gl.scm\
              $(builddir)/opengl/glu.scm\
              $(builddir)/opengl/glut.scm


if HAVE_GUILE_COMPILE
GOBJECTS = $(SCHEMESOURCES:%.scm=%.go)
else
GOBJECTS =
endif

CLEANFILES = $(GOBJECTS) $(BUILT_SOURCES)

SUFFIXES = .scm .go
.scm.go:
	$(top_srcdir)/build-environ $(GUILE_COMPILE) -o "$@" "$<"

guilesite = @GUILE_SITE@
guileprefix = @GUILE_PREFIX@
guilesitesuffix = `echo $(guilesite) | sed -e 's!^$(guileprefix)!!'`
guilegldir =  $(exec_prefix)/$(guilesitesuffix)/opengl
guilegl_DATA = $(SCHEMESOURCES) $(GOBJECTS)

EXTRA_DIST = $(SWIGSOURCES) $(SCHEMESOURCES) 

