;;; -*- buffer-read-only: t -*- vi: set ro: */
;;; Automatically generated by SWIG; do not edit.

(define-module (opengl glu))
 (load-extension "libguile_opengl_glu.so" "scm_init_opengl_glu_module")

(use-modules (oop goops) (Swig common))
(use-modules ((opengl glu-primitive) :renamer (symbol-prefix-proc 'primitive:)))
(define GLU-EXT-object-space-tess primitive:GLU-EXT-object-space-tess)
(define GLU-EXT-nurbs-tessellator primitive:GLU-EXT-nurbs-tessellator)
(define GLU-FALSE primitive:GLU-FALSE)
(define GLU-TRUE primitive:GLU-TRUE)
(define GLU-VERSION-1-1 primitive:GLU-VERSION-1-1)
(define GLU-VERSION-1-2 primitive:GLU-VERSION-1-2)
(define GLU-VERSION-1-3 primitive:GLU-VERSION-1-3)
(define GLU-VERSION primitive:GLU-VERSION)
(define GLU-EXTENSIONS primitive:GLU-EXTENSIONS)
(define GLU-INVALID-ENUM primitive:GLU-INVALID-ENUM)
(define GLU-INVALID-VALUE primitive:GLU-INVALID-VALUE)
(define GLU-OUT-OF-MEMORY primitive:GLU-OUT-OF-MEMORY)
(define GLU-INCOMPATIBLE-GL-VERSION primitive:GLU-INCOMPATIBLE-GL-VERSION)
(define GLU-INVALID-OPERATION primitive:GLU-INVALID-OPERATION)
(define GLU-OUTLINE-POLYGON primitive:GLU-OUTLINE-POLYGON)
(define GLU-OUTLINE-PATCH primitive:GLU-OUTLINE-PATCH)
(define GLU-NURBS-ERROR primitive:GLU-NURBS-ERROR)
(define GLU-ERROR primitive:GLU-ERROR)
(define GLU-NURBS-BEGIN primitive:GLU-NURBS-BEGIN)
(define GLU-NURBS-BEGIN-EXT primitive:GLU-NURBS-BEGIN-EXT)
(define GLU-NURBS-VERTEX primitive:GLU-NURBS-VERTEX)
(define GLU-NURBS-VERTEX-EXT primitive:GLU-NURBS-VERTEX-EXT)
(define GLU-NURBS-NORMAL primitive:GLU-NURBS-NORMAL)
(define GLU-NURBS-NORMAL-EXT primitive:GLU-NURBS-NORMAL-EXT)
(define GLU-NURBS-COLOR primitive:GLU-NURBS-COLOR)
(define GLU-NURBS-COLOR-EXT primitive:GLU-NURBS-COLOR-EXT)
(define GLU-NURBS-TEXTURE-COORD primitive:GLU-NURBS-TEXTURE-COORD)
(define GLU-NURBS-TEX-COORD-EXT primitive:GLU-NURBS-TEX-COORD-EXT)
(define GLU-NURBS-END primitive:GLU-NURBS-END)
(define GLU-NURBS-END-EXT primitive:GLU-NURBS-END-EXT)
(define GLU-NURBS-BEGIN-DATA primitive:GLU-NURBS-BEGIN-DATA)
(define GLU-NURBS-BEGIN-DATA-EXT primitive:GLU-NURBS-BEGIN-DATA-EXT)
(define GLU-NURBS-VERTEX-DATA primitive:GLU-NURBS-VERTEX-DATA)
(define GLU-NURBS-VERTEX-DATA-EXT primitive:GLU-NURBS-VERTEX-DATA-EXT)
(define GLU-NURBS-NORMAL-DATA primitive:GLU-NURBS-NORMAL-DATA)
(define GLU-NURBS-NORMAL-DATA-EXT primitive:GLU-NURBS-NORMAL-DATA-EXT)
(define GLU-NURBS-COLOR-DATA primitive:GLU-NURBS-COLOR-DATA)
(define GLU-NURBS-COLOR-DATA-EXT primitive:GLU-NURBS-COLOR-DATA-EXT)
(define GLU-NURBS-TEXTURE-COORD-DATA primitive:GLU-NURBS-TEXTURE-COORD-DATA)
(define GLU-NURBS-TEX-COORD-DATA-EXT primitive:GLU-NURBS-TEX-COORD-DATA-EXT)
(define GLU-NURBS-END-DATA primitive:GLU-NURBS-END-DATA)
(define GLU-NURBS-END-DATA-EXT primitive:GLU-NURBS-END-DATA-EXT)
(define GLU-NURBS-ERROR1 primitive:GLU-NURBS-ERROR1)
(define GLU-NURBS-ERROR2 primitive:GLU-NURBS-ERROR2)
(define GLU-NURBS-ERROR3 primitive:GLU-NURBS-ERROR3)
(define GLU-NURBS-ERROR4 primitive:GLU-NURBS-ERROR4)
(define GLU-NURBS-ERROR5 primitive:GLU-NURBS-ERROR5)
(define GLU-NURBS-ERROR6 primitive:GLU-NURBS-ERROR6)
(define GLU-NURBS-ERROR7 primitive:GLU-NURBS-ERROR7)
(define GLU-NURBS-ERROR8 primitive:GLU-NURBS-ERROR8)
(define GLU-NURBS-ERROR9 primitive:GLU-NURBS-ERROR9)
(define GLU-NURBS-ERROR10 primitive:GLU-NURBS-ERROR10)
(define GLU-NURBS-ERROR11 primitive:GLU-NURBS-ERROR11)
(define GLU-NURBS-ERROR12 primitive:GLU-NURBS-ERROR12)
(define GLU-NURBS-ERROR13 primitive:GLU-NURBS-ERROR13)
(define GLU-NURBS-ERROR14 primitive:GLU-NURBS-ERROR14)
(define GLU-NURBS-ERROR15 primitive:GLU-NURBS-ERROR15)
(define GLU-NURBS-ERROR16 primitive:GLU-NURBS-ERROR16)
(define GLU-NURBS-ERROR17 primitive:GLU-NURBS-ERROR17)
(define GLU-NURBS-ERROR18 primitive:GLU-NURBS-ERROR18)
(define GLU-NURBS-ERROR19 primitive:GLU-NURBS-ERROR19)
(define GLU-NURBS-ERROR20 primitive:GLU-NURBS-ERROR20)
(define GLU-NURBS-ERROR21 primitive:GLU-NURBS-ERROR21)
(define GLU-NURBS-ERROR22 primitive:GLU-NURBS-ERROR22)
(define GLU-NURBS-ERROR23 primitive:GLU-NURBS-ERROR23)
(define GLU-NURBS-ERROR24 primitive:GLU-NURBS-ERROR24)
(define GLU-NURBS-ERROR25 primitive:GLU-NURBS-ERROR25)
(define GLU-NURBS-ERROR26 primitive:GLU-NURBS-ERROR26)
(define GLU-NURBS-ERROR27 primitive:GLU-NURBS-ERROR27)
(define GLU-NURBS-ERROR28 primitive:GLU-NURBS-ERROR28)
(define GLU-NURBS-ERROR29 primitive:GLU-NURBS-ERROR29)
(define GLU-NURBS-ERROR30 primitive:GLU-NURBS-ERROR30)
(define GLU-NURBS-ERROR31 primitive:GLU-NURBS-ERROR31)
(define GLU-NURBS-ERROR32 primitive:GLU-NURBS-ERROR32)
(define GLU-NURBS-ERROR33 primitive:GLU-NURBS-ERROR33)
(define GLU-NURBS-ERROR34 primitive:GLU-NURBS-ERROR34)
(define GLU-NURBS-ERROR35 primitive:GLU-NURBS-ERROR35)
(define GLU-NURBS-ERROR36 primitive:GLU-NURBS-ERROR36)
(define GLU-NURBS-ERROR37 primitive:GLU-NURBS-ERROR37)
(define GLU-AUTO-LOAD-MATRIX primitive:GLU-AUTO-LOAD-MATRIX)
(define GLU-CULLING primitive:GLU-CULLING)
(define GLU-SAMPLING-TOLERANCE primitive:GLU-SAMPLING-TOLERANCE)
(define GLU-DISPLAY-MODE primitive:GLU-DISPLAY-MODE)
(define GLU-PARAMETRIC-TOLERANCE primitive:GLU-PARAMETRIC-TOLERANCE)
(define GLU-SAMPLING-METHOD primitive:GLU-SAMPLING-METHOD)
(define GLU-U-STEP primitive:GLU-U-STEP)
(define GLU-V-STEP primitive:GLU-V-STEP)
(define GLU-NURBS-MODE primitive:GLU-NURBS-MODE)
(define GLU-NURBS-MODE-EXT primitive:GLU-NURBS-MODE-EXT)
(define GLU-NURBS-TESSELLATOR primitive:GLU-NURBS-TESSELLATOR)
(define GLU-NURBS-TESSELLATOR-EXT primitive:GLU-NURBS-TESSELLATOR-EXT)
(define GLU-NURBS-RENDERER primitive:GLU-NURBS-RENDERER)
(define GLU-NURBS-RENDERER-EXT primitive:GLU-NURBS-RENDERER-EXT)
(define GLU-OBJECT-PARAMETRIC-ERROR primitive:GLU-OBJECT-PARAMETRIC-ERROR)
(define GLU-OBJECT-PARAMETRIC-ERROR-EXT primitive:GLU-OBJECT-PARAMETRIC-ERROR-EXT)
(define GLU-OBJECT-PATH-LENGTH primitive:GLU-OBJECT-PATH-LENGTH)
(define GLU-OBJECT-PATH-LENGTH-EXT primitive:GLU-OBJECT-PATH-LENGTH-EXT)
(define GLU-PATH-LENGTH primitive:GLU-PATH-LENGTH)
(define GLU-PARAMETRIC-ERROR primitive:GLU-PARAMETRIC-ERROR)
(define GLU-DOMAIN-DISTANCE primitive:GLU-DOMAIN-DISTANCE)
(define GLU-MAP1-TRIM-2 primitive:GLU-MAP1-TRIM-2)
(define GLU-MAP1-TRIM-3 primitive:GLU-MAP1-TRIM-3)
(define GLU-POINT primitive:GLU-POINT)
(define GLU-LINE primitive:GLU-LINE)
(define GLU-FILL primitive:GLU-FILL)
(define GLU-SILHOUETTE primitive:GLU-SILHOUETTE)
(define GLU-SMOOTH primitive:GLU-SMOOTH)
(define GLU-FLAT primitive:GLU-FLAT)
(define GLU-NONE primitive:GLU-NONE)
(define GLU-OUTSIDE primitive:GLU-OUTSIDE)
(define GLU-INSIDE primitive:GLU-INSIDE)
(define GLU-TESS-BEGIN primitive:GLU-TESS-BEGIN)
(define GLU-BEGIN primitive:GLU-BEGIN)
(define GLU-TESS-VERTEX primitive:GLU-TESS-VERTEX)
(define GLU-VERTEX primitive:GLU-VERTEX)
(define GLU-TESS-END primitive:GLU-TESS-END)
(define GLU-END primitive:GLU-END)
(define GLU-TESS-ERROR primitive:GLU-TESS-ERROR)
(define GLU-TESS-EDGE-FLAG primitive:GLU-TESS-EDGE-FLAG)
(define GLU-EDGE-FLAG primitive:GLU-EDGE-FLAG)
(define GLU-TESS-COMBINE primitive:GLU-TESS-COMBINE)
(define GLU-TESS-BEGIN-DATA primitive:GLU-TESS-BEGIN-DATA)
(define GLU-TESS-VERTEX-DATA primitive:GLU-TESS-VERTEX-DATA)
(define GLU-TESS-END-DATA primitive:GLU-TESS-END-DATA)
(define GLU-TESS-ERROR-DATA primitive:GLU-TESS-ERROR-DATA)
(define GLU-TESS-EDGE-FLAG-DATA primitive:GLU-TESS-EDGE-FLAG-DATA)
(define GLU-TESS-COMBINE-DATA primitive:GLU-TESS-COMBINE-DATA)
(define GLU-CW primitive:GLU-CW)
(define GLU-CCW primitive:GLU-CCW)
(define GLU-INTERIOR primitive:GLU-INTERIOR)
(define GLU-EXTERIOR primitive:GLU-EXTERIOR)
(define GLU-UNKNOWN primitive:GLU-UNKNOWN)
(define GLU-TESS-WINDING-RULE primitive:GLU-TESS-WINDING-RULE)
(define GLU-TESS-BOUNDARY-ONLY primitive:GLU-TESS-BOUNDARY-ONLY)
(define GLU-TESS-TOLERANCE primitive:GLU-TESS-TOLERANCE)
(define GLU-TESS-ERROR1 primitive:GLU-TESS-ERROR1)
(define GLU-TESS-ERROR2 primitive:GLU-TESS-ERROR2)
(define GLU-TESS-ERROR3 primitive:GLU-TESS-ERROR3)
(define GLU-TESS-ERROR4 primitive:GLU-TESS-ERROR4)
(define GLU-TESS-ERROR5 primitive:GLU-TESS-ERROR5)
(define GLU-TESS-ERROR6 primitive:GLU-TESS-ERROR6)
(define GLU-TESS-ERROR7 primitive:GLU-TESS-ERROR7)
(define GLU-TESS-ERROR8 primitive:GLU-TESS-ERROR8)
(define GLU-TESS-MISSING-BEGIN-POLYGON primitive:GLU-TESS-MISSING-BEGIN-POLYGON)
(define GLU-TESS-MISSING-BEGIN-CONTOUR primitive:GLU-TESS-MISSING-BEGIN-CONTOUR)
(define GLU-TESS-MISSING-END-POLYGON primitive:GLU-TESS-MISSING-END-POLYGON)
(define GLU-TESS-MISSING-END-CONTOUR primitive:GLU-TESS-MISSING-END-CONTOUR)
(define GLU-TESS-COORD-TOO-LARGE primitive:GLU-TESS-COORD-TOO-LARGE)
(define GLU-TESS-NEED-COMBINE-CALLBACK primitive:GLU-TESS-NEED-COMBINE-CALLBACK)
(define GLU-TESS-WINDING-ODD primitive:GLU-TESS-WINDING-ODD)
(define GLU-TESS-WINDING-NONZERO primitive:GLU-TESS-WINDING-NONZERO)
(define GLU-TESS-WINDING-POSITIVE primitive:GLU-TESS-WINDING-POSITIVE)
(define GLU-TESS-WINDING-NEGATIVE primitive:GLU-TESS-WINDING-NEGATIVE)
(define GLU-TESS-WINDING-ABS-GEQ-TWO primitive:GLU-TESS-WINDING-ABS-GEQ-TWO)
(define GLU-TESS-MAX-COORD primitive:GLU-TESS-MAX-COORD)
(define gluBeginCurve primitive:gluBeginCurve)
(define gluBeginPolygon primitive:gluBeginPolygon)
(define gluBeginSurface primitive:gluBeginSurface)
(define gluBeginTrim primitive:gluBeginTrim)
(define gluBuild1DMipmapLevels primitive:gluBuild1DMipmapLevels)
(define gluBuild1DMipmaps primitive:gluBuild1DMipmaps)
(define gluBuild2DMipmapLevels primitive:gluBuild2DMipmapLevels)
(define gluBuild2DMipmaps primitive:gluBuild2DMipmaps)
(define gluBuild3DMipmapLevels primitive:gluBuild3DMipmapLevels)
(define gluBuild3DMipmaps primitive:gluBuild3DMipmaps)
(define gluCheckExtension primitive:gluCheckExtension)
(define gluCylinder primitive:gluCylinder)
(define gluDeleteNurbsRenderer primitive:gluDeleteNurbsRenderer)
(define gluDeleteQuadric primitive:gluDeleteQuadric)
(define gluDeleteTess primitive:gluDeleteTess)
(define gluDisk primitive:gluDisk)
(define gluEndCurve primitive:gluEndCurve)
(define gluEndPolygon primitive:gluEndPolygon)
(define gluEndSurface primitive:gluEndSurface)
(define gluEndTrim primitive:gluEndTrim)
(define gluErrorString primitive:gluErrorString)
(define gluGetNurbsProperty primitive:gluGetNurbsProperty)
(define gluGetString primitive:gluGetString)
(define gluGetTessProperty primitive:gluGetTessProperty)
(define gluLoadSamplingMatrices primitive:gluLoadSamplingMatrices)
(define gluLookAt primitive:gluLookAt)
(define gluNewNurbsRenderer primitive:gluNewNurbsRenderer)
(define gluNewQuadric primitive:gluNewQuadric)
(define gluNewTess primitive:gluNewTess)
(define gluNextContour primitive:gluNextContour)
(define gluNurbsCallback primitive:gluNurbsCallback)
(define gluNurbsCallbackData primitive:gluNurbsCallbackData)
(define gluNurbsCallbackDataEXT primitive:gluNurbsCallbackDataEXT)
(define gluNurbsCurve primitive:gluNurbsCurve)
(define gluNurbsProperty primitive:gluNurbsProperty)
(define gluNurbsSurface primitive:gluNurbsSurface)
(define gluOrtho2D primitive:gluOrtho2D)
(define gluPartialDisk primitive:gluPartialDisk)
(define gluPerspective primitive:gluPerspective)
(define gluPickMatrix primitive:gluPickMatrix)
(define gluProject primitive:gluProject)
(define gluPwlCurve primitive:gluPwlCurve)
(define gluQuadricCallback primitive:gluQuadricCallback)
(define gluQuadricDrawStyle primitive:gluQuadricDrawStyle)
(define gluQuadricNormals primitive:gluQuadricNormals)
(define gluQuadricOrientation primitive:gluQuadricOrientation)
(define gluQuadricTexture primitive:gluQuadricTexture)
(define gluScaleImage primitive:gluScaleImage)
(define gluSphere primitive:gluSphere)
(define gluTessBeginContour primitive:gluTessBeginContour)
(define gluTessBeginPolygon primitive:gluTessBeginPolygon)
(define gluTessCallback primitive:gluTessCallback)
(define gluTessEndContour primitive:gluTessEndContour)
(define gluTessEndPolygon primitive:gluTessEndPolygon)
(define gluTessNormal primitive:gluTessNormal)
(define gluTessProperty primitive:gluTessProperty)
(define gluTessVertex primitive:gluTessVertex)
(define gluUnProject primitive:gluUnProject)
(define gluUnProject4 primitive:gluUnProject4)

(export GLU-EXT-object-space-tess GLU-EXT-nurbs-tessellator GLU-FALSE GLU-TRUE GLU-VERSION-1-1 GLU-VERSION-1-2 GLU-VERSION-1-3 GLU-VERSION GLU-EXTENSIONS GLU-INVALID-ENUM GLU-INVALID-VALUE GLU-OUT-OF-MEMORY GLU-INCOMPATIBLE-GL-VERSION GLU-INVALID-OPERATION GLU-OUTLINE-POLYGON GLU-OUTLINE-PATCH GLU-NURBS-ERROR GLU-ERROR GLU-NURBS-BEGIN GLU-NURBS-BEGIN-EXT GLU-NURBS-VERTEX GLU-NURBS-VERTEX-EXT GLU-NURBS-NORMAL GLU-NURBS-NORMAL-EXT GLU-NURBS-COLOR GLU-NURBS-COLOR-EXT GLU-NURBS-TEXTURE-COORD GLU-NURBS-TEX-COORD-EXT GLU-NURBS-END GLU-NURBS-END-EXT GLU-NURBS-BEGIN-DATA GLU-NURBS-BEGIN-DATA-EXT GLU-NURBS-VERTEX-DATA GLU-NURBS-VERTEX-DATA-EXT GLU-NURBS-NORMAL-DATA GLU-NURBS-NORMAL-DATA-EXT GLU-NURBS-COLOR-DATA GLU-NURBS-COLOR-DATA-EXT GLU-NURBS-TEXTURE-COORD-DATA GLU-NURBS-TEX-COORD-DATA-EXT GLU-NURBS-END-DATA GLU-NURBS-END-DATA-EXT GLU-NURBS-ERROR1 GLU-NURBS-ERROR2 GLU-NURBS-ERROR3 GLU-NURBS-ERROR4 GLU-NURBS-ERROR5 GLU-NURBS-ERROR6 GLU-NURBS-ERROR7 GLU-NURBS-ERROR8 GLU-NURBS-ERROR9 GLU-NURBS-ERROR10 GLU-NURBS-ERROR11 GLU-NURBS-ERROR12 GLU-NURBS-ERROR13 GLU-NURBS-ERROR14 GLU-NURBS-ERROR15 GLU-NURBS-ERROR16 GLU-NURBS-ERROR17 GLU-NURBS-ERROR18 GLU-NURBS-ERROR19 GLU-NURBS-ERROR20 GLU-NURBS-ERROR21 GLU-NURBS-ERROR22 GLU-NURBS-ERROR23 GLU-NURBS-ERROR24 GLU-NURBS-ERROR25 GLU-NURBS-ERROR26 GLU-NURBS-ERROR27 GLU-NURBS-ERROR28 GLU-NURBS-ERROR29 GLU-NURBS-ERROR30 GLU-NURBS-ERROR31 GLU-NURBS-ERROR32 GLU-NURBS-ERROR33 GLU-NURBS-ERROR34 GLU-NURBS-ERROR35 GLU-NURBS-ERROR36 GLU-NURBS-ERROR37 GLU-AUTO-LOAD-MATRIX GLU-CULLING GLU-SAMPLING-TOLERANCE GLU-DISPLAY-MODE GLU-PARAMETRIC-TOLERANCE GLU-SAMPLING-METHOD GLU-U-STEP GLU-V-STEP GLU-NURBS-MODE GLU-NURBS-MODE-EXT GLU-NURBS-TESSELLATOR GLU-NURBS-TESSELLATOR-EXT GLU-NURBS-RENDERER GLU-NURBS-RENDERER-EXT GLU-OBJECT-PARAMETRIC-ERROR GLU-OBJECT-PARAMETRIC-ERROR-EXT GLU-OBJECT-PATH-LENGTH GLU-OBJECT-PATH-LENGTH-EXT GLU-PATH-LENGTH GLU-PARAMETRIC-ERROR GLU-DOMAIN-DISTANCE GLU-MAP1-TRIM-2 GLU-MAP1-TRIM-3 GLU-POINT GLU-LINE GLU-FILL GLU-SILHOUETTE GLU-SMOOTH GLU-FLAT GLU-NONE GLU-OUTSIDE GLU-INSIDE GLU-TESS-BEGIN GLU-BEGIN GLU-TESS-VERTEX GLU-VERTEX GLU-TESS-END GLU-END GLU-TESS-ERROR GLU-TESS-EDGE-FLAG GLU-EDGE-FLAG GLU-TESS-COMBINE GLU-TESS-BEGIN-DATA GLU-TESS-VERTEX-DATA GLU-TESS-END-DATA GLU-TESS-ERROR-DATA GLU-TESS-EDGE-FLAG-DATA GLU-TESS-COMBINE-DATA GLU-CW GLU-CCW GLU-INTERIOR GLU-EXTERIOR GLU-UNKNOWN GLU-TESS-WINDING-RULE GLU-TESS-BOUNDARY-ONLY GLU-TESS-TOLERANCE GLU-TESS-ERROR1 GLU-TESS-ERROR2 GLU-TESS-ERROR3 GLU-TESS-ERROR4 GLU-TESS-ERROR5 GLU-TESS-ERROR6 GLU-TESS-ERROR7 GLU-TESS-ERROR8 GLU-TESS-MISSING-BEGIN-POLYGON GLU-TESS-MISSING-BEGIN-CONTOUR GLU-TESS-MISSING-END-POLYGON GLU-TESS-MISSING-END-CONTOUR GLU-TESS-COORD-TOO-LARGE GLU-TESS-NEED-COMBINE-CALLBACK GLU-TESS-WINDING-ODD GLU-TESS-WINDING-NONZERO GLU-TESS-WINDING-POSITIVE GLU-TESS-WINDING-NEGATIVE GLU-TESS-WINDING-ABS-GEQ-TWO GLU-TESS-MAX-COORD gluBeginCurve gluBeginPolygon gluBeginSurface gluBeginTrim gluBuild1DMipmapLevels gluBuild1DMipmaps gluBuild2DMipmapLevels gluBuild2DMipmaps gluBuild3DMipmapLevels gluBuild3DMipmaps gluCheckExtension gluCylinder gluDeleteNurbsRenderer gluDeleteQuadric gluDeleteTess gluDisk gluEndCurve gluEndPolygon gluEndSurface gluEndTrim gluErrorString gluGetNurbsProperty gluGetString gluGetTessProperty gluLoadSamplingMatrices gluLookAt gluNewNurbsRenderer gluNewQuadric gluNewTess gluNextContour gluNurbsCallback gluNurbsCallbackData gluNurbsCallbackDataEXT gluNurbsCurve gluNurbsProperty gluNurbsSurface gluOrtho2D gluPartialDisk gluPerspective gluPickMatrix gluProject gluPwlCurve gluQuadricCallback gluQuadricDrawStyle gluQuadricNormals gluQuadricOrientation gluQuadricTexture gluScaleImage gluSphere gluTessBeginContour gluTessBeginPolygon gluTessCallback gluTessEndContour gluTessEndPolygon gluTessNormal gluTessProperty gluTessVertex gluUnProject gluUnProject4 )