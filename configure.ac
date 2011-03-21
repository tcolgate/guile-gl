# -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

#AC_PREREQ(2.63)
AC_INIT([guile-gl],[0.1],[tcolgate@gmail.com])

# Checks for programs.
AC_PROG_CC
AC_PROG_LIBTOOL
AC_PROG_SWIG
AM_INIT_AUTOMAKE
PKG_CHECK_MODULES(FFI,libffi)
AC_SUBST(FFI_CFLAGS)
AC_SUBST(FFI_LIBS)
AC_CONFIG_HEADER(config.h)
AC_CONFIG_MACRO_DIR([m4])

GUILE_PROGS
GUILE_FLAGS
GUILE_PREFIX=`$GUILE_CONFIG info prefix`
AC_SUBST(GUILE_PREFIX)

if $GUILE_TOOLS | grep -q compile; then
   GUILE_COMPILE="$GUILE_TOOLS compile"
   HAVE_GUILE_COMPILE=1
else
   GUILE_COMPILE=""
   HAVE_GUILE_COMPILE=0
fi

AC_SUBST(GUILE_COMPILE)
AM_CONDITIONAL(HAVE_GUILE_COMPILE, test "$HAVE_GUILE_COMPILE" = 1)

GUILE_SITE_DIR

# Checks for libraries.
# FIXME: Replace `main' with a function in `-lGL':
AC_CHECK_LIB([GL], [glLoadIdentity])
# FIXME: Replace `main' with a function in `-lGLU':
AC_CHECK_LIB([GLU], [gluCylinder])
# FIXME: Replace `main' with a function in `-lglut':
AC_CHECK_LIB([glut], [glutInit])

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([build-environ], [chmod +x build-environ])
AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([src/Makefile])
AC_OUTPUT

