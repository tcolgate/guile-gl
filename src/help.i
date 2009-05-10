
%{
#include <ffi.h>
#include "libguile.h"

typedef void (*voidFuncVoid)(void);
typedef void (*voidFuncInt)(int);
typedef void (*voidFuncIntInt)(int,int);
typedef void (*voidFuncIntIntInt)(int,int,int);
typedef void (*voidFuncUCharIntInt)(unsigned char,int,int);
typedef void (*voidFuncIntIntIntInt)(int,int,int,int);
typedef void (*voidFuncUIntIntIntInt)(unsigned int,int,int,int);

%}

%{
void
TrampolineVoid (ffi_cif *CIF, void *RET, void **args, void *SCM_HANDLER)
{
  if (!scm_is_eq (scm_thunk_p (SCM_HANDLER), SCM_BOOL_T)){
    printf ("Wont call non procedure %p\n",SCM_HANDLER);
    return;
  }

  scm_call_0((SCM) SCM_HANDLER);
  return;
};
voidFuncVoid MakeSCMCallback_V_V(SCM p)
{
  ffi_cif *cif = (ffi_cif*) malloc (sizeof(ffi_cif));
  voidFuncVoid callback;             /* ptr to generated code */
  void *cb_closure = ffi_closure_alloc (sizeof(ffi_closure), (void*) &callback);

  /* Initialize the cif */
  if (ffi_prep_cif(cif, FFI_DEFAULT_ABI, 0, &ffi_type_void, NULL)
          != FFI_OK) {
       printf("Failed to intialize cif for callback\n");
  }

  ffi_prep_closure_loc (cb_closure, cif, TrampolineVoid, (void *)p, (void*) callback);
  return callback;
};
%}
%typemap(in)(void (* callback)( void ) ){
  $1 = MakeSCMCallback_V_V($input);
}

%{
void 
TrampolineInt (ffi_cif *CIF, void *RET, void **args, void *SCM_HANDLER)
{
  void* parg1 = args[0];
  int arg1;
  arg1 = *(int*)parg1;

  if (!scm_is_eq (scm_procedure_p (SCM_HANDLER), SCM_BOOL_T)){
    printf ("Wont call non procedure %p\n",SCM_HANDLER);
    return;
  }

  scm_call_1((SCM) SCM_HANDLER,
             scm_int2num((int) arg1));
  return;
};
voidFuncInt MakeSCMCallback_V_I(SCM p)
{
  ffi_cif *cif = (ffi_cif*) malloc (sizeof(ffi_cif));
  ffi_type **args = (ffi_type**) malloc (sizeof(ffi_type*) * 1);
  voidFuncInt callback;             /* ptr to generated code */
  void *cb_closure = ffi_closure_alloc (sizeof(ffi_closure), (void*) &callback);

  /* Describe the arguments */
  args[0] = &ffi_type_sint;

  /* Initialize the cif */
  if (ffi_prep_cif(cif, FFI_DEFAULT_ABI, 1, &ffi_type_void, args)
          != FFI_OK) {
       printf("Failed to intialize cif for callback\n");
  }

  ffi_prep_closure_loc (cb_closure, cif, TrampolineInt, (void *)p, (void*) callback);
  return callback;
};
%}
%typemap(in)( void (* callback)( int ) ){
  $1 = MakeSCMCallback_V_I($input);
}

%{
void 
TrampolineIntInt (ffi_cif *CIF, void *RET, void **args, void *SCM_HANDLER)
{
  void* parg1 = args[0];
  void* parg2 = args[1];
  int arg1;
  int arg2;
  arg1 = *(int*)parg1;
  arg2 = *(int*)parg2;

  if (!scm_is_eq (scm_procedure_p (SCM_HANDLER), SCM_BOOL_T)){
    printf ("Wont call non procedure %p\n",SCM_HANDLER);
    return;
  }

  scm_call_2((SCM) SCM_HANDLER,
             scm_int2num((int) arg1),
             scm_int2num((int) arg2));
  return;
};
voidFuncIntInt MakeSCMCallback_V_II(SCM p)
{
  ffi_cif *cif = (ffi_cif*) malloc (sizeof(ffi_cif));
  ffi_type **args = (ffi_type**) malloc (sizeof(ffi_type*) * 2);
  voidFuncIntInt callback;             /* ptr to generated code */
  void *cb_closure = ffi_closure_alloc (sizeof(ffi_closure), (void*) &callback);

  /* Describe the arguments */
  args[0] = &ffi_type_sint;
  args[1] = &ffi_type_sint;

  /* Initialize the cif */
  if (ffi_prep_cif(cif, FFI_DEFAULT_ABI, 2, &ffi_type_void, args)
          != FFI_OK) {
       printf("Failed to intialize cif for callback\n");
  }

  ffi_prep_closure_loc (cb_closure, cif, TrampolineIntInt, (void *)p, (void*) callback);
  return callback;
};
%}
%typemap(in)( void (* callback)( int, int ) ){
  $1 = MakeSCMCallback_V_II($input);
}

%{
void 
TrampolineIntIntInt (ffi_cif *CIF, void *RET, void **args, void *SCM_HANDLER)
{
  void* parg1 = args[0];
  void* parg2 = args[1];
  void* parg3 = args[2];
  int arg1;
  int arg2;
  int arg3;
  arg1 = *(int*)parg1;
  arg2 = *(int*)parg2;
  arg3 = *(int*)parg3;

  if (!scm_is_eq (scm_procedure_p (SCM_HANDLER), SCM_BOOL_T)){
    printf ("Wont call non procedure %p\n",SCM_HANDLER);
    return;
  }

  scm_call_3((SCM) SCM_HANDLER,
             scm_int2num((int) arg1),
             scm_int2num((int) arg2),
             scm_int2num((int) arg3));
  return;
};
voidFuncIntIntInt MakeSCMCallback_V_III(SCM p)
{
  ffi_cif *cif = (ffi_cif*) malloc (sizeof(ffi_cif));
  ffi_type **args = (ffi_type**) malloc (sizeof(ffi_type*) * 3);
  voidFuncIntIntInt callback;             /* ptr to generated code */
  void *cb_closure = ffi_closure_alloc (sizeof(ffi_closure), (void*) &callback);

  /* Describe the arguments */
  args[0] = &ffi_type_sint;
  args[1] = &ffi_type_sint;
  args[2] = &ffi_type_sint;

  /* Initialize the cif */
  if (ffi_prep_cif(cif, FFI_DEFAULT_ABI, 3, &ffi_type_void, args)
          != FFI_OK) {
       printf("Failed to intialize cif for callback\n");
  }

  ffi_prep_closure_loc (cb_closure, cif, TrampolineIntIntInt, (void *)p, (void*) callback);
  return callback;
};
%}
%typemap(in)( void (* callback)( int, int, int ) ){
  $1 = MakeSCMCallback_V_III($input);
}

%{
void 
TrampolineCharIntInt (ffi_cif *CIF, void *RET, void **args, void *SCM_HANDLER)
{
  void* parg1 = args[0];
  void* parg2 = args[1];
  void* parg3 = args[2];
  char arg1;
  int arg2;
  int arg3;
  arg1 = *(char*)parg1;
  arg2 = *(int*)parg2;
  arg3 = *(int*)parg3;

  if (!scm_is_eq (scm_procedure_p (SCM_HANDLER), SCM_BOOL_T)){
    printf ("Wont call non procedure %p\n",SCM_HANDLER);
    return;
  }

  scm_call_3((SCM) SCM_HANDLER,
             scm_from_uchar((char) arg1),
             scm_int2num((int) arg2),
             scm_int2num((int) arg3));
  return;
};
voidFuncCharIntInt MakeSCMCallback_V_CII(SCM p)
{
  ffi_cif *cif = (ffi_cif*) malloc (sizeof(ffi_cif));
  ffi_type **args = (ffi_type**) malloc (sizeof(ffi_type*) * 3);
  voidFuncCharIntInt callback;             /* ptr to generated code */
  void *cb_closure = ffi_closure_alloc (sizeof(ffi_closure), (void*) &callback);

  /* Describe the arguments */
  args[0] = &ffi_type_char;
  args[1] = &ffi_type_sint;
  args[2] = &ffi_type_sint;

  /* Initialize the cif */
  if (ffi_prep_cif(cif, FFI_DEFAULT_ABI, 3, &ffi_type_void, args)
          != FFI_OK) {
       printf("Failed to intialize cif for callback\n");
  }

  ffi_prep_closure_loc (cb_closure, cif, TrampolineCharIntInt, (void *)p, (void*) callback);
  return callback;
};
%}
%typemap(in)( void (* callback)( int, int, int, int ) ){
  $1 = MakeSCMCallback_V_CII($input);
}

%{
void
TrampolineIntIntIntInt (ffi_cif *CIF, void *RET, void **args, void *SCM_HANDLER)
{
  void* parg1 = args[0];
  void* parg2 = args[1];
  void* parg3 = args[2];
  void* parg4 = args[3];
  int arg1;
  int arg2;
  int arg3;
  int arg4;
  arg1 = *(int*)parg1;
  arg2 = *(int*)parg2;
  arg3 = *(int*)parg3;
  arg4 = *(int*)parg4;

  if (!scm_is_eq (scm_procedure_p (SCM_HANDLER), SCM_BOOL_T)){
    printf ("Wont call non procedure %p\n",SCM_HANDLER);
    return;
  }

  scm_call_4((SCM) SCM_HANDLER,
             scm_int2num((int) arg1),
             scm_int2num((int) arg2),
             scm_int2num((int) arg3),
             scm_int2num((int) arg4));
  return;
};
voidFuncIntIntIntInt MakeSCMCallback_V_IIII(SCM p)
{
  ffi_cif *cif = (ffi_cif*) malloc (sizeof(ffi_cif));
  ffi_type **args = (ffi_type**) malloc (sizeof(ffi_type*) * 4);
  voidFuncIntIntIntInt callback;             /* ptr to generated code */
  void *cb_closure = ffi_closure_alloc (sizeof(ffi_closure), (void*) &callback);

  /* Describe the arguments */
  args[0] = &ffi_type_sint;
  args[1] = &ffi_type_sint;
  args[2] = &ffi_type_sint;
  args[3] = &ffi_type_sint;

  /* Initialize the cif */
  if (ffi_prep_cif(cif, FFI_DEFAULT_ABI, 4, &ffi_type_void, args)
          != FFI_OK) {
       printf("Failed to intialize cif for callback\n");
  }

  ffi_prep_closure_loc (cb_closure, cif, TrampolineIntIntIntInt, (void *)p, (void*) callback);
  return callback;
};
%}
%typemap(in)( void (* callback)( unsigned char, int, int ) ){
  $1 = MakeSCMCallback_V_IIII($input);
}

%{
void 
TrampolineUIntIntIntInt (ffi_cif *CIF, void *RET, void **args, void *SCM_HANDLER)
{
  void* parg1 = args[0];
  void* parg2 = args[1];
  void* parg3 = args[2];
  void* parg4 = args[3];
  unsigned int arg1;
  int arg2;
  int arg3;
  int arg4;
  arg1 = *(unsigned int*)parg1;
  arg2 = *(int*)parg2;
  arg3 = *(int*)parg3;
  arg4 = *(int*)parg4;

  if (!scm_is_eq (scm_procedure_p (SCM_HANDLER), SCM_BOOL_T)){
    printf ("Wont call non procedure %p\n",SCM_HANDLER);
    return;
  }

  scm_call_4((SCM) SCM_HANDLER,
             scm_uint2num((unsigned int) arg1),
             scm_int2num((int) arg2),
             scm_int2num((int) arg3),
             scm_int2num((int) arg4));
  return;
};
voidFuncUIntIntIntInt MakeSCMCallback_V_UIII(SCM p)
{
  ffi_cif *cif = (ffi_cif*) malloc (sizeof(ffi_cif));
  ffi_type **args = (ffi_type**) malloc (sizeof(ffi_type*) * 4);
  voidFuncUIntIntIntInt callback;             /* ptr to generated code */
  void *cb_closure = ffi_closure_alloc (sizeof(ffi_closure), (void*) &callback);

  /* Describe the arguments */
  args[0] = &ffi_type_uint;
  args[1] = &ffi_type_sint;
  args[2] = &ffi_type_sint;
  args[3] = &ffi_type_sint;

  /* Initialize the cif */
  if (ffi_prep_cif(cif, FFI_DEFAULT_ABI, 4, &ffi_type_void, args)
          != FFI_OK) {
       printf("Failed to intialize cif for callback\n");
  }

  ffi_prep_closure_loc (cb_closure, cif, TrampolineUIntIntIntInt, (void *)p, (void*) callback);
  return callback;
};
%}
%typemap(in)( void (* callback)( unsigned int, int, int, int ) ){
  $1 = MakeSCMCallback_V_UIII($input);
}

%{
int *newintv1(int a){
  int *i;
  i = (int *) malloc(sizeof(int));
  i[0] = a;
  return i;
}

char **newstrv1(char* c){
  char **cv;
  cv = (char **) malloc(sizeof(char*));
  cv[0] = c;
  return cv;
}

GLfloat *newfv4(GLfloat a,GLfloat b,GLfloat c,GLfloat d) {
  GLfloat *f;
  f = (GLfloat *) malloc(4*sizeof(GLfloat));
  f[0] = a; f[1] = b; f[2] = c; f[3] = d;
  return f;
}

GLfloat *newfv(SCM L){
  GLfloat *result;

  int list_length,i = 0;
  SCM s_list = L;
  SCM s_value;

  if (SCM_NFALSEP(scm_list_p(s_list))) {
 
    int list_length = SCM_INUM(scm_length(s_list));
    result = (GLfloat*) malloc (sizeof(GLfloat) * list_length);
        
    while (SCM_FALSEP (scm_null_p (s_list))) {
      s_value = SCM_CAR(s_list);
      result[i++] = scm_num2float(s_value,i,"newfv");
      s_list = SCM_CDR(s_list);
    }

    for (i=0; i < list_length; i++) {
      printf("%d : %f\n", i, result[i]);
    }
  }

  printf ("created floats arrray of length %i\n",list_length);
  
  return result;
}

void setfv4(GLfloat *fv, GLfloat a, GLfloat b, GLfloat c, GLfloat d) {
  fv[0] = a; fv[1] = b; fv[2] = c; fv[3] = d;
}

%}
%rename("delfv4") free(void*);
%rename("delfv") free(void*);
