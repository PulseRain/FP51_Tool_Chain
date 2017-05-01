
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IDENTIFIER = 258,
     TYPE_NAME = 259,
     ADDRSPACE_NAME = 260,
     CONSTANT = 261,
     SIZEOF = 262,
     ALIGNOF = 263,
     TYPEOF = 264,
     OFFSETOF = 265,
     PTR_OP = 266,
     INC_OP = 267,
     DEC_OP = 268,
     LEFT_OP = 269,
     RIGHT_OP = 270,
     LE_OP = 271,
     GE_OP = 272,
     EQ_OP = 273,
     NE_OP = 274,
     AND_OP = 275,
     OR_OP = 276,
     MUL_ASSIGN = 277,
     DIV_ASSIGN = 278,
     MOD_ASSIGN = 279,
     ADD_ASSIGN = 280,
     SUB_ASSIGN = 281,
     LEFT_ASSIGN = 282,
     RIGHT_ASSIGN = 283,
     AND_ASSIGN = 284,
     XOR_ASSIGN = 285,
     OR_ASSIGN = 286,
     TYPEDEF = 287,
     EXTERN = 288,
     STATIC = 289,
     AUTO = 290,
     REGISTER = 291,
     CODE = 292,
     EEPROM = 293,
     INTERRUPT = 294,
     SFR = 295,
     SFR16 = 296,
     SFR32 = 297,
     ADDRESSMOD = 298,
     STATIC_ASSERT = 299,
     AT = 300,
     SBIT = 301,
     REENTRANT = 302,
     USING = 303,
     XDATA = 304,
     DATA = 305,
     IDATA = 306,
     PDATA = 307,
     VAR_ARGS = 308,
     CRITICAL = 309,
     NONBANKED = 310,
     BANKED = 311,
     SHADOWREGS = 312,
     SD_WPARAM = 313,
     SD_BOOL = 314,
     SD_CHAR = 315,
     SD_SHORT = 316,
     SD_INT = 317,
     SD_LONG = 318,
     SIGNED = 319,
     UNSIGNED = 320,
     SD_FLOAT = 321,
     DOUBLE = 322,
     FIXED16X16 = 323,
     SD_CONST = 324,
     VOLATILE = 325,
     SD_VOID = 326,
     BIT = 327,
     STRUCT = 328,
     UNION = 329,
     ENUM = 330,
     RANGE = 331,
     SD_FAR = 332,
     CASE = 333,
     DEFAULT = 334,
     IF = 335,
     ELSE = 336,
     SWITCH = 337,
     WHILE = 338,
     DO = 339,
     FOR = 340,
     GOTO = 341,
     CONTINUE = 342,
     BREAK = 343,
     RETURN = 344,
     NAKED = 345,
     JAVANATIVE = 346,
     OVERLAY = 347,
     TRAP = 348,
     STRING_LITERAL = 349,
     INLINEASM = 350,
     IFX = 351,
     ADDRESS_OF = 352,
     GET_VALUE_AT_ADDRESS = 353,
     SPIL = 354,
     UNSPIL = 355,
     GETHBIT = 356,
     GETABIT = 357,
     GETBYTE = 358,
     GETWORD = 359,
     BITWISEAND = 360,
     UNARYMINUS = 361,
     IPUSH = 362,
     IPOP = 363,
     PCALL = 364,
     ENDFUNCTION = 365,
     JUMPTABLE = 366,
     RRC = 367,
     RLC = 368,
     CAST = 369,
     CALL = 370,
     PARAM = 371,
     NULLOP = 372,
     BLOCK = 373,
     LABEL = 374,
     RECEIVE = 375,
     SEND = 376,
     ARRAYINIT = 377,
     DUMMY_READ_VOLATILE = 378,
     ENDCRITICAL = 379,
     SWAP = 380,
     INLINE = 381,
     NORETURN = 382,
     RESTRICT = 383,
     SMALLC = 384,
     PRESERVES_REGS = 385,
     Z88DK_FASTCALL = 386,
     Z88DK_CALLEE = 387,
     ALIGNAS = 388,
     GENERIC = 389,
     GENERIC_ASSOC_LIST = 390,
     GENERIC_ASSOCIATION = 391,
     ASM = 392
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 74 "src/SDCC.y"

    symbol     *sym;        /* symbol table pointer                   */
    structdef  *sdef;       /* structure definition                   */
    char       yychar[SDCC_NAME_MAX+1];
    sym_link   *lnk;        /* declarator  or specifier               */
    int        yyint;       /* integer value returned                 */
    value      *val;        /* for integer constant                   */
    initList   *ilist;      /* initial list                           */
    designation*dsgn;       /* designator                             */
    const char *yystr;      /* pointer to dynamicaly allocated string */
    ast        *asts;       /* expression tree                        */



/* Line 1676 of yacc.c  */
#line 204 "src/SDCCy.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


