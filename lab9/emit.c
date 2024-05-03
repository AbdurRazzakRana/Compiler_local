// Author: Abdur Razzak
// Lab: Lab 9
// emit.c implements emit.h
// Resonpsible to emits the MIPS code


#include<string.h>
#include "ast.h"
#include "emit_private.h"
#include "emit.h"

// PRE: possible label, command and comment
// POST: formatted output the file
void emit(FILE * fp, char* label, char* command, char* comment){
 if (strcmp("", comment) == 0){
  if(strcmp("", label) == 0){
   fprintf(fp, "\t%s\t\t\n", command);
  }
  else {
   fprintf(fp, "%s:\t%s\t\t\n", label, command);
  }
 }
 else {
  if(strcmp("", label) == 0){
   fprintf(fp, "\t%s\t\t# %s\n", command, comment);
  }
  else {
   fprintf(fp, "%s:\t%s\t\t# %s\n", label, command, comment);
  }
 }
}

// PRE: PTR to AST, PTR to FILE
// POST: prints out MIPS code into file, using helper functions
void EMIT(ASTnode* p, FILE* fp){
 if (p== NULL) return;
 if (fp == NULL) return;
 fprintf(fp, "# MIPS CODE GENERATED BY Compliler Class\n\n");
 fprintf(fp, ".data\n");
 EMIT_STRINGS(p,fp);
 fprintf(fp, "\n.align 2\n");
 EMIT_GLOBALS(p, fp);
 fprintf(fp, ".text\n\n");
 fprintf(fp, ".globl main\n\n");

 fi = malloc(sizeof(struct FunctionInfo));
 EMIT_AST(p, fp);
}