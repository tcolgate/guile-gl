
%inline %{
#include "lightning.h"
#include "libguile.h"

typedef void (*voidFuncVoid)(void);
typedef void (*voidFuncInt)(int);
typedef void (*voidFuncIntInt)(int,int);
typedef void (*voidFuncIntIntInt)(int,int,int);
typedef void (*voidFuncIntIntIntInt)(int,int,int,int);
typedef void (*voidFuncUIntIntIntInt)(unsigned int,int,int,int);
typedef void (*voidFuncUCharIntInt)(unsigned char,int,int);

void TrampolineVoid (SCM P)
{

  if (!scm_is_eq (scm_thunk_p (P), SCM_BOOL_T)){
    printf ("Wont call non procedure %p\n",P);
    return;
  }

  scm_call_0(P);
  return;
};

void TrampolineInt (SCM P, int arg1)
{

  if (!scm_is_eq (scm_procedure_p (P), SCM_BOOL_T)){
    printf ("Wont call, not a Void (int) procedure %p\n",P);
    return;
  }

  scm_call_1(P,scm_int2num(arg1));
  return;
};

void TrampolineIntInt (SCM P, int arg1, int arg2)
{

  if (!scm_is_eq (scm_procedure_p (P), SCM_BOOL_T)){
    printf ("Wont call, not a Void (int,int) procedure %p\n",P);
    return;
  }

  scm_call_2(P,scm_int2num(arg1),scm_int2num(arg2));
  return;
};

void TrampolineIntIntInt (SCM P, int arg1, int arg2, int arg3)
{

  if (!scm_is_eq (scm_procedure_p (P), SCM_BOOL_T)){
    printf ("Wont call, not a Void (int,int,int) procedure %p\n",P);
    return;
  }

  scm_call_3(P,scm_int2num(arg1),scm_int2num(arg2),scm_int2num(arg3));
  return;
};

void TrampolineUCharIntInt (SCM P, unsigned char arg1, int arg2, int arg3)
{

  if (!scm_is_eq (scm_procedure_p (P), SCM_BOOL_T)){
    printf ("Wont call %p\n",P);
    return;
  }

  scm_call_3(P,SCM_MAKE_CHAR(arg1),scm_int2num(arg2),scm_int2num(arg3));
  return;
};

void TrampolineIntIntIntInt (SCM P, int arg1, int arg2, int arg3, int arg4)
{

  if (!scm_is_eq (scm_procedure_p (P), SCM_BOOL_T)){
    printf ("Wont call %p\n",P);
    return;
  }

  scm_call_4(P,scm_int2num(arg1),scm_int2num(arg2),scm_int2num(arg3),scm_int2num(arg4));
  return;
};

void TrampolineUIntIntIntInt (SCM P, unsigned int arg1, int arg2, int arg3, int arg4)
{

  if (!scm_is_eq (scm_procedure_p (P), SCM_BOOL_T)){
    printf ("Wont call %p\n",P);
    return;
  }

  scm_call_4(P,scm_uint2num(arg1),scm_int2num(arg2),scm_int2num(arg3),scm_int2num(arg4));
  return;
};

voidFuncVoid MakeSCMCallback_V_V(SCM p)
{
  voidFuncVoid    callback;             /* ptr to generated code */
  char          *start, *end;           /* a couple of labels */

  jit_insn *codegen = (jit_insn*) malloc (1024);
  callback = (voidFuncVoid) (jit_set_ip(codegen).vptr);
  start = jit_get_ip().ptr;
  jit_prolog(0);
  jit_movi_p(JIT_R0, p);
  jit_prepare(1);
    jit_pusharg_p(JIT_R0);
  jit_finish(TrampolineVoid);
  jit_ret();
  end = jit_get_ip().ptr;

  jit_flush_code(start, end);

  return callback;
};

voidFuncInt MakeSCMCallback_V_I(SCM p)
{
  voidFuncInt callback;             /* ptr to generated code */
  char          *start, *end;           /* a couple of labels */
  int arg1;

  jit_insn *codegen = (jit_insn*) malloc (1024);
  callback = (voidFuncInt) (jit_set_ip(codegen).vptr);
  start = jit_get_ip().ptr;
  jit_prolog(1);
  arg1 = jit_arg_i();
  jit_movi_p(JIT_R0, p);
  jit_getarg_i(JIT_R1, arg1);
  jit_prepare(2);
    jit_pusharg_i(JIT_R1);
    jit_pusharg_p(JIT_R0);
  jit_finish(TrampolineInt);
  jit_ret();
  end = jit_get_ip().ptr;

  jit_flush_code(start, end);

  return callback;
};

voidFuncIntInt MakeSCMCallback_V_II(SCM p)
{
  voidFuncIntInt callback;             /* ptr to generated code */
  char          *start, *end;           /* a couple of labels */
  int arg1;
  int arg2;

  jit_insn *codegen = (jit_insn*) malloc (1024);
  callback = (voidFuncIntInt) (jit_set_ip(codegen).vptr);
  start = jit_get_ip().ptr;
  jit_prolog(2);
  arg1 = jit_arg_i();
  arg2 = jit_arg_i();
  jit_movi_p(JIT_R0, p);
  jit_getarg_i(JIT_R1, arg1);
  jit_getarg_i(JIT_R2, arg2);
  jit_prepare(3);
    jit_pusharg_i(JIT_R2);
    jit_pusharg_i(JIT_R1);
    jit_pusharg_p(JIT_R0);
  jit_finish(TrampolineIntInt);
  jit_ret();
  end = jit_get_ip().ptr;

  jit_flush_code(start, end);

  return callback;
};

voidFuncIntIntInt MakeSCMCallback_V_III(SCM p)
{
  voidFuncIntIntInt callback;             /* ptr to generated code */
  char          *start, *end;           /* a couple of labels */
  int arg1;
  int arg2;
  int arg3;

  jit_insn *codegen = (jit_insn*) malloc (1024);
  callback = (voidFuncIntIntInt) (jit_set_ip(codegen).vptr);
  start = jit_get_ip().ptr;
  jit_prolog(3);
  arg1 = jit_arg_i();
  arg2 = jit_arg_i();
  arg3 = jit_arg_i();
  jit_movi_p(JIT_R0, p);
  jit_prepare(4);
    jit_getarg_i(JIT_R1, arg3);
    jit_pusharg_i(JIT_R1);
    jit_getarg_i(JIT_R1, arg2);
    jit_pusharg_i(JIT_R1);
    jit_getarg_i(JIT_R1, arg1);
    jit_pusharg_i(JIT_R1);
    jit_pusharg_p(JIT_R0);
  jit_finish(TrampolineIntIntInt);
  jit_ret();
  end = jit_get_ip().ptr;

  jit_flush_code(start, end);

  return callback;
};

voidFuncUCharIntInt MakeSCMCallback_V_CII(SCM p)
{
  voidFuncUCharIntInt callback;             /* ptr to generated code */
  char          *start, *end;           /* a couple of labels */
  unsigned char arg1;
  int arg2;
  int arg3;

  jit_insn *codegen = (jit_insn*) malloc (1024);
  callback = (voidFuncUCharIntInt) (jit_set_ip(codegen).vptr);
  start = jit_get_ip().ptr;
  jit_prolog(3);
  arg1 = jit_arg_uc();
  arg2 = jit_arg_i();
  arg3 = jit_arg_i();
  jit_movi_p(JIT_R0, p);
  jit_prepare(4);
    jit_getarg_i(JIT_R1, arg3);
    jit_pusharg_i(JIT_R1);
    jit_getarg_i(JIT_R1, arg2);
    jit_pusharg_i(JIT_R1);
    jit_getarg_uc(JIT_R1, arg1);
    jit_pusharg_uc(JIT_R1);
    jit_pusharg_p(JIT_R0);
  jit_finish(TrampolineUCharIntInt);
  jit_ret();
  end = jit_get_ip().ptr;

  jit_flush_code(start, end);

  return callback;
};

voidFuncIntIntIntInt MakeSCMCallback_V_IIII(SCM p)
{
  voidFuncIntIntIntInt callback;             /* ptr to generated code */
  char          *start, *end;           /* a couple of labels */
  int arg1;
  int arg2;
  int arg3;
  int arg4;

  jit_insn *codegen = (jit_insn*) malloc (1024);
  callback = (voidFuncIntIntIntInt) (jit_set_ip(codegen).vptr);
  start = jit_get_ip().ptr;
  jit_prolog(4);
  arg1 = jit_arg_i();
  arg2 = jit_arg_i();
  arg3 = jit_arg_i();
  arg4 = jit_arg_i();
  jit_movi_p(JIT_R0, p);
  jit_prepare(5);
  jit_getarg_i(JIT_R1, arg4);
    jit_pusharg_i(JIT_R1);
  jit_getarg_i(JIT_R1, arg3);
    jit_pusharg_i(JIT_R1);
  jit_getarg_i(JIT_R1, arg2);
    jit_pusharg_i(JIT_R1);
  jit_getarg_i(JIT_R1, arg1);
    jit_pusharg_i(JIT_R1);
    jit_pusharg_p(JIT_R0);
  jit_finish(TrampolineIntIntIntInt);
  jit_ret();
  end = jit_get_ip().ptr;

  jit_flush_code(start, end);

  return callback;
};

voidFuncUIntIntIntInt MakeSCMCallback_V_UIII(SCM p)
{
  voidFuncUIntIntIntInt callback;             /* ptr to generated code */
  char          *start, *end;           /* a couple of labels */
  unsigned int arg1;
  int arg2;
  int arg3;
  int arg4;

  jit_insn *codegen = (jit_insn*) malloc (1024);
  callback = (voidFuncUIntIntIntInt) (jit_set_ip(codegen).vptr);
  start = jit_get_ip().ptr;
  jit_prolog(4);
  arg1 = jit_arg_ui();
  arg2 = jit_arg_i();
  arg3 = jit_arg_i();
  arg4 = jit_arg_i();
  jit_movi_p(JIT_R0, p);
  jit_prepare(5);
  jit_getarg_i(JIT_R1, arg4);
    jit_pusharg_i(JIT_R1);
  jit_getarg_i(JIT_R1, arg3);
    jit_pusharg_i(JIT_R1);
  jit_getarg_i(JIT_R1, arg2);
    jit_pusharg_i(JIT_R1);
  jit_getarg_ui(JIT_R1, arg1);
    jit_pusharg_ui(JIT_R1);
    jit_pusharg_p(JIT_R0);
  jit_finish(TrampolineUIntIntIntInt);
  jit_ret();
  end = jit_get_ip().ptr;

  jit_flush_code(start, end);

  return callback;
};

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

%typemap(in)(void (* callback)( void ) ){
  $1 = MakeSCMCallback_V_V($input);
}

%typemap(in)( void (* callback)( int ) ){
  $1 = MakeSCMCallback_V_I($input);
}

%typemap(in)( void (* callback)( int, int ) ){
  $1 = MakeSCMCallback_V_II($input);
}

%typemap(in)( void (* callback)( int, int, int ) ){
  $1 = MakeSCMCallback_V_III($input);
}

%typemap(in)( void (* callback)( int, int, int, int ) ){
  $1 = MakeSCMCallback_V_IIII($input);
}

%typemap(in)( void (* callback)( unsigned char, int, int ) ){
  $1 = MakeSCMCallback_V_CII($input);
}

%typemap(in)( void (* callback)( unsigned int, int, int, int ) ){
  $1 = MakeSCMCallback_V_UIII($input);
}

