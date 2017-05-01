
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton implementation for Bison's Yacc-like parsers in C
   
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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.4.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1

/* Using locations.  */
#define YYLSP_NEEDED 0



/* Copy the first part of user declarations.  */

/* Line 189 of yacc.c  */
#line 24 "src/SDCC.y"

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "SDCCglobl.h"
#include "SDCCsymt.h"
#include "SDCChasht.h"
#include "SDCCval.h"
#include "SDCCmem.h"
#include "SDCCast.h"
#include "port.h"
#include "newalloc.h"
#include "SDCCerr.h"
#include "SDCCutil.h"
#include "SDCCbtree.h"
#include "SDCCopt.h"

extern int yyerror (char *);
extern FILE     *yyin;
int NestLevel = 0;      /* current NestLevel       */
int stackPtr  = 1;      /* stack pointer           */
int xstackPtr = 0;      /* xstack pointer          */
int reentrant = 0;
int blockNo   = 0;      /* sequential block number  */
int currBlockno=0;
int inCriticalFunction = 0;
int inCriticalBlock = 0;
int seqPointNo= 1;      /* sequence point number */
int ignoreTypedefType=0;
extern int yylex();
int yyparse(void);
extern int noLineno;
char lbuff[1024];       /* local buffer */
char function_name[256] = {0};

/* break & continue stacks */
STACK_DCL(continueStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(breakStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(forStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(swStk   ,ast   *,MAX_NEST_LEVEL)
STACK_DCL(blockNum,int,MAX_NEST_LEVEL*3)

value *cenum = NULL;        /* current enumeration  type chain*/
bool uselessDecl = TRUE;

#define YYDEBUG 1



/* Line 189 of yacc.c  */
#line 123 "src/SDCCy.c"

/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif


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

/* Line 214 of yacc.c  */
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



/* Line 214 of yacc.c  */
#line 311 "src/SDCCy.c"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif


/* Copy the second part of user declarations.  */


/* Line 264 of yacc.c  */
#line 323 "src/SDCCy.c"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int yyi)
#else
static int
YYID (yyi)
    int yyi;
#endif
{
  return yyi;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef _STDLIB_H
#      define _STDLIB_H 1
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined _STDLIB_H \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef _STDLIB_H
#    define _STDLIB_H 1
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (YYID (0))
#  endif
# endif

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)				\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack_alloc, Stack, yysize);			\
	Stack = &yyptr->Stack_alloc;					\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  116
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   2113

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  162
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  121
/* YYNRULES -- Number of rules.  */
#define YYNRULES  327
/* YYNRULES -- Number of states.  */
#define YYNSTATES  519

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   392

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   150,     2,     2,     2,   152,   145,     2,
     138,   139,   146,   147,   143,   148,   140,   151,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,   144,   159,
     153,   158,   154,   157,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,   141,     2,   142,   155,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   160,   156,   161,   149,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      95,    96,    97,    98,    99,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,   122,   123,   124,
     125,   126,   127,   128,   129,   130,   131,   132,   133,   134,
     135,   136,   137
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint16 yyprhs[] =
{
       0,     0,     3,     4,     6,     8,    11,    13,    15,    17,
      18,    22,    23,    28,    30,    33,    36,    38,    40,    42,
      44,    46,    48,    50,    52,    54,    56,    58,    60,    62,
      64,    69,    71,    74,    76,    77,    82,    87,    89,    91,
      93,    97,    99,   106,   108,   112,   116,   120,   122,   124,
     129,   133,   138,   139,   144,   145,   150,   153,   156,   158,
     162,   164,   167,   170,   173,   176,   181,   186,   189,   196,
     198,   200,   202,   204,   206,   208,   210,   215,   217,   221,
     225,   229,   231,   235,   239,   241,   245,   249,   251,   255,
     259,   263,   267,   269,   273,   277,   279,   283,   285,   289,
     291,   295,   297,   298,   303,   305,   306,   311,   313,   314,
     321,   323,   327,   329,   331,   333,   335,   337,   339,   341,
     343,   345,   347,   349,   351,   352,   357,   359,   362,   366,
     369,   371,   373,   376,   378,   381,   383,   386,   388,   391,
     393,   397,   399,   403,   404,   406,   409,   411,   414,   418,
     421,   423,   425,   427,   429,   431,   433,   435,   440,   445,
     447,   450,   452,   454,   456,   458,   460,   462,   464,   466,
     468,   470,   472,   474,   476,   478,   480,   482,   484,   486,
     488,   490,   492,   495,   497,   499,   501,   503,   505,   507,
     509,   512,   514,   516,   517,   524,   527,   529,   531,   533,
     534,   536,   538,   541,   545,   547,   551,   553,   556,   560,
     561,   566,   572,   575,   577,   580,   584,   587,   590,   591,
     593,   596,   598,   600,   602,   605,   607,   610,   612,   616,
     620,   625,   629,   630,   636,   641,   643,   646,   649,   653,
     655,   657,   659,   662,   664,   668,   670,   674,   676,   680,
     683,   685,   687,   690,   692,   694,   697,   701,   704,   708,
     712,   717,   720,   724,   728,   729,   735,   737,   741,   746,
     749,   754,   761,   763,   765,   767,   769,   771,   773,   775,
     777,   779,   782,   785,   788,   791,   795,   796,   800,   802,
     804,   807,   811,   815,   820,   823,   825,   828,   830,   833,
     835,   838,   841,   842,   843,   851,   852,   859,   861,   863,
     865,   866,   873,   881,   891,   900,   901,   903,   907,   910,
     913,   916,   920,   922,   928,   931,   936,   942
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int16 yyrhs[] =
{
     163,     0,    -1,    -1,   164,    -1,   165,    -1,   164,   165,
      -1,   166,    -1,   205,    -1,   281,    -1,    -1,   236,   167,
     171,    -1,    -1,   206,   236,   168,   171,    -1,   170,    -1,
     170,   169,    -1,    48,   204,    -1,    47,    -1,    54,    -1,
      90,    -1,    91,    -1,    92,    -1,    55,    -1,    57,    -1,
      58,    -1,    56,    -1,   217,    -1,    93,    -1,   129,    -1,
     131,    -1,   132,    -1,   130,   138,   245,   139,    -1,   264,
      -1,   265,   264,    -1,   282,    -1,    -1,   172,   140,   173,
     282,    -1,   172,   141,   202,   142,    -1,   282,    -1,     6,
      -1,   178,    -1,   138,   202,   139,    -1,   175,    -1,   134,
     138,   200,   143,   176,   139,    -1,   177,    -1,   176,   143,
     177,    -1,   249,   144,   200,    -1,    79,   144,   200,    -1,
      94,    -1,   174,    -1,   179,   141,   202,   142,    -1,   179,
     138,   139,    -1,   179,   138,   182,   139,    -1,    -1,   179,
     140,   180,   282,    -1,    -1,   179,    11,   181,   282,    -1,
     179,    12,    -1,   179,    13,    -1,   200,    -1,   200,   143,
     182,    -1,   179,    -1,    12,   183,    -1,    13,   183,    -1,
     184,   185,    -1,     7,   183,    -1,     7,   138,   249,   139,
      -1,     8,   138,   249,   139,    -1,     9,   183,    -1,    10,
     138,   249,   143,   172,   139,    -1,   145,    -1,   146,    -1,
     147,    -1,   148,    -1,   149,    -1,   150,    -1,   183,    -1,
     138,   249,   139,   185,    -1,   185,    -1,   186,   146,   185,
      -1,   186,   151,   185,    -1,   186,   152,   185,    -1,   186,
      -1,   187,   147,   186,    -1,   187,   148,   186,    -1,   187,
      -1,   188,    14,   187,    -1,   188,    15,   187,    -1,   188,
      -1,   189,   153,   188,    -1,   189,   154,   188,    -1,   189,
      16,   188,    -1,   189,    17,   188,    -1,   189,    -1,   190,
      18,   189,    -1,   190,    19,   189,    -1,   190,    -1,   191,
     145,   190,    -1,   191,    -1,   192,   155,   191,    -1,   192,
      -1,   193,   156,   192,    -1,   193,    -1,    -1,   194,    20,
     195,   193,    -1,   194,    -1,    -1,   196,    21,   197,   194,
      -1,   196,    -1,    -1,   196,   157,   199,   202,   144,   198,
      -1,   198,    -1,   185,   201,   200,    -1,   158,    -1,    22,
      -1,    23,    -1,    24,    -1,    25,    -1,    26,    -1,    27,
      -1,    28,    -1,    29,    -1,    30,    -1,    31,    -1,   200,
      -1,    -1,   202,   143,   203,   200,    -1,   198,    -1,   206,
     159,    -1,   206,   208,   159,    -1,   255,   159,    -1,   207,
      -1,   214,    -1,   214,   207,    -1,   218,    -1,   218,   207,
      -1,   215,    -1,   215,   207,    -1,   216,    -1,   216,   207,
      -1,   209,    -1,   208,   143,   209,    -1,   234,    -1,   234,
     158,   253,    -1,    -1,   211,    -1,   212,   158,    -1,   213,
      -1,   212,   213,    -1,   141,   204,   142,    -1,   140,   282,
      -1,    32,    -1,    33,    -1,    34,    -1,    35,    -1,    36,
      -1,   126,    -1,   127,    -1,   133,   138,   249,   139,    -1,
     133,   138,   204,   139,    -1,    39,    -1,    39,   204,    -1,
      59,    -1,    60,    -1,    61,    -1,    62,    -1,    63,    -1,
      64,    -1,    65,    -1,    71,    -1,    69,    -1,    70,    -1,
     128,    -1,     5,    -1,    66,    -1,    68,    -1,    49,    -1,
      37,    -1,    38,    -1,    50,    -1,    51,    -1,    52,    -1,
      72,    -1,    45,   204,    -1,   221,    -1,   230,    -1,     4,
      -1,   219,    -1,    46,    -1,   220,    -1,    40,    -1,    40,
      56,    -1,    41,    -1,    42,    -1,    -1,   223,   224,   222,
     160,   226,   161,    -1,   223,   225,    -1,    73,    -1,    74,
      -1,   225,    -1,    -1,   282,    -1,   227,    -1,   226,   227,
      -1,   243,   228,   159,    -1,   229,    -1,   228,   143,   229,
      -1,   234,    -1,   144,   204,    -1,   234,   144,   204,    -1,
      -1,    75,   160,   231,   161,    -1,    75,   282,   160,   231,
     161,    -1,    75,   282,    -1,   232,    -1,   231,   143,    -1,
     231,   143,   232,    -1,   282,   233,    -1,   158,   204,    -1,
      -1,   235,    -1,   241,   235,    -1,   237,    -1,   238,    -1,
     237,    -1,   241,   237,    -1,   239,    -1,   239,   169,    -1,
     282,    -1,   138,   234,   139,    -1,   235,   141,   142,    -1,
     235,   141,   204,   142,    -1,   238,   138,   139,    -1,    -1,
     238,   138,   240,   246,   139,    -1,   238,   138,   245,   139,
      -1,   242,    -1,   242,   243,    -1,   242,   241,    -1,   242,
     243,   241,    -1,   146,    -1,   244,    -1,   218,    -1,   244,
     218,    -1,   282,    -1,   245,   143,   282,    -1,   247,    -1,
     247,   143,    53,    -1,   248,    -1,   247,   143,   248,    -1,
     206,   234,    -1,   249,    -1,   206,    -1,   206,   250,    -1,
     241,    -1,   251,    -1,   241,   251,    -1,   138,   250,   139,
      -1,   141,   142,    -1,   141,   204,   142,    -1,   251,   141,
     142,    -1,   251,   141,   204,   142,    -1,   138,   139,    -1,
     138,   246,   139,    -1,   251,   138,   139,    -1,    -1,   251,
     138,   252,   246,   139,    -1,   200,    -1,   160,   254,   161,
      -1,   160,   254,   143,   161,    -1,   210,   253,    -1,   254,
     143,   210,   253,    -1,    44,   138,   204,   143,    94,   139,
      -1,   259,    -1,   264,    -1,   267,    -1,   269,    -1,   275,
      -1,   278,    -1,   258,    -1,   280,    -1,    54,    -1,   257,
     256,    -1,   260,   256,    -1,   260,   161,    -1,   282,   144,
      -1,    78,   204,   144,    -1,    -1,    79,   261,   144,    -1,
     160,    -1,   161,    -1,   262,   263,    -1,   262,   266,   263,
      -1,   262,   265,   263,    -1,   262,   265,   266,   263,    -1,
       1,   159,    -1,   205,    -1,   265,   205,    -1,   256,    -1,
     266,   256,    -1,   159,    -1,   202,   159,    -1,    81,   256,
      -1,    -1,    -1,    80,   138,   202,   139,   270,   256,   268,
      -1,    -1,    82,   138,   202,   139,   271,   256,    -1,    83,
      -1,    84,    -1,    85,    -1,    -1,   272,   138,   202,   139,
     276,   256,    -1,   273,   256,    83,   138,   202,   139,   159,
      -1,   274,   138,   277,   159,   277,   159,   277,   139,   256,
      -1,   274,   138,   205,   277,   159,   277,   139,   256,    -1,
      -1,   202,    -1,    86,   282,   159,    -1,    87,   159,    -1,
      88,   159,    -1,    89,   159,    -1,    89,   202,   159,    -1,
      94,    -1,   137,   138,   279,   139,   159,    -1,    95,   159,
      -1,    43,   282,   282,   159,    -1,    43,   282,    69,   282,
     159,    -1,     3,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   148,   148,   151,   155,   156,   160,   164,   185,   190,
     189,   204,   203,   229,   230,   234,   238,   241,   244,   247,
     250,   253,   259,   262,   265,   271,   277,   283,   286,   289,
     292,   312,   313,   321,   322,   322,   329,   336,   337,   338,
     339,   340,   344,   348,   349,   353,   354,   358,   385,   386,
     387,   389,   393,   393,   400,   400,   407,   409,   414,   415,
     419,   420,   421,   422,   431,   432,   433,   434,   435,   439,
     440,   441,   442,   443,   444,   448,   449,   453,   454,   455,
     456,   460,   461,   462,   466,   467,   468,   472,   473,   474,
     475,   476,   480,   481,   482,   486,   487,   491,   492,   496,
     497,   501,   502,   502,   507,   508,   508,   513,   514,   514,
     522,   523,   568,   569,   570,   571,   572,   573,   574,   575,
     576,   577,   578,   582,   583,   583,   587,   591,   615,   650,
     656,   659,   660,   665,   666,   671,   672,   677,   678,   686,
     687,   691,   692,   696,   697,   701,   705,   706,   710,   732,
     736,   740,   744,   748,   752,   759,   763,   770,   776,   791,
     792,   805,   810,   815,   820,   825,   830,   835,   840,   845,
     849,   853,   857,   861,   866,   871,   875,   879,   883,   887,
     891,   895,   903,   910,   915,   921,   930,   934,   942,   946,
     954,   965,   976,   989,   988,  1081,  1111,  1112,  1116,  1117,
    1128,  1147,  1148,  1161,  1186,  1187,  1195,  1196,  1211,  1229,
    1233,  1238,  1259,  1275,  1276,  1277,  1285,  1305,  1318,  1332,
    1333,  1341,  1342,  1346,  1352,  1362,  1363,  1395,  1396,  1397,
    1406,  1438,  1443,  1442,  1476,  1486,  1487,  1500,  1506,  1546,
    1553,  1556,  1558,  1566,  1567,  1575,  1576,  1580,  1581,  1589,
    1604,  1614,  1622,  1648,  1649,  1650,  1657,  1658,  1663,  1669,
    1675,  1683,  1684,  1685,  1698,  1697,  1728,  1729,  1730,  1734,
    1735,  1744,  1755,  1756,  1757,  1758,  1759,  1760,  1761,  1762,
    1766,  1777,  1786,  1787,  1800,  1802,  1809,  1809,  1819,  1830,
    1838,  1839,  1840,  1845,  1852,  1856,  1869,  1895,  1896,  1900,
    1901,  1905,  1906,  1911,  1911,  1919,  1919,  1944,  1958,  1973,
    1998,  1998,  2007,  2017,  2042,  2079,  2080,  2084,  2094,  2107,
    2117,  2126,  2138,  2142,  2152,  2165,  2176,  2194
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IDENTIFIER", "TYPE_NAME",
  "ADDRSPACE_NAME", "CONSTANT", "SIZEOF", "ALIGNOF", "TYPEOF", "OFFSETOF",
  "PTR_OP", "INC_OP", "DEC_OP", "LEFT_OP", "RIGHT_OP", "LE_OP", "GE_OP",
  "EQ_OP", "NE_OP", "AND_OP", "OR_OP", "MUL_ASSIGN", "DIV_ASSIGN",
  "MOD_ASSIGN", "ADD_ASSIGN", "SUB_ASSIGN", "LEFT_ASSIGN", "RIGHT_ASSIGN",
  "AND_ASSIGN", "XOR_ASSIGN", "OR_ASSIGN", "TYPEDEF", "EXTERN", "STATIC",
  "AUTO", "REGISTER", "CODE", "EEPROM", "INTERRUPT", "SFR", "SFR16",
  "SFR32", "ADDRESSMOD", "STATIC_ASSERT", "AT", "SBIT", "REENTRANT",
  "USING", "XDATA", "DATA", "IDATA", "PDATA", "VAR_ARGS", "CRITICAL",
  "NONBANKED", "BANKED", "SHADOWREGS", "SD_WPARAM", "SD_BOOL", "SD_CHAR",
  "SD_SHORT", "SD_INT", "SD_LONG", "SIGNED", "UNSIGNED", "SD_FLOAT",
  "DOUBLE", "FIXED16X16", "SD_CONST", "VOLATILE", "SD_VOID", "BIT",
  "STRUCT", "UNION", "ENUM", "RANGE", "SD_FAR", "CASE", "DEFAULT", "IF",
  "ELSE", "SWITCH", "WHILE", "DO", "FOR", "GOTO", "CONTINUE", "BREAK",
  "RETURN", "NAKED", "JAVANATIVE", "OVERLAY", "TRAP", "STRING_LITERAL",
  "INLINEASM", "IFX", "ADDRESS_OF", "GET_VALUE_AT_ADDRESS", "SPIL",
  "UNSPIL", "GETHBIT", "GETABIT", "GETBYTE", "GETWORD", "BITWISEAND",
  "UNARYMINUS", "IPUSH", "IPOP", "PCALL", "ENDFUNCTION", "JUMPTABLE",
  "RRC", "RLC", "CAST", "CALL", "PARAM", "NULLOP", "BLOCK", "LABEL",
  "RECEIVE", "SEND", "ARRAYINIT", "DUMMY_READ_VOLATILE", "ENDCRITICAL",
  "SWAP", "INLINE", "NORETURN", "RESTRICT", "SMALLC", "PRESERVES_REGS",
  "Z88DK_FASTCALL", "Z88DK_CALLEE", "ALIGNAS", "GENERIC",
  "GENERIC_ASSOC_LIST", "GENERIC_ASSOCIATION", "ASM", "'('", "')'", "'.'",
  "'['", "']'", "','", "':'", "'&'", "'*'", "'+'", "'-'", "'~'", "'!'",
  "'/'", "'%'", "'<'", "'>'", "'^'", "'|'", "'?'", "'='", "';'", "'{'",
  "'}'", "$accept", "file", "program", "external_definition",
  "function_definition", "$@1", "$@2", "function_attribute",
  "function_attributes", "function_body", "offsetof_member_designator",
  "$@3", "primary_expr", "generic_selection", "generic_assoc_list",
  "generic_association", "string_literal_val", "postfix_expr", "$@4",
  "$@5", "argument_expr_list", "unary_expr", "unary_operator", "cast_expr",
  "multiplicative_expr", "additive_expr", "shift_expr", "relational_expr",
  "equality_expr", "and_expr", "exclusive_or_expr", "inclusive_or_expr",
  "logical_and_expr", "$@6", "logical_or_expr", "$@7", "conditional_expr",
  "$@8", "assignment_expr", "assignment_operator", "expr", "$@9",
  "constant_expr", "declaration", "declaration_specifiers",
  "declaration_specifiers_", "init_declarator_list", "init_declarator",
  "designation_opt", "designation", "designator_list", "designator",
  "storage_class_specifier", "function_specifier", "alignment_specifier",
  "Interrupt_storage", "type_specifier", "sfr_reg_bit", "sfr_attributes",
  "struct_or_union_specifier", "$@10", "struct_or_union", "opt_stag",
  "stag", "struct_declaration_list", "struct_declaration",
  "struct_declarator_list", "struct_declarator", "enum_specifier",
  "enumerator_list", "enumerator", "opt_assign_expr", "declarator",
  "declarator3", "function_declarator", "declarator2_function_attributes",
  "declarator2", "function_declarator2", "$@11", "pointer",
  "unqualified_pointer", "type_specifier_list", "type_specifier_list_",
  "identifier_list", "parameter_type_list", "parameter_list",
  "parameter_declaration", "type_name", "abstract_declarator",
  "abstract_declarator2", "$@12", "initializer", "initializer_list",
  "static_assert_declaration", "statement", "critical",
  "critical_statement", "labeled_statement", "label", "@13", "start_block",
  "end_block", "compound_statement", "declaration_list", "statement_list",
  "expression_statement", "else_statement", "selection_statement", "$@14",
  "@15", "while", "do", "for", "iteration_statement", "$@16", "expr_opt",
  "jump_statement", "asm_string_literal", "asm_statement", "addressmod",
  "identifier", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317,   318,   319,   320,   321,   322,   323,   324,
     325,   326,   327,   328,   329,   330,   331,   332,   333,   334,
     335,   336,   337,   338,   339,   340,   341,   342,   343,   344,
     345,   346,   347,   348,   349,   350,   351,   352,   353,   354,
     355,   356,   357,   358,   359,   360,   361,   362,   363,   364,
     365,   366,   367,   368,   369,   370,   371,   372,   373,   374,
     375,   376,   377,   378,   379,   380,   381,   382,   383,   384,
     385,   386,   387,   388,   389,   390,   391,   392,    40,    41,
      46,    91,    93,    44,    58,    38,    42,    43,    45,   126,
      33,    47,    37,    60,    62,    94,   124,    63,    61,    59,
     123,   125
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint16 yyr1[] =
{
       0,   162,   163,   163,   164,   164,   165,   165,   165,   167,
     166,   168,   166,   169,   169,   170,   170,   170,   170,   170,
     170,   170,   170,   170,   170,   170,   170,   170,   170,   170,
     170,   171,   171,   172,   173,   172,   172,   174,   174,   174,
     174,   174,   175,   176,   176,   177,   177,   178,   179,   179,
     179,   179,   180,   179,   181,   179,   179,   179,   182,   182,
     183,   183,   183,   183,   183,   183,   183,   183,   183,   184,
     184,   184,   184,   184,   184,   185,   185,   186,   186,   186,
     186,   187,   187,   187,   188,   188,   188,   189,   189,   189,
     189,   189,   190,   190,   190,   191,   191,   192,   192,   193,
     193,   194,   195,   194,   196,   197,   196,   198,   199,   198,
     200,   200,   201,   201,   201,   201,   201,   201,   201,   201,
     201,   201,   201,   202,   203,   202,   204,   205,   205,   205,
     206,   207,   207,   207,   207,   207,   207,   207,   207,   208,
     208,   209,   209,   210,   210,   211,   212,   212,   213,   213,
     214,   214,   214,   214,   214,   215,   215,   216,   216,   217,
     217,   218,   218,   218,   218,   218,   218,   218,   218,   218,
     218,   218,   218,   218,   218,   218,   218,   218,   218,   218,
     218,   218,   218,   218,   218,   218,   218,   219,   219,   220,
     220,   220,   220,   222,   221,   221,   223,   223,   224,   224,
     225,   226,   226,   227,   228,   228,   229,   229,   229,   229,
     230,   230,   230,   231,   231,   231,   232,   233,   233,   234,
     234,   235,   235,   236,   236,   237,   237,   238,   238,   238,
     238,   239,   240,   239,   239,   241,   241,   241,   241,   242,
     243,   244,   244,   245,   245,   246,   246,   247,   247,   248,
     248,   249,   249,   250,   250,   250,   251,   251,   251,   251,
     251,   251,   251,   251,   252,   251,   253,   253,   253,   254,
     254,   255,   256,   256,   256,   256,   256,   256,   256,   256,
     257,   258,   259,   259,   260,   260,   261,   260,   262,   263,
     264,   264,   264,   264,   264,   265,   265,   266,   266,   267,
     267,   268,   268,   270,   269,   271,   269,   272,   273,   274,
     276,   275,   275,   275,   275,   277,   277,   278,   278,   278,
     278,   278,   279,   280,   280,   281,   281,   282
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     0,     1,     1,     2,     1,     1,     1,     0,
       3,     0,     4,     1,     2,     2,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       4,     1,     2,     1,     0,     4,     4,     1,     1,     1,
       3,     1,     6,     1,     3,     3,     3,     1,     1,     4,
       3,     4,     0,     4,     0,     4,     2,     2,     1,     3,
       1,     2,     2,     2,     2,     4,     4,     2,     6,     1,
       1,     1,     1,     1,     1,     1,     4,     1,     3,     3,
       3,     1,     3,     3,     1,     3,     3,     1,     3,     3,
       3,     3,     1,     3,     3,     1,     3,     1,     3,     1,
       3,     1,     0,     4,     1,     0,     4,     1,     0,     6,
       1,     3,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     0,     4,     1,     2,     3,     2,
       1,     1,     2,     1,     2,     1,     2,     1,     2,     1,
       3,     1,     3,     0,     1,     2,     1,     2,     3,     2,
       1,     1,     1,     1,     1,     1,     1,     4,     4,     1,
       2,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     2,     1,     1,     1,     1,     1,     1,     1,
       2,     1,     1,     0,     6,     2,     1,     1,     1,     0,
       1,     1,     2,     3,     1,     3,     1,     2,     3,     0,
       4,     5,     2,     1,     2,     3,     2,     2,     0,     1,
       2,     1,     1,     1,     2,     1,     2,     1,     3,     3,
       4,     3,     0,     5,     4,     1,     2,     2,     3,     1,
       1,     1,     2,     1,     3,     1,     3,     1,     3,     2,
       1,     1,     2,     1,     1,     2,     3,     2,     3,     3,
       4,     2,     3,     3,     0,     5,     1,     3,     4,     2,
       4,     6,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     2,     2,     2,     2,     3,     0,     3,     1,     1,
       2,     3,     3,     4,     2,     1,     2,     1,     2,     1,
       2,     2,     0,     0,     7,     0,     6,     1,     1,     1,
       0,     6,     7,     9,     8,     0,     1,     3,     2,     2,
       2,     3,     1,     5,     2,     4,     5,     1
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint16 yydefact[] =
{
       2,   327,   185,   172,   150,   151,   152,   153,   154,   176,
     177,   189,   191,   192,     0,     0,     0,   187,   175,   178,
     179,   180,   161,   162,   163,   164,   165,   166,   167,   173,
     174,   169,   170,   168,   181,   196,   197,     0,   155,   156,
     171,     0,     0,   239,     0,     3,     4,     6,     7,     0,
     130,   131,   135,   137,   133,   186,   188,   183,   199,   184,
       0,     9,   223,   222,   225,     0,   235,     0,     8,   227,
     190,     0,     0,    38,     0,     0,     0,     0,     0,     0,
      47,     0,     0,    69,    70,    71,    72,    73,    74,    48,
      41,    39,    60,    75,     0,    77,    81,    84,    87,    92,
      95,    97,    99,   101,   104,   107,   126,   182,    37,     0,
     212,     0,     0,   219,   221,     0,     1,     5,   127,     0,
     139,   141,    11,     0,   132,   136,   138,   134,   193,   195,
     200,     0,     0,   232,   159,    16,     0,    17,    21,    24,
      22,    23,    18,    19,    20,    26,    27,     0,    28,    29,
     226,    13,    25,   224,   241,   237,   236,   240,   129,     0,
       0,     0,     0,    64,     0,     0,    67,     0,    61,    62,
       0,    77,   110,   123,     0,   251,     0,    54,    56,    57,
       0,    52,     0,    63,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     102,   105,   108,     0,   213,   218,     0,     0,     0,   228,
     220,     0,   128,     0,     0,     0,   229,     0,     0,   288,
      10,   295,     0,     0,    31,     0,   231,     0,     0,   243,
     160,    15,     0,    14,   238,   242,     0,   325,     0,     0,
       0,     0,     0,   113,   114,   115,   116,   117,   118,   119,
     120,   121,   122,   112,     0,    40,   124,     0,     0,   253,
     252,   254,     0,     0,    50,     0,    58,     0,     0,    78,
      79,    80,    82,    83,    85,    86,    90,    91,    88,    89,
      93,    94,    96,    98,   100,     0,     0,     0,   214,   210,
       0,   216,     0,   158,   157,   140,   143,   266,   142,    12,
       0,   230,   294,   280,     0,   286,     0,     0,   307,   308,
     309,     0,     0,     0,     0,     0,     0,   299,   289,     0,
     297,     0,   278,   272,     0,   290,   273,     0,     0,   274,
     275,     0,     0,     0,   276,   277,   279,    37,   296,    32,
     251,     0,   245,   247,   250,   234,     0,     0,   326,     0,
      65,    66,     0,     0,   111,     0,   261,     0,     0,   257,
       0,   255,   264,     0,    76,    55,    51,     0,    53,    49,
     103,   106,     0,   215,   217,   211,     0,     0,     0,   144,
       0,   146,     0,     0,   201,   209,     0,     0,     0,     0,
       0,   318,   319,   320,     0,   324,     0,   300,   281,   283,
     282,   292,     0,   298,   291,     0,     0,   315,   284,     0,
     249,   253,   233,     0,   244,    30,   271,     0,    33,     0,
       0,    43,     0,   125,   262,   256,   258,   263,     0,   259,
       0,    59,     0,   149,     0,   269,   145,   147,   143,   267,
     194,   202,     0,     0,   204,   206,   285,   287,     0,     0,
     317,   321,   322,     0,   293,     0,     0,   316,   315,     0,
     246,   248,    68,    34,     0,     0,    42,     0,     0,     0,
     260,   109,   148,   268,     0,   207,   209,   203,     0,   303,
     305,     0,   310,     0,     0,   315,     0,     0,    46,    44,
      45,   265,   270,   205,   208,     0,     0,   323,     0,     0,
     315,     0,    35,    36,   302,   306,   311,     0,     0,   315,
       0,   304,   312,     0,     0,   301,   314,     0,   313
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,    44,    45,    46,    47,   132,   214,   150,   151,   220,
     417,   486,    89,    90,   420,   421,    91,    92,   267,   263,
     265,    93,    94,   171,    96,    97,    98,    99,   100,   101,
     102,   103,   104,   285,   105,   286,   172,   287,   173,   254,
     319,   355,   107,   221,   175,    50,   119,   120,   378,   379,
     380,   381,    51,    52,    53,   152,    54,    55,    56,    57,
     215,    58,   128,   129,   383,   384,   443,   444,    59,   203,
     204,   291,   121,   113,    61,   114,    63,    64,   227,   115,
      66,   385,   157,   228,   357,   342,   343,   344,   260,   261,
     428,   298,   382,    67,   320,   321,   322,   323,   324,   387,
     223,   325,   326,   225,   328,   329,   511,   330,   495,   496,
     331,   332,   333,   334,   498,   459,   335,   453,   336,    68,
     108
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -418
static const yytype_int16 yypact[] =
{
    1526,  -418,  -418,  -418,  -418,  -418,  -418,  -418,  -418,  -418,
    -418,   -16,  -418,  -418,    44,   -78,  1342,  -418,  -418,  -418,
    -418,  -418,  -418,  -418,  -418,  -418,  -418,  -418,  -418,  -418,
    -418,  -418,  -418,  -418,  -418,  -418,  -418,     5,  -418,  -418,
    -418,   -63,    15,  -418,    84,  1526,  -418,  -418,  -418,     8,
    -418,  1980,  1980,  1980,  1980,  -418,  -418,  -418,    44,  -418,
     -55,  -418,   -82,   -45,   832,    12,  1730,   -64,  -418,  -418,
    -418,    20,  1342,  -418,  1359,   -24,  1407,    -8,  1407,  1407,
    -418,     7,  1159,  -418,  -418,  -418,  -418,  -418,  -418,  -418,
    -418,  -418,    99,  -418,  1342,  -418,    45,    88,    93,    39,
     223,     4,   -12,    38,   142,    -2,  -418,  -418,  -418,    44,
      42,  1159,    70,   -55,  -418,    12,  -418,  -418,  -418,   -71,
    -418,    54,  -418,    12,  -418,  -418,  -418,  -418,  -418,   114,
    -418,  1109,   739,    18,  1342,  -418,  1342,  -418,  -418,  -418,
    -418,  -418,  -418,  -418,  -418,  -418,  -418,   116,  -418,  -418,
    -418,   832,  -418,   -82,  -418,  -418,   113,  1928,  -418,    44,
     121,   134,  1159,  -418,  1980,  1342,  -418,  1980,  -418,  -418,
    1342,   369,  -418,  -418,  -107,    -4,   143,  -418,  -418,  -418,
    1176,  -418,  1342,  -418,  1342,  1342,  1342,  1342,  1342,  1342,
    1342,  1342,  1342,  1342,  1342,  1342,  1342,  1342,  1342,  1342,
    -418,  -418,  -418,   -99,  -418,   128,    44,   148,   154,  -418,
     -55,    15,  -418,   310,   739,   137,  -418,   152,   139,  -418,
    -418,  -418,     8,   496,  -418,   739,  -418,  1980,  -100,  -418,
    -418,  -418,    44,  -418,  -418,  -418,   144,  -418,   207,   163,
     165,   164,   166,  -418,  -418,  -418,  -418,  -418,  -418,  -418,
    -418,  -418,  -418,  -418,  1342,  -418,  -418,  1691,  1259,   -72,
    -418,    86,  1342,    44,  -418,   167,   169,    44,   102,  -418,
    -418,  -418,    45,    45,    88,    88,    93,    93,    93,    93,
      39,    39,   223,     4,   -12,  1342,  1342,  1342,    44,  -418,
    1342,  -418,   -91,  -418,  -418,  -418,   110,  -418,  -418,  -418,
    1928,  -418,  -418,  -418,  1342,  -418,   172,   177,  -418,  -418,
    -418,    44,   175,   176,   699,   178,   187,  -418,  -418,   -46,
    -418,   822,  -418,  -418,   586,  -418,  -418,   496,   604,  -418,
    -418,   193,   822,   198,  -418,  -418,  -418,   194,  -418,  -418,
      10,   200,   199,  -418,  -418,  -418,    44,    61,  -418,   202,
    -418,  -418,    44,  1829,  -418,  1342,  -418,   205,   208,  -418,
     201,    86,   210,  1324,  -418,  -418,  -418,  1342,  -418,  -418,
      38,   142,   118,  -418,  -418,  -418,    44,  1342,   310,  -418,
     -60,  -418,   -70,   938,  -418,    14,   206,   209,  1342,  1342,
     192,  -418,  -418,  -418,   -42,  -418,   261,  -418,  -418,  -418,
    -418,  -418,   604,  -418,  -418,  1342,   273,  1011,  -418,  1576,
    -418,    25,  -418,  1878,  -418,  -418,  -418,   125,  -418,   213,
      71,  -418,   215,  -418,  -418,  -418,  -418,  -418,  1980,  -418,
     218,  -418,  1342,  -418,   219,  -418,  -418,  -418,  -111,  -418,
    -418,  -418,  1342,   -39,  -418,   220,  -418,  -418,    76,    82,
    -418,  -418,  -418,   224,  -418,    90,   227,   231,  1342,   216,
    -418,  -418,  -418,  -418,  1342,  1342,  -418,  1829,  1342,   228,
    -418,  -418,  -418,  -418,   310,  -418,    14,  -418,  1342,  -418,
    -418,   221,  -418,  1342,   222,  1342,    44,   130,  -418,  -418,
    -418,  -418,  -418,  -418,  -418,   822,   822,  -418,   822,    95,
    1342,   225,  -418,  -418,   285,  -418,  -418,   229,   238,  1342,
     822,  -418,  -418,   822,   239,  -418,  -418,   822,  -418
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -418,  -418,  -418,   334,  -418,  -418,  -418,   232,  -418,   168,
    -418,  -418,  -418,  -418,  -418,   -81,  -418,  -418,  -418,  -418,
      34,    62,  -418,   -15,    91,    94,    -6,    96,   211,   217,
     226,   120,   117,  -418,  -418,  -418,    -9,  -418,  -160,  -418,
     -18,  -418,    -5,     6,     3,   204,  -418,   195,   -31,  -418,
    -418,    41,  -418,  -418,  -418,  -418,   -54,  -418,  -418,  -418,
    -418,  -418,  -418,  -418,  -418,    31,  -418,   -58,  -418,   233,
     131,  -418,   -40,     9,   373,   203,  -418,  -418,  -418,    33,
    -418,   358,  -418,   196,  -223,  -418,    13,   -77,  -241,  -221,
    -418,  -356,  -418,  -418,  -297,  -418,  -418,  -418,  -418,  -418,
    -418,  -302,   -86,   212,   103,  -418,  -418,  -418,  -418,  -418,
    -418,  -418,  -418,  -418,  -418,  -417,  -418,  -418,  -418,  -418,
       0
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -222
static const yytype_int16 yytable[] =
{
      69,    95,   112,    49,   341,   176,    48,   106,     1,    60,
     242,     1,   154,     1,    71,     1,   358,     1,     1,   201,
     266,     1,   435,     1,   398,   401,   404,   400,     1,   376,
     377,   403,   255,    65,   208,   406,   256,   110,   361,   345,
      70,   484,    69,   346,   288,    69,   224,     1,    49,    69,
     473,    48,   288,   297,    60,   191,   192,    95,   130,  -221,
      72,  -221,   289,   106,   174,    69,   257,   161,   501,   258,
     375,   160,   211,   438,    60,   111,  -221,  -221,    65,   183,
     376,   377,   123,   508,   116,   239,   131,   240,   212,   159,
     241,   439,   514,   133,   354,   158,    95,   256,   436,   155,
     454,   256,   106,   235,   476,   403,   207,   189,   190,   205,
     177,   178,   179,   397,   164,    69,    95,   451,   492,    95,
     477,    95,   106,    69,   210,   106,   217,   106,   224,   230,
     167,   231,   210,   229,   257,   222,   163,   258,   166,   339,
     168,   169,    43,   198,   174,   170,    42,   174,   409,   197,
      42,   258,    42,    42,    43,   202,    43,   226,   442,   236,
      43,    43,   200,   409,   268,   109,   258,   118,   358,   269,
     270,   271,    95,    95,    95,    95,    95,    95,    95,    95,
      95,    95,    95,    95,    95,   276,   277,   278,   279,   234,
     361,   184,   193,   194,   199,   423,   185,   186,   504,   505,
     415,   506,   206,    62,   346,   469,   205,   266,   259,   209,
     466,    69,   213,   515,   467,   479,   516,   222,   297,   256,
     518,   480,    69,   337,   362,   256,   222,   363,   222,   482,
     340,   338,   229,   256,   507,   187,   188,   180,   256,   181,
     182,   195,   196,    95,   369,   256,   154,   364,    62,   106,
     376,   377,    62,   360,   232,   124,   125,   126,   127,    43,
     340,   256,   432,   365,   462,   463,   464,   368,   153,   372,
      95,    95,   503,   256,  -198,    95,   422,   238,   272,   273,
     237,   106,   262,   274,   275,   374,   290,   293,   205,    95,
     259,   280,   281,   294,   301,   106,   394,   300,   302,   386,
     410,   349,   350,   348,   351,   488,   366,   352,   490,   353,
     388,   390,   367,     1,   297,   389,    73,    74,    75,    76,
      77,   337,    78,    79,   337,   396,   153,   337,   337,   154,
     222,   405,   337,   338,   391,   392,   407,   395,   408,   412,
      69,   416,   413,   426,   424,   445,   414,   425,    95,   427,
     446,   450,   418,   447,   106,   452,   456,   465,   430,   468,
     470,   472,    95,   481,   478,   483,   510,   491,   106,   112,
     448,   449,   434,   411,   256,   485,   433,   513,   517,   117,
     497,   500,   299,   233,   509,    69,   489,   455,   512,   457,
     422,   243,   244,   245,   246,   247,   248,   249,   250,   251,
     252,   431,   337,   371,    80,   370,   295,   474,   282,    69,
     222,    69,   340,   458,   441,   283,   340,    95,   493,   373,
     210,   437,   122,   471,   156,   284,   461,    95,   347,     0,
     402,   340,     0,   106,     0,   327,   445,   475,     0,   292,
     457,     0,   411,     0,    81,     0,   487,     0,    82,     0,
       0,     0,     0,     0,     0,    83,    84,    85,    86,    87,
      88,     0,     0,    95,     0,   499,     0,   457,     0,   106,
     296,     0,     0,   494,     0,     0,    69,     0,     0,     0,
       0,     0,   457,     0,     0,     0,   502,     0,     0,     0,
       0,   457,     0,     0,     0,   337,   337,   218,   337,     1,
       2,     3,    73,    74,    75,    76,    77,     0,    78,    79,
     337,     0,     0,   337,     0,     0,     0,   337,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   253,     4,     5,
       6,     7,     8,     9,    10,     0,    11,    12,    13,     0,
      15,    16,    17,     0,     0,    18,    19,    20,    21,     0,
     303,     0,     0,     0,     0,    22,    23,    24,    25,    26,
      27,    28,    29,     0,    30,    31,    32,    33,    34,    35,
      36,    37,     0,     0,   304,   305,   306,     0,   307,   308,
     309,   310,   311,   312,   313,   314,     0,   218,     0,     1,
      80,   315,    73,    74,    75,    76,    77,     0,    78,    79,
       0,     0,     0,     0,     0,   218,     0,     1,     0,     0,
      73,    74,    75,    76,    77,     0,    78,    79,     0,     0,
       0,     0,    38,    39,    40,     0,     0,     0,     0,    41,
      81,     0,     0,   316,    82,     0,     0,     0,     0,     0,
     303,    83,    84,    85,    86,    87,    88,     0,     0,     0,
       0,     0,     0,     0,     0,   317,   219,   318,   303,     0,
       0,     0,     0,     0,   304,   305,   306,     0,   307,   308,
     309,   310,   311,   312,   313,   314,     0,     0,     0,     0,
      80,   315,   304,   305,   306,     0,   307,   308,   309,   310,
     311,   312,   313,   314,     0,     0,     0,     0,    80,   315,
       0,     0,     1,     0,     0,    73,    74,    75,    76,    77,
       0,    78,    79,     0,     0,     0,     0,     0,     0,     0,
      81,     0,     0,   316,    82,     0,     0,     0,     0,     0,
       0,    83,    84,    85,    86,    87,    88,     0,    81,     0,
     218,   316,    82,     2,     3,   317,   219,   399,     0,    83,
      84,    85,    86,    87,    88,     0,     0,     0,     0,     0,
       0,     0,     0,   317,   219,   318,     0,     0,     0,     0,
       0,     4,     5,     6,     7,     8,     9,    10,     0,    11,
      12,    13,     0,    15,    16,    17,     0,     0,    18,    19,
      20,    21,     0,    80,     0,     0,     0,     0,    22,    23,
      24,    25,    26,    27,    28,    29,     0,    30,    31,    32,
      33,    34,    35,    36,    37,     0,     0,     0,     0,     0,
       0,     0,     0,   218,     0,     1,     0,     0,    73,    74,
      75,    76,    77,    81,    78,    79,     0,    82,     0,     0,
       0,     0,     0,     0,    83,    84,    85,    86,    87,    88,
       0,     0,     0,     0,     0,     0,     0,     0,   393,     0,
       0,     0,     0,     0,     0,    38,    39,    40,     0,     0,
       0,   134,    41,     0,     0,     0,   303,     0,     0,   135,
     136,     0,     0,     0,     0,     0,   137,   138,   139,   140,
     141,     0,     0,     0,     0,     0,     0,     0,     0,   219,
     304,   305,   306,     0,   307,   308,   309,   310,   311,   312,
     313,   314,     0,     0,     0,     0,    80,   315,     0,     0,
       0,     0,   142,   143,   144,   145,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     2,     3,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    81,     0,     0,   316,
      82,   146,   147,   148,   149,     0,     0,    83,    84,    85,
      86,    87,    88,     0,     0,     9,    10,     0,    11,    12,
      13,   317,   219,    16,    17,     0,     0,    18,    19,    20,
      21,     0,     0,     0,     0,     0,     0,    22,    23,    24,
      25,    26,    27,    28,    29,     0,    30,    31,    32,    33,
      34,    35,    36,    37,     1,     2,     3,    73,    74,    75,
      76,    77,     0,    78,    79,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     4,     5,     6,     7,     8,     9,    10,
       0,    11,    12,    13,     0,    15,    16,    17,     0,     0,
      18,    19,    20,    21,     0,     0,    40,     0,     0,     0,
      22,    23,    24,    25,    26,    27,    28,    29,     0,    30,
      31,    32,    33,    34,    35,    36,    37,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   440,
       0,     0,     0,     0,     0,    80,     0,     0,     0,     0,
       0,     0,     1,     0,     0,    73,    74,    75,    76,    77,
       0,    78,    79,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    38,    39,    40,
       0,     0,     0,     0,    41,    81,     0,     0,     0,    82,
       0,     0,     0,     0,     0,     0,    83,    84,    85,    86,
      87,    88,     1,     2,     3,    73,    74,    75,    76,    77,
       0,    78,    79,     0,     0,     0,     0,     0,     0,     1,
       0,     0,    73,    74,    75,    76,    77,     0,    78,    79,
       0,     4,     5,     6,     7,     8,     9,    10,     0,    11,
      12,    13,     0,    80,    16,    17,     0,     0,    18,    19,
      20,    21,     0,     0,     0,     0,     0,     0,    22,    23,
      24,    25,    26,    27,    28,    29,     0,    30,    31,    32,
      33,    34,    35,    36,    37,     0,     0,     0,     0,     0,
       0,     0,     0,    81,     0,     0,     0,    82,     0,     0,
       0,   216,     0,    80,    83,    84,    85,    86,    87,    88,
       0,     0,     1,     0,     0,    73,    74,    75,    76,    77,
      80,    78,    79,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    38,    39,    40,     0,     0,
       0,     0,    41,    81,     0,     0,     0,    82,     0,     0,
       0,     0,     0,     0,    83,    84,    85,    86,    87,    88,
      81,     0,     0,     0,    82,   264,     0,     0,     0,     0,
       0,    83,    84,    85,    86,    87,    88,     1,     0,     0,
      73,    74,    75,    76,    77,     0,    78,    79,     0,     0,
       0,     0,     0,     0,     0,     1,     0,     0,    73,    74,
      75,    76,    77,    80,    78,    79,     0,     0,     0,     0,
       0,     0,     1,     0,     0,    73,    74,    75,    76,    77,
       0,    78,    79,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    81,     0,     0,     0,    82,     0,     0,
       0,   359,     0,     0,    83,    84,    85,    86,    87,    88,
       1,     0,     0,    73,    74,    75,    76,    77,    80,    78,
      79,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    80,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    80,     0,     0,     0,     0,    81,     0,
       0,     0,    82,     0,     0,     0,   429,     0,     0,    83,
      84,    85,    86,    87,    88,     0,    81,     0,     0,     0,
      82,     0,     0,     0,     0,     0,     0,    83,    84,    85,
      86,    87,    88,    81,     0,     0,     0,   162,     0,     0,
       0,    80,     0,     0,    83,    84,    85,    86,    87,    88,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     1,
       2,     3,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    81,     0,     0,     0,   165,     0,     0,     0,     0,
       0,     0,    83,    84,    85,    86,    87,    88,     4,     5,
       6,     7,     8,     9,    10,     0,    11,    12,    13,    14,
      15,    16,    17,     0,     0,    18,    19,    20,    21,     1,
       2,     3,     0,     0,     0,    22,    23,    24,    25,    26,
      27,    28,    29,     0,    30,    31,    32,    33,    34,    35,
      36,    37,     0,     0,     0,     0,     0,     0,     4,     5,
       6,     7,     8,     9,    10,     0,    11,    12,    13,     0,
       0,    16,    17,     0,     0,    18,    19,    20,    21,     0,
       0,     0,     0,     0,     0,    22,    23,    24,    25,    26,
      27,    28,    29,     0,    30,    31,    32,    33,    34,    35,
      36,    37,    38,    39,    40,     0,     0,     0,     0,    41,
       0,     0,     0,     0,    42,     0,     0,     0,     0,     0,
       0,     0,    43,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     2,     3,     0,     0,     0,
       0,     0,    38,    39,    40,     0,     0,     0,     0,    41,
       0,     0,     0,     0,   409,   356,     0,   258,     0,     0,
       0,     0,    43,     4,     5,     6,     7,     8,     9,    10,
       0,    11,    12,    13,     2,     3,    16,    17,     0,     0,
      18,    19,    20,    21,     0,     0,     0,     0,     0,     0,
      22,    23,    24,    25,    26,    27,    28,    29,     0,    30,
      31,    32,    33,    34,    35,    36,    37,     9,    10,     0,
      11,    12,    13,     0,     0,    16,    17,     0,     0,    18,
      19,    20,    21,     0,     0,     0,     0,     0,     0,    22,
      23,    24,    25,    26,    27,    28,    29,     0,    30,    31,
      32,    33,    34,    35,    36,    37,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    38,    39,    40,
       0,     0,     0,     0,    41,     0,     0,     0,     0,   257,
     356,     0,   258,     2,     3,     0,     0,    43,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    40,     0,
       0,     4,     5,     6,     7,     8,     9,    10,     0,    11,
      12,    13,     0,     0,    16,    17,    43,     0,    18,    19,
      20,    21,     2,     3,     0,     0,     0,     0,    22,    23,
      24,    25,    26,    27,    28,    29,     0,    30,    31,    32,
      33,    34,    35,    36,    37,     0,     0,     0,   419,     0,
       4,     5,     6,     7,     8,     9,    10,     0,    11,    12,
      13,     0,     0,    16,    17,     0,     0,    18,    19,    20,
      21,   460,     2,     3,     0,     0,     0,    22,    23,    24,
      25,    26,    27,    28,    29,     0,    30,    31,    32,    33,
      34,    35,    36,    37,     0,    38,    39,    40,     0,     0,
       0,     0,    41,     0,     0,     9,    10,     0,    11,    12,
      13,     0,     0,    16,    17,     0,     0,    18,    19,    20,
      21,     0,     0,     0,     2,     3,     0,    22,    23,    24,
      25,    26,    27,    28,    29,     0,    30,    31,    32,    33,
      34,    35,    36,    37,    38,    39,    40,     0,     0,     0,
       0,    41,     4,     5,     6,     7,     8,     9,    10,     0,
      11,    12,    13,     0,     0,    16,    17,     0,     0,    18,
      19,    20,    21,     0,     0,     0,     0,     0,     0,    22,
      23,    24,    25,    26,    27,    28,    29,     0,    30,    31,
      32,    33,    34,    35,    36,    37,    40,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    38,    39,    40,     0,
       0,     0,     0,    41
};

static const yytype_int16 yycheck[] =
{
       0,    16,    42,     0,   227,    82,     0,    16,     3,     0,
     170,     3,    66,     3,    14,     3,   257,     3,     3,    21,
     180,     3,   378,     3,   321,   327,   328,   324,     3,   140,
     141,   328,   139,     0,   111,   332,   143,    37,   259,   139,
      56,   458,    42,   143,   143,    45,   132,     3,    45,    49,
     161,    45,   143,   213,    45,    16,    17,    72,    58,   141,
     138,   143,   161,    72,    82,    65,   138,    72,   485,   141,
     161,    71,   143,   143,    65,   138,   158,   159,    45,    94,
     140,   141,    49,   500,     0,   162,   141,   164,   159,    69,
     167,   161,   509,   138,   254,   159,   111,   143,   158,    66,
     402,   143,   111,   157,   143,   402,   111,    14,    15,   109,
      11,    12,    13,   159,   138,   115,   131,   159,   474,   134,
     159,   136,   131,   123,   115,   134,   131,   136,   214,   134,
     138,   136,   123,   133,   138,   132,    74,   141,    76,   225,
      78,    79,   146,   155,   162,   138,   138,   165,   138,   145,
     138,   141,   138,   138,   146,   157,   146,   139,   144,   159,
     146,   146,    20,   138,   182,   160,   141,   159,   409,   184,
     185,   186,   187,   188,   189,   190,   191,   192,   193,   194,
     195,   196,   197,   198,   199,   191,   192,   193,   194,   156,
     411,   146,   153,   154,   156,   355,   151,   152,   495,   496,
     139,   498,   160,     0,   143,   428,   206,   367,   175,   139,
     139,   211,   158,   510,   143,   139,   513,   214,   378,   143,
     517,   139,   222,   223,   138,   143,   223,   141,   225,   139,
     227,   225,   232,   143,   139,   147,   148,   138,   143,   140,
     141,    18,    19,   258,   142,   143,   300,   262,    45,   258,
     140,   141,    49,   258,   138,    51,    52,    53,    54,   146,
     257,   143,   144,   263,   139,   140,   141,   267,    65,   287,
     285,   286,   142,   143,   160,   290,   353,   143,   187,   188,
     159,   290,   139,   189,   190,   290,   158,   139,   288,   304,
     257,   195,   196,   139,   142,   304,   314,   160,   159,   304,
     340,    94,   139,   159,   139,   465,   139,   143,   468,   143,
     138,   311,   143,     3,   474,   138,     6,     7,     8,     9,
      10,   321,    12,    13,   324,   138,   123,   327,   328,   383,
     327,   138,   332,   327,   159,   159,   138,   159,   144,   139,
     340,   139,   143,   142,   139,   385,   346,   139,   363,   139,
     144,   159,   352,   144,   363,    94,    83,   144,   363,   144,
     142,   142,   377,   139,   144,   138,    81,   139,   377,   409,
     388,   389,   377,   340,   143,   159,   376,   139,   139,    45,
     159,   159,   214,   151,   159,   385,   467,   405,   159,   407,
     467,    22,    23,    24,    25,    26,    27,    28,    29,    30,
      31,   367,   402,   286,    94,   285,   211,   438,   197,   409,
     407,   411,   409,   407,   383,   198,   413,   432,   476,   288,
     411,   380,    49,   432,    66,   199,   413,   442,   232,    -1,
     327,   428,    -1,   442,    -1,   223,   476,   442,    -1,   206,
     458,    -1,   409,    -1,   134,    -1,   464,    -1,   138,    -1,
      -1,    -1,    -1,    -1,    -1,   145,   146,   147,   148,   149,
     150,    -1,    -1,   478,    -1,   483,    -1,   485,    -1,   478,
     160,    -1,    -1,   478,    -1,    -1,   476,    -1,    -1,    -1,
      -1,    -1,   500,    -1,    -1,    -1,   486,    -1,    -1,    -1,
      -1,   509,    -1,    -1,    -1,   495,   496,     1,   498,     3,
       4,     5,     6,     7,     8,     9,    10,    -1,    12,    13,
     510,    -1,    -1,   513,    -1,    -1,    -1,   517,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   158,    32,    33,
      34,    35,    36,    37,    38,    -1,    40,    41,    42,    -1,
      44,    45,    46,    -1,    -1,    49,    50,    51,    52,    -1,
      54,    -1,    -1,    -1,    -1,    59,    60,    61,    62,    63,
      64,    65,    66,    -1,    68,    69,    70,    71,    72,    73,
      74,    75,    -1,    -1,    78,    79,    80,    -1,    82,    83,
      84,    85,    86,    87,    88,    89,    -1,     1,    -1,     3,
      94,    95,     6,     7,     8,     9,    10,    -1,    12,    13,
      -1,    -1,    -1,    -1,    -1,     1,    -1,     3,    -1,    -1,
       6,     7,     8,     9,    10,    -1,    12,    13,    -1,    -1,
      -1,    -1,   126,   127,   128,    -1,    -1,    -1,    -1,   133,
     134,    -1,    -1,   137,   138,    -1,    -1,    -1,    -1,    -1,
      54,   145,   146,   147,   148,   149,   150,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   159,   160,   161,    54,    -1,
      -1,    -1,    -1,    -1,    78,    79,    80,    -1,    82,    83,
      84,    85,    86,    87,    88,    89,    -1,    -1,    -1,    -1,
      94,    95,    78,    79,    80,    -1,    82,    83,    84,    85,
      86,    87,    88,    89,    -1,    -1,    -1,    -1,    94,    95,
      -1,    -1,     3,    -1,    -1,     6,     7,     8,     9,    10,
      -1,    12,    13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     134,    -1,    -1,   137,   138,    -1,    -1,    -1,    -1,    -1,
      -1,   145,   146,   147,   148,   149,   150,    -1,   134,    -1,
       1,   137,   138,     4,     5,   159,   160,   161,    -1,   145,
     146,   147,   148,   149,   150,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   159,   160,   161,    -1,    -1,    -1,    -1,
      -1,    32,    33,    34,    35,    36,    37,    38,    -1,    40,
      41,    42,    -1,    44,    45,    46,    -1,    -1,    49,    50,
      51,    52,    -1,    94,    -1,    -1,    -1,    -1,    59,    60,
      61,    62,    63,    64,    65,    66,    -1,    68,    69,    70,
      71,    72,    73,    74,    75,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,     1,    -1,     3,    -1,    -1,     6,     7,
       8,     9,    10,   134,    12,    13,    -1,   138,    -1,    -1,
      -1,    -1,    -1,    -1,   145,   146,   147,   148,   149,   150,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   159,    -1,
      -1,    -1,    -1,    -1,    -1,   126,   127,   128,    -1,    -1,
      -1,    39,   133,    -1,    -1,    -1,    54,    -1,    -1,    47,
      48,    -1,    -1,    -1,    -1,    -1,    54,    55,    56,    57,
      58,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   160,
      78,    79,    80,    -1,    82,    83,    84,    85,    86,    87,
      88,    89,    -1,    -1,    -1,    -1,    94,    95,    -1,    -1,
      -1,    -1,    90,    91,    92,    93,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,     4,     5,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   134,    -1,    -1,   137,
     138,   129,   130,   131,   132,    -1,    -1,   145,   146,   147,
     148,   149,   150,    -1,    -1,    37,    38,    -1,    40,    41,
      42,   159,   160,    45,    46,    -1,    -1,    49,    50,    51,
      52,    -1,    -1,    -1,    -1,    -1,    -1,    59,    60,    61,
      62,    63,    64,    65,    66,    -1,    68,    69,    70,    71,
      72,    73,    74,    75,     3,     4,     5,     6,     7,     8,
       9,    10,    -1,    12,    13,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    32,    33,    34,    35,    36,    37,    38,
      -1,    40,    41,    42,    -1,    44,    45,    46,    -1,    -1,
      49,    50,    51,    52,    -1,    -1,   128,    -1,    -1,    -1,
      59,    60,    61,    62,    63,    64,    65,    66,    -1,    68,
      69,    70,    71,    72,    73,    74,    75,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   161,
      -1,    -1,    -1,    -1,    -1,    94,    -1,    -1,    -1,    -1,
      -1,    -1,     3,    -1,    -1,     6,     7,     8,     9,    10,
      -1,    12,    13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   126,   127,   128,
      -1,    -1,    -1,    -1,   133,   134,    -1,    -1,    -1,   138,
      -1,    -1,    -1,    -1,    -1,    -1,   145,   146,   147,   148,
     149,   150,     3,     4,     5,     6,     7,     8,     9,    10,
      -1,    12,    13,    -1,    -1,    -1,    -1,    -1,    -1,     3,
      -1,    -1,     6,     7,     8,     9,    10,    -1,    12,    13,
      -1,    32,    33,    34,    35,    36,    37,    38,    -1,    40,
      41,    42,    -1,    94,    45,    46,    -1,    -1,    49,    50,
      51,    52,    -1,    -1,    -1,    -1,    -1,    -1,    59,    60,
      61,    62,    63,    64,    65,    66,    -1,    68,    69,    70,
      71,    72,    73,    74,    75,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   134,    -1,    -1,    -1,   138,    -1,    -1,
      -1,   142,    -1,    94,   145,   146,   147,   148,   149,   150,
      -1,    -1,     3,    -1,    -1,     6,     7,     8,     9,    10,
      94,    12,    13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   126,   127,   128,    -1,    -1,
      -1,    -1,   133,   134,    -1,    -1,    -1,   138,    -1,    -1,
      -1,    -1,    -1,    -1,   145,   146,   147,   148,   149,   150,
     134,    -1,    -1,    -1,   138,   139,    -1,    -1,    -1,    -1,
      -1,   145,   146,   147,   148,   149,   150,     3,    -1,    -1,
       6,     7,     8,     9,    10,    -1,    12,    13,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,     3,    -1,    -1,     6,     7,
       8,     9,    10,    94,    12,    13,    -1,    -1,    -1,    -1,
      -1,    -1,     3,    -1,    -1,     6,     7,     8,     9,    10,
      -1,    12,    13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   134,    -1,    -1,    -1,   138,    -1,    -1,
      -1,   142,    -1,    -1,   145,   146,   147,   148,   149,   150,
       3,    -1,    -1,     6,     7,     8,     9,    10,    94,    12,
      13,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    94,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    94,    -1,    -1,    -1,    -1,   134,    -1,
      -1,    -1,   138,    -1,    -1,    -1,   142,    -1,    -1,   145,
     146,   147,   148,   149,   150,    -1,   134,    -1,    -1,    -1,
     138,    -1,    -1,    -1,    -1,    -1,    -1,   145,   146,   147,
     148,   149,   150,   134,    -1,    -1,    -1,   138,    -1,    -1,
      -1,    94,    -1,    -1,   145,   146,   147,   148,   149,   150,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,     3,
       4,     5,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   134,    -1,    -1,    -1,   138,    -1,    -1,    -1,    -1,
      -1,    -1,   145,   146,   147,   148,   149,   150,    32,    33,
      34,    35,    36,    37,    38,    -1,    40,    41,    42,    43,
      44,    45,    46,    -1,    -1,    49,    50,    51,    52,     3,
       4,     5,    -1,    -1,    -1,    59,    60,    61,    62,    63,
      64,    65,    66,    -1,    68,    69,    70,    71,    72,    73,
      74,    75,    -1,    -1,    -1,    -1,    -1,    -1,    32,    33,
      34,    35,    36,    37,    38,    -1,    40,    41,    42,    -1,
      -1,    45,    46,    -1,    -1,    49,    50,    51,    52,    -1,
      -1,    -1,    -1,    -1,    -1,    59,    60,    61,    62,    63,
      64,    65,    66,    -1,    68,    69,    70,    71,    72,    73,
      74,    75,   126,   127,   128,    -1,    -1,    -1,    -1,   133,
      -1,    -1,    -1,    -1,   138,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   146,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,     4,     5,    -1,    -1,    -1,
      -1,    -1,   126,   127,   128,    -1,    -1,    -1,    -1,   133,
      -1,    -1,    -1,    -1,   138,   139,    -1,   141,    -1,    -1,
      -1,    -1,   146,    32,    33,    34,    35,    36,    37,    38,
      -1,    40,    41,    42,     4,     5,    45,    46,    -1,    -1,
      49,    50,    51,    52,    -1,    -1,    -1,    -1,    -1,    -1,
      59,    60,    61,    62,    63,    64,    65,    66,    -1,    68,
      69,    70,    71,    72,    73,    74,    75,    37,    38,    -1,
      40,    41,    42,    -1,    -1,    45,    46,    -1,    -1,    49,
      50,    51,    52,    -1,    -1,    -1,    -1,    -1,    -1,    59,
      60,    61,    62,    63,    64,    65,    66,    -1,    68,    69,
      70,    71,    72,    73,    74,    75,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   126,   127,   128,
      -1,    -1,    -1,    -1,   133,    -1,    -1,    -1,    -1,   138,
     139,    -1,   141,     4,     5,    -1,    -1,   146,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   128,    -1,
      -1,    32,    33,    34,    35,    36,    37,    38,    -1,    40,
      41,    42,    -1,    -1,    45,    46,   146,    -1,    49,    50,
      51,    52,     4,     5,    -1,    -1,    -1,    -1,    59,    60,
      61,    62,    63,    64,    65,    66,    -1,    68,    69,    70,
      71,    72,    73,    74,    75,    -1,    -1,    -1,    79,    -1,
      32,    33,    34,    35,    36,    37,    38,    -1,    40,    41,
      42,    -1,    -1,    45,    46,    -1,    -1,    49,    50,    51,
      52,    53,     4,     5,    -1,    -1,    -1,    59,    60,    61,
      62,    63,    64,    65,    66,    -1,    68,    69,    70,    71,
      72,    73,    74,    75,    -1,   126,   127,   128,    -1,    -1,
      -1,    -1,   133,    -1,    -1,    37,    38,    -1,    40,    41,
      42,    -1,    -1,    45,    46,    -1,    -1,    49,    50,    51,
      52,    -1,    -1,    -1,     4,     5,    -1,    59,    60,    61,
      62,    63,    64,    65,    66,    -1,    68,    69,    70,    71,
      72,    73,    74,    75,   126,   127,   128,    -1,    -1,    -1,
      -1,   133,    32,    33,    34,    35,    36,    37,    38,    -1,
      40,    41,    42,    -1,    -1,    45,    46,    -1,    -1,    49,
      50,    51,    52,    -1,    -1,    -1,    -1,    -1,    -1,    59,
      60,    61,    62,    63,    64,    65,    66,    -1,    68,    69,
      70,    71,    72,    73,    74,    75,   128,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   126,   127,   128,    -1,
      -1,    -1,    -1,   133
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint16 yystos[] =
{
       0,     3,     4,     5,    32,    33,    34,    35,    36,    37,
      38,    40,    41,    42,    43,    44,    45,    46,    49,    50,
      51,    52,    59,    60,    61,    62,    63,    64,    65,    66,
      68,    69,    70,    71,    72,    73,    74,    75,   126,   127,
     128,   133,   138,   146,   163,   164,   165,   166,   205,   206,
     207,   214,   215,   216,   218,   219,   220,   221,   223,   230,
     235,   236,   237,   238,   239,   241,   242,   255,   281,   282,
      56,   282,   138,     6,     7,     8,     9,    10,    12,    13,
      94,   134,   138,   145,   146,   147,   148,   149,   150,   174,
     175,   178,   179,   183,   184,   185,   186,   187,   188,   189,
     190,   191,   192,   193,   194,   196,   198,   204,   282,   160,
     282,   138,   234,   235,   237,   241,     0,   165,   159,   208,
     209,   234,   236,   241,   207,   207,   207,   207,   224,   225,
     282,   141,   167,   138,    39,    47,    48,    54,    55,    56,
      57,    58,    90,    91,    92,    93,   129,   130,   131,   132,
     169,   170,   217,   237,   218,   241,   243,   244,   159,    69,
     282,   204,   138,   183,   138,   138,   183,   138,   183,   183,
     138,   185,   198,   200,   202,   206,   249,    11,    12,    13,
     138,   140,   141,   185,   146,   151,   152,   147,   148,    14,
      15,    16,    17,   153,   154,    18,    19,   145,   155,   156,
      20,    21,   157,   231,   232,   282,   160,   204,   249,   139,
     235,   143,   159,   158,   168,   222,   142,   204,     1,   160,
     171,   205,   206,   262,   264,   265,   139,   240,   245,   282,
     204,   204,   138,   169,   241,   218,   282,   159,   143,   249,
     249,   249,   200,    22,    23,    24,    25,    26,    27,    28,
      29,    30,    31,   158,   201,   139,   143,   138,   141,   241,
     250,   251,   139,   181,   139,   182,   200,   180,   202,   185,
     185,   185,   186,   186,   187,   187,   188,   188,   188,   188,
     189,   189,   190,   191,   192,   195,   197,   199,   143,   161,
     158,   233,   231,   139,   139,   209,   160,   200,   253,   171,
     160,   142,   159,    54,    78,    79,    80,    82,    83,    84,
      85,    86,    87,    88,    89,    95,   137,   159,   161,   202,
     256,   257,   258,   259,   260,   263,   264,   265,   266,   267,
     269,   272,   273,   274,   275,   278,   280,   282,   205,   264,
     206,   246,   247,   248,   249,   139,   143,   245,   159,    94,
     139,   139,   143,   143,   200,   203,   139,   246,   250,   142,
     204,   251,   138,   141,   185,   282,   139,   143,   282,   142,
     193,   194,   202,   232,   204,   161,   140,   141,   210,   211,
     212,   213,   254,   226,   227,   243,   204,   261,   138,   138,
     282,   159,   159,   159,   202,   159,   138,   159,   256,   161,
     256,   263,   266,   256,   263,   138,   256,   138,   144,   138,
     234,   241,   139,   143,   282,   139,   139,   172,   282,    79,
     176,   177,   249,   200,   139,   139,   142,   139,   252,   142,
     204,   182,   144,   282,   204,   253,   158,   213,   143,   161,
     161,   227,   144,   228,   229,   234,   144,   144,   202,   202,
     159,   159,    94,   279,   263,   202,    83,   202,   205,   277,
      53,   248,   139,   140,   141,   144,   139,   143,   144,   246,
     142,   198,   142,   161,   210,   204,   143,   159,   144,   139,
     139,   139,   139,   138,   277,   159,   173,   202,   200,   177,
     200,   139,   253,   229,   204,   270,   271,   159,   276,   202,
     159,   277,   282,   142,   256,   256,   256,   139,   277,   159,
      81,   268,   159,   139,   277,   256,   256,   139,   256
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  */

#define YYFAIL		goto yyerrlab

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      yytoken = YYTRANSLATE (yychar);				\
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (YYID (0))
#endif


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if YYLTYPE_IS_TRIVIAL
#  define YY_LOCATION_PRINT(File, Loc)			\
     fprintf (File, "%d.%d-%d.%d",			\
	      (Loc).first_line, (Loc).first_column,	\
	      (Loc).last_line,  (Loc).last_column)
# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (YYLEX_PARAM)
#else
# define YYLEX yylex ()
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
#else
static void
yy_stack_print (yybottom, yytop)
    yytype_int16 *yybottom;
    yytype_int16 *yytop;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
#else
static void
yy_reduce_print (yyvsp, yyrule)
    YYSTYPE *yyvsp;
    int yyrule;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       		       );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif



#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into YYRESULT an error message about the unexpected token
   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
   including the terminating null byte.  If YYRESULT is null, do not
   copy anything; just return the number of bytes that would be
   copied.  As a special case, return 0 if an ordinary "syntax error"
   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
   size calculation.  */
static YYSIZE_T
yysyntax_error (char *yyresult, int yystate, int yychar)
{
  int yyn = yypact[yystate];

  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
    return 0;
  else
    {
      int yytype = YYTRANSLATE (yychar);
      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
      YYSIZE_T yysize = yysize0;
      YYSIZE_T yysize1;
      int yysize_overflow = 0;
      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
      int yyx;

# if 0
      /* This is so xgettext sees the translatable formats that are
	 constructed on the fly.  */
      YY_("syntax error, unexpected %s");
      YY_("syntax error, unexpected %s, expecting %s");
      YY_("syntax error, unexpected %s, expecting %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
# endif
      char *yyfmt;
      char const *yyf;
      static char const yyunexpected[] = "syntax error, unexpected %s";
      static char const yyexpecting[] = ", expecting %s";
      static char const yyor[] = " or %s";
      char yyformat[sizeof yyunexpected
		    + sizeof yyexpecting - 1
		    + ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
		       * (sizeof yyor - 1))];
      char const *yyprefix = yyexpecting;

      /* Start YYX at -YYN if negative to avoid negative indexes in
	 YYCHECK.  */
      int yyxbegin = yyn < 0 ? -yyn : 0;

      /* Stay within bounds of both yycheck and yytname.  */
      int yychecklim = YYLAST - yyn + 1;
      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
      int yycount = 1;

      yyarg[0] = yytname[yytype];
      yyfmt = yystpcpy (yyformat, yyunexpected);

      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
	if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
	  {
	    if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
	      {
		yycount = 1;
		yysize = yysize0;
		yyformat[sizeof yyunexpected - 1] = '\0';
		break;
	      }
	    yyarg[yycount++] = yytname[yyx];
	    yysize1 = yysize + yytnamerr (0, yytname[yyx]);
	    yysize_overflow |= (yysize1 < yysize);
	    yysize = yysize1;
	    yyfmt = yystpcpy (yyfmt, yyprefix);
	    yyprefix = yyor;
	  }

      yyf = YY_(yyformat);
      yysize1 = yysize + yystrlen (yyf);
      yysize_overflow |= (yysize1 < yysize);
      yysize = yysize1;

      if (yysize_overflow)
	return YYSIZE_MAXIMUM;

      if (yyresult)
	{
	  /* Avoid sprintf, as that infringes on the user's name space.
	     Don't have undefined behavior even if the translation
	     produced a string with the wrong number of "%s"s.  */
	  char *yyp = yyresult;
	  int yyi = 0;
	  while ((*yyp = *yyf) != '\0')
	    {
	      if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
		{
		  yyp += yytnamerr (yyp, yyarg[yyi++]);
		  yyf += 2;
		}
	      else
		{
		  yyp++;
		  yyf++;
		}
	    }
	}
      return yysize;
    }
}
#endif /* YYERROR_VERBOSE */


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
#else
static void
yydestruct (yymsg, yytype, yyvaluep)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
#endif
{
  YYUSE (yyvaluep);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
	break;
    }
}

/* Prevent warnings from -Wmissing-prototypes.  */
#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */


/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;

/* Number of syntax errors so far.  */
int yynerrs;



/*-------------------------.
| yyparse or yypush_parse.  |
`-------------------------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void)
#else
int
yyparse ()

#endif
#endif
{


    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       `yyss': related to states.
       `yyvs': related to semantic values.

       Refer to the stacks thru separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yytoken = 0;
  yyss = yyssa;
  yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */
  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;

	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),
		    &yystacksize);

	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss_alloc, yyss);
	YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yyn == YYPACT_NINF)
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yyn == 0 || yyn == YYTABLE_NINF)
	goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:

/* Line 1455 of yacc.c  */
#line 148 "src/SDCC.y"
    {
          werror(W_EMPTY_SOURCE_FILE);
        ;}
    break;

  case 6:

/* Line 1455 of yacc.c  */
#line 161 "src/SDCC.y"
    {
          // blockNo = 0;
        ;}
    break;

  case 7:

/* Line 1455 of yacc.c  */
#line 165 "src/SDCC.y"
    {
          ignoreTypedefType = 0;
          if ((yyvsp[(1) - (1)].sym) && (yyvsp[(1) - (1)].sym)->type && IS_FUNC((yyvsp[(1) - (1)].sym)->type))
            {
              /* The only legal storage classes for
               * a function prototype (declaration)
               * are extern and static. extern is the
               * default. Thus, if this function isn't
               * explicitly marked static, mark it
               * extern.
               */
              if ((yyvsp[(1) - (1)].sym)->etype && IS_SPEC((yyvsp[(1) - (1)].sym)->etype) && !SPEC_STAT((yyvsp[(1) - (1)].sym)->etype))
                {
                  SPEC_EXTR((yyvsp[(1) - (1)].sym)->etype) = 1;
                }
            }
          addSymChain (&(yyvsp[(1) - (1)].sym));
          allocVariables ((yyvsp[(1) - (1)].sym));
          cleanUpLevel (SymbolTab, 1);
        ;}
    break;

  case 9:

/* Line 1455 of yacc.c  */
#line 190 "src/SDCC.y"
    {   /* function type not specified */
            /* assume it to be 'int'       */
            addDecl((yyvsp[(1) - (1)].sym),0,newIntLink());
            (yyvsp[(1) - (1)].sym) = createFunctionDecl((yyvsp[(1) - (1)].sym));
            if ((yyvsp[(1) - (1)].sym) && FUNC_ISCRITICAL ((yyvsp[(1) - (1)].sym)->type))
                inCriticalFunction = 1;
        ;}
    break;

  case 10:

/* Line 1455 of yacc.c  */
#line 198 "src/SDCC.y"
    {
            (yyval.asts) = createFunction((yyvsp[(1) - (3)].sym),(yyvsp[(3) - (3)].asts));
            if ((yyvsp[(1) - (3)].sym) && FUNC_ISCRITICAL ((yyvsp[(1) - (3)].sym)->type))
                inCriticalFunction = 0;
        ;}
    break;

  case 11:

/* Line 1455 of yacc.c  */
#line 204 "src/SDCC.y"
    {
            sym_link *p = copyLinkChain((yyvsp[(1) - (2)].lnk));
            pointerTypes((yyvsp[(2) - (2)].sym)->type,p);
            addDecl((yyvsp[(2) - (2)].sym),0,p);
            (yyvsp[(2) - (2)].sym) = createFunctionDecl((yyvsp[(2) - (2)].sym));
            if ((yyvsp[(2) - (2)].sym) && FUNC_ISCRITICAL ((yyvsp[(2) - (2)].sym)->type))
                inCriticalFunction = 1;
            /* warn for loss of calling convention for inlined functions. */
            if ((yyvsp[(2) - (2)].sym) && FUNC_ISINLINE ((yyvsp[(2) - (2)].sym)->type) &&
                ( FUNC_ISZ88DK_CALLEE ((yyvsp[(2) - (2)].sym)->type) || FUNC_ISZ88DK_FASTCALL ((yyvsp[(2) - (2)].sym)->type) ||
                  FUNC_BANKED ((yyvsp[(2) - (2)].sym)->type)         || FUNC_REGBANK ((yyvsp[(2) - (2)].sym)->type)          ||
                  FUNC_ISOVERLAY ((yyvsp[(2) - (2)].sym)->type)      || FUNC_ISISR ((yyvsp[(2) - (2)].sym)->type) ))
              {
                werror (W_INLINE_FUNCATTR, (yyvsp[(2) - (2)].sym)->name);
              }
        ;}
    break;

  case 12:

/* Line 1455 of yacc.c  */
#line 221 "src/SDCC.y"
    {
            (yyval.asts) = createFunction((yyvsp[(2) - (4)].sym),(yyvsp[(4) - (4)].asts));
            if ((yyvsp[(2) - (4)].sym) && FUNC_ISCRITICAL ((yyvsp[(2) - (4)].sym)->type))
                inCriticalFunction = 0;
        ;}
    break;

  case 14:

/* Line 1455 of yacc.c  */
#line 230 "src/SDCC.y"
    { (yyval.lnk) = mergeSpec((yyvsp[(1) - (2)].lnk),(yyvsp[(2) - (2)].lnk),"function_attribute"); ;}
    break;

  case 15:

/* Line 1455 of yacc.c  */
#line 234 "src/SDCC.y"
    {
                        (yyval.lnk) = newLink(SPECIFIER);
                        FUNC_REGBANK((yyval.lnk)) = (int) ulFromVal(constExprValue((yyvsp[(2) - (2)].asts),TRUE));
                     ;}
    break;

  case 16:

/* Line 1455 of yacc.c  */
#line 238 "src/SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISREENT((yyval.lnk))=1;
                     ;}
    break;

  case 17:

/* Line 1455 of yacc.c  */
#line 241 "src/SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISCRITICAL((yyval.lnk)) = 1;
                     ;}
    break;

  case 18:

/* Line 1455 of yacc.c  */
#line 244 "src/SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISNAKED((yyval.lnk))=1;
                     ;}
    break;

  case 19:

/* Line 1455 of yacc.c  */
#line 247 "src/SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISJAVANATIVE((yyval.lnk))=1;
                     ;}
    break;

  case 20:

/* Line 1455 of yacc.c  */
#line 250 "src/SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISOVERLAY((yyval.lnk))=1;
                     ;}
    break;

  case 21:

/* Line 1455 of yacc.c  */
#line 253 "src/SDCC.y"
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_NONBANKED((yyval.lnk)) = 1;
                        if (FUNC_BANKED((yyval.lnk))) {
                            werror(W_BANKED_WITH_NONBANKED);
                        }
                     ;}
    break;

  case 22:

/* Line 1455 of yacc.c  */
#line 259 "src/SDCC.y"
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISSHADOWREGS((yyval.lnk)) = 1;
                     ;}
    break;

  case 23:

/* Line 1455 of yacc.c  */
#line 262 "src/SDCC.y"
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISWPARAM((yyval.lnk)) = 1;
                     ;}
    break;

  case 24:

/* Line 1455 of yacc.c  */
#line 265 "src/SDCC.y"
    {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_BANKED((yyval.lnk)) = 1;
                        if (FUNC_NONBANKED((yyval.lnk))) {
                            werror(W_BANKED_WITH_NONBANKED);
                        }
                     ;}
    break;

  case 25:

/* Line 1455 of yacc.c  */
#line 272 "src/SDCC.y"
    {
                        (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_INTNO((yyval.lnk)) = (yyvsp[(1) - (1)].yyint);
                        FUNC_ISISR((yyval.lnk)) = 1;
                     ;}
    break;

  case 26:

/* Line 1455 of yacc.c  */
#line 278 "src/SDCC.y"
    {
					    (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_INTNO((yyval.lnk)) = INTNO_TRAP;
						FUNC_ISISR((yyval.lnk)) = 1;
				     ;}
    break;

  case 27:

/* Line 1455 of yacc.c  */
#line 283 "src/SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISSMALLC((yyval.lnk)) = 1;
                     ;}
    break;

  case 28:

/* Line 1455 of yacc.c  */
#line 286 "src/SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISZ88DK_FASTCALL((yyval.lnk)) = 1;
                     ;}
    break;

  case 29:

/* Line 1455 of yacc.c  */
#line 289 "src/SDCC.y"
    {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISZ88DK_CALLEE((yyval.lnk)) = 1;
                     ;}
    break;

  case 30:

/* Line 1455 of yacc.c  */
#line 293 "src/SDCC.y"
    {
                        const struct symbol *regsym;
                        (yyval.lnk) = newLink (SPECIFIER);

                        for(regsym = (yyvsp[(3) - (4)].sym); regsym; regsym = regsym->next)
                          {
                            int regnum;

                            if (!port->getRegByName || ((regnum = port->getRegByName(regsym->name)) < 0))
                              {
                                werror (W_UNKNOWN_REG);
                                break;
                              }
                            (yyval.lnk)->funcAttrs.preserved_regs[regnum] = TRUE;
                          }
                     ;}
    break;

  case 32:

/* Line 1455 of yacc.c  */
#line 314 "src/SDCC.y"
    {
                       werror (E_OLD_STYLE, ((yyvsp[(1) - (2)].sym) ? (yyvsp[(1) - (2)].sym)->name: ""));
                       exit (1);
                     ;}
    break;

  case 33:

/* Line 1455 of yacc.c  */
#line 321 "src/SDCC.y"
    { (yyval.asts) = newAst_VALUE (symbolVal ((yyvsp[(1) - (1)].sym))); ;}
    break;

  case 34:

/* Line 1455 of yacc.c  */
#line 322 "src/SDCC.y"
    { ignoreTypedefType = 1; ;}
    break;

  case 35:

/* Line 1455 of yacc.c  */
#line 323 "src/SDCC.y"
    {
                       ignoreTypedefType = 0;
                       (yyvsp[(4) - (4)].sym) = newSymbol ((yyvsp[(4) - (4)].sym)->name, NestLevel);
                       (yyvsp[(4) - (4)].sym)->implicit = 1;
                       (yyval.asts) = newNode ('.', (yyvsp[(1) - (4)].asts), newAst_VALUE (symbolVal ((yyvsp[(4) - (4)].sym))));
                     ;}
    break;

  case 36:

/* Line 1455 of yacc.c  */
#line 330 "src/SDCC.y"
    {
                       (yyval.asts) = newNode ('[', (yyvsp[(1) - (4)].asts), (yyvsp[(3) - (4)].asts));
                     ;}
    break;

  case 37:

/* Line 1455 of yacc.c  */
#line 336 "src/SDCC.y"
    { (yyval.asts) = newAst_VALUE (symbolVal ((yyvsp[(1) - (1)].sym))); ;}
    break;

  case 38:

/* Line 1455 of yacc.c  */
#line 337 "src/SDCC.y"
    { (yyval.asts) = newAst_VALUE ((yyvsp[(1) - (1)].val)); ;}
    break;

  case 40:

/* Line 1455 of yacc.c  */
#line 339 "src/SDCC.y"
    { (yyval.asts) = (yyvsp[(2) - (3)].asts); ;}
    break;

  case 42:

/* Line 1455 of yacc.c  */
#line 344 "src/SDCC.y"
    { (yyval.asts) = newNode (GENERIC, (yyvsp[(3) - (6)].asts), (yyvsp[(5) - (6)].asts)); ;}
    break;

  case 43:

/* Line 1455 of yacc.c  */
#line 348 "src/SDCC.y"
    { (yyval.asts) = newNode  (GENERIC_ASSOC_LIST, NULL, (yyvsp[(1) - (1)].asts)); ;}
    break;

  case 44:

/* Line 1455 of yacc.c  */
#line 349 "src/SDCC.y"
    { (yyval.asts) = newNode  (GENERIC_ASSOC_LIST, (yyvsp[(1) - (3)].asts), (yyvsp[(3) - (3)].asts)); ;}
    break;

  case 45:

/* Line 1455 of yacc.c  */
#line 353 "src/SDCC.y"
    { (yyval.asts) = newNode  (GENERIC_ASSOCIATION, newAst_LINK((yyvsp[(1) - (3)].lnk)), (yyvsp[(3) - (3)].asts)); ;}
    break;

  case 46:

/* Line 1455 of yacc.c  */
#line 354 "src/SDCC.y"
    { (yyval.asts) = newNode  (GENERIC_ASSOCIATION,NULL,(yyvsp[(3) - (3)].asts)); ;}
    break;

  case 47:

/* Line 1455 of yacc.c  */
#line 358 "src/SDCC.y"
    {
                       int cnt = 1;
                       int max = 253, min = 1;
                       char fb[256];
                       /* refer to support/cpp/libcpp/macro.c for details */
                       while ((((int) ((yyvsp[(1) - (1)].yystr)[cnt] & 0xff)) & 0xff) == 0xff)
                         cnt++;

                       if (cnt <= max)
                         {
                           (yyval.asts) = newAst_VALUE (strVal ((yyvsp[(1) - (1)].yystr)));
                         }
                       else
                         {
                           memset (fb, 0x00, sizeof (fb));
                           fb[0] = '"';
                           strncpy (fb + 1, function_name, max - min + 1);
                           fb[max + 1] = '"';
                           fb[max + 2] = 0;
                           fb[strlen (fb)] = '"';
                           fb[strlen (fb) + 1] = 0;
                           (yyval.asts) = newAst_VALUE (strVal (fb));
                         }
                     ;}
    break;

  case 49:

/* Line 1455 of yacc.c  */
#line 386 "src/SDCC.y"
    { (yyval.asts) = newNode  ('[', (yyvsp[(1) - (4)].asts), (yyvsp[(3) - (4)].asts)); ;}
    break;

  case 50:

/* Line 1455 of yacc.c  */
#line 387 "src/SDCC.y"
    { (yyval.asts) = newNode  (CALL,(yyvsp[(1) - (3)].asts),NULL);
                                          (yyval.asts)->left->funcName = 1;;}
    break;

  case 51:

/* Line 1455 of yacc.c  */
#line 390 "src/SDCC.y"
    {
            (yyval.asts) = newNode  (CALL,(yyvsp[(1) - (4)].asts),(yyvsp[(3) - (4)].asts)); (yyval.asts)->left->funcName = 1;
          ;}
    break;

  case 52:

/* Line 1455 of yacc.c  */
#line 393 "src/SDCC.y"
    { ignoreTypedefType = 1; ;}
    break;

  case 53:

/* Line 1455 of yacc.c  */
#line 394 "src/SDCC.y"
    {
                        ignoreTypedefType = 0;
                        (yyvsp[(4) - (4)].sym) = newSymbol((yyvsp[(4) - (4)].sym)->name,NestLevel);
                        (yyvsp[(4) - (4)].sym)->implicit = 1;
                        (yyval.asts) = newNode(PTR_OP,newNode('&',(yyvsp[(1) - (4)].asts),NULL),newAst_VALUE(symbolVal((yyvsp[(4) - (4)].sym))));
                      ;}
    break;

  case 54:

/* Line 1455 of yacc.c  */
#line 400 "src/SDCC.y"
    { ignoreTypedefType = 1; ;}
    break;

  case 55:

/* Line 1455 of yacc.c  */
#line 401 "src/SDCC.y"
    {
                        ignoreTypedefType = 0;
                        (yyvsp[(4) - (4)].sym) = newSymbol((yyvsp[(4) - (4)].sym)->name,NestLevel);
                        (yyvsp[(4) - (4)].sym)->implicit = 1;
                        (yyval.asts) = newNode(PTR_OP,(yyvsp[(1) - (4)].asts),newAst_VALUE(symbolVal((yyvsp[(4) - (4)].sym))));
                      ;}
    break;

  case 56:

/* Line 1455 of yacc.c  */
#line 408 "src/SDCC.y"
    { (yyval.asts) = newNode(INC_OP,(yyvsp[(1) - (2)].asts),NULL);;}
    break;

  case 57:

/* Line 1455 of yacc.c  */
#line 410 "src/SDCC.y"
    { (yyval.asts) = newNode(DEC_OP,(yyvsp[(1) - (2)].asts),NULL); ;}
    break;

  case 59:

/* Line 1455 of yacc.c  */
#line 415 "src/SDCC.y"
    { (yyval.asts) = newNode(PARAM,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts)); ;}
    break;

  case 61:

/* Line 1455 of yacc.c  */
#line 420 "src/SDCC.y"
    { (yyval.asts) = newNode (INC_OP, NULL, (yyvsp[(2) - (2)].asts)); ;}
    break;

  case 62:

/* Line 1455 of yacc.c  */
#line 421 "src/SDCC.y"
    { (yyval.asts) = newNode (DEC_OP, NULL, (yyvsp[(2) - (2)].asts)); ;}
    break;

  case 63:

/* Line 1455 of yacc.c  */
#line 423 "src/SDCC.y"
    {
         if ((yyvsp[(1) - (2)].yyint) == '&' && IS_AST_OP ((yyvsp[(2) - (2)].asts)) && (yyvsp[(2) - (2)].asts)->opval.op == '*' && (yyvsp[(2) - (2)].asts)->right == NULL)
           (yyval.asts) = (yyvsp[(2) - (2)].asts)->left;
         else if ((yyvsp[(1) - (2)].yyint) == '*' && IS_AST_OP ((yyvsp[(2) - (2)].asts)) && (yyvsp[(2) - (2)].asts)->opval.op == '&' && (yyvsp[(2) - (2)].asts)->right == NULL)
           (yyval.asts) = (yyvsp[(2) - (2)].asts)->left;
         else
           (yyval.asts) = newNode ((yyvsp[(1) - (2)].yyint), (yyvsp[(2) - (2)].asts), NULL);
       ;}
    break;

  case 64:

/* Line 1455 of yacc.c  */
#line 431 "src/SDCC.y"
    { (yyval.asts) = newNode (SIZEOF, NULL, (yyvsp[(2) - (2)].asts)); ;}
    break;

  case 65:

/* Line 1455 of yacc.c  */
#line 432 "src/SDCC.y"
    { (yyval.asts) = newAst_VALUE (sizeofOp ((yyvsp[(3) - (4)].lnk))); ;}
    break;

  case 66:

/* Line 1455 of yacc.c  */
#line 433 "src/SDCC.y"
    { (yyval.asts) = newAst_VALUE (alignofOp ((yyvsp[(3) - (4)].lnk))); ;}
    break;

  case 67:

/* Line 1455 of yacc.c  */
#line 434 "src/SDCC.y"
    { (yyval.asts) = newNode (TYPEOF, NULL, (yyvsp[(2) - (2)].asts)); ;}
    break;

  case 68:

/* Line 1455 of yacc.c  */
#line 435 "src/SDCC.y"
    { (yyval.asts) = offsetofOp((yyvsp[(3) - (6)].lnk), (yyvsp[(5) - (6)].asts)); ;}
    break;

  case 69:

/* Line 1455 of yacc.c  */
#line 439 "src/SDCC.y"
    { (yyval.yyint) = '&';;}
    break;

  case 70:

/* Line 1455 of yacc.c  */
#line 440 "src/SDCC.y"
    { (yyval.yyint) = '*';;}
    break;

  case 71:

/* Line 1455 of yacc.c  */
#line 441 "src/SDCC.y"
    { (yyval.yyint) = '+';;}
    break;

  case 72:

/* Line 1455 of yacc.c  */
#line 442 "src/SDCC.y"
    { (yyval.yyint) = '-';;}
    break;

  case 73:

/* Line 1455 of yacc.c  */
#line 443 "src/SDCC.y"
    { (yyval.yyint) = '~';;}
    break;

  case 74:

/* Line 1455 of yacc.c  */
#line 444 "src/SDCC.y"
    { (yyval.yyint) = '!';;}
    break;

  case 76:

/* Line 1455 of yacc.c  */
#line 449 "src/SDCC.y"
    { (yyval.asts) = newNode(CAST,newAst_LINK((yyvsp[(2) - (4)].lnk)),(yyvsp[(4) - (4)].asts)); ;}
    break;

  case 78:

/* Line 1455 of yacc.c  */
#line 454 "src/SDCC.y"
    { (yyval.asts) = newNode('*',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 79:

/* Line 1455 of yacc.c  */
#line 455 "src/SDCC.y"
    { (yyval.asts) = newNode('/',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 80:

/* Line 1455 of yacc.c  */
#line 456 "src/SDCC.y"
    { (yyval.asts) = newNode('%',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 82:

/* Line 1455 of yacc.c  */
#line 461 "src/SDCC.y"
    { (yyval.asts)=newNode('+',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 83:

/* Line 1455 of yacc.c  */
#line 462 "src/SDCC.y"
    { (yyval.asts)=newNode('-',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 85:

/* Line 1455 of yacc.c  */
#line 467 "src/SDCC.y"
    { (yyval.asts) = newNode(LEFT_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts)); ;}
    break;

  case 86:

/* Line 1455 of yacc.c  */
#line 468 "src/SDCC.y"
    { (yyval.asts) = newNode(RIGHT_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts)); ;}
    break;

  case 88:

/* Line 1455 of yacc.c  */
#line 473 "src/SDCC.y"
    { (yyval.asts) = newNode('<',  (yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 89:

/* Line 1455 of yacc.c  */
#line 474 "src/SDCC.y"
    { (yyval.asts) = newNode('>',  (yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 90:

/* Line 1455 of yacc.c  */
#line 475 "src/SDCC.y"
    { (yyval.asts) = newNode(LE_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 91:

/* Line 1455 of yacc.c  */
#line 476 "src/SDCC.y"
    { (yyval.asts) = newNode(GE_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 93:

/* Line 1455 of yacc.c  */
#line 481 "src/SDCC.y"
    { (yyval.asts) = newNode(EQ_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 94:

/* Line 1455 of yacc.c  */
#line 482 "src/SDCC.y"
    { (yyval.asts) = newNode(NE_OP,(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 96:

/* Line 1455 of yacc.c  */
#line 487 "src/SDCC.y"
    { (yyval.asts) = newNode('&',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 98:

/* Line 1455 of yacc.c  */
#line 492 "src/SDCC.y"
    { (yyval.asts) = newNode('^',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 100:

/* Line 1455 of yacc.c  */
#line 497 "src/SDCC.y"
    { (yyval.asts) = newNode('|',(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));;}
    break;

  case 102:

/* Line 1455 of yacc.c  */
#line 502 "src/SDCC.y"
    { seqPointNo++;;}
    break;

  case 103:

/* Line 1455 of yacc.c  */
#line 503 "src/SDCC.y"
    { (yyval.asts) = newNode(AND_OP,(yyvsp[(1) - (4)].asts),(yyvsp[(4) - (4)].asts));;}
    break;

  case 105:

/* Line 1455 of yacc.c  */
#line 508 "src/SDCC.y"
    { seqPointNo++;;}
    break;

  case 106:

/* Line 1455 of yacc.c  */
#line 509 "src/SDCC.y"
    { (yyval.asts) = newNode(OR_OP,(yyvsp[(1) - (4)].asts),(yyvsp[(4) - (4)].asts)); ;}
    break;

  case 108:

/* Line 1455 of yacc.c  */
#line 514 "src/SDCC.y"
    { seqPointNo++;;}
    break;

  case 109:

/* Line 1455 of yacc.c  */
#line 515 "src/SDCC.y"
    {
                        (yyval.asts) = newNode(':',(yyvsp[(4) - (6)].asts),(yyvsp[(6) - (6)].asts));
                        (yyval.asts) = newNode('?',(yyvsp[(1) - (6)].asts),(yyval.asts));
                     ;}
    break;

  case 111:

/* Line 1455 of yacc.c  */
#line 524 "src/SDCC.y"
    {

                             switch ((yyvsp[(2) - (3)].yyint)) {
                             case '=':
                                     (yyval.asts) = newNode((yyvsp[(2) - (3)].yyint),(yyvsp[(1) - (3)].asts),(yyvsp[(3) - (3)].asts));
                                     break;
                             case MUL_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '*', (yyvsp[(3) - (3)].asts));
                                     break;
                             case DIV_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '/', (yyvsp[(3) - (3)].asts));
                                     break;
                             case MOD_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '%', (yyvsp[(3) - (3)].asts));
                                     break;
                             case ADD_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '+', (yyvsp[(3) - (3)].asts));
                                     break;
                             case SUB_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '-', (yyvsp[(3) - (3)].asts));
                                     break;
                             case LEFT_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), LEFT_OP, (yyvsp[(3) - (3)].asts));
                                     break;
                             case RIGHT_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), RIGHT_OP, (yyvsp[(3) - (3)].asts));
                                     break;
                             case AND_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '&', (yyvsp[(3) - (3)].asts));
                                     break;
                             case XOR_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '^', (yyvsp[(3) - (3)].asts));
                                     break;
                             case OR_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[(1) - (3)].asts), '|', (yyvsp[(3) - (3)].asts));
                                     break;
                             default :
                                     (yyval.asts) = NULL;
                             }

                     ;}
    break;

  case 112:

/* Line 1455 of yacc.c  */
#line 568 "src/SDCC.y"
    { (yyval.yyint) = '=';;}
    break;

  case 124:

/* Line 1455 of yacc.c  */
#line 583 "src/SDCC.y"
    { seqPointNo++;;}
    break;

  case 125:

/* Line 1455 of yacc.c  */
#line 583 "src/SDCC.y"
    { (yyval.asts) = newNode(',',(yyvsp[(1) - (4)].asts),(yyvsp[(4) - (4)].asts));;}
    break;

  case 127:

/* Line 1455 of yacc.c  */
#line 592 "src/SDCC.y"
    {
         /* Special case: if incomplete struct/union declared without name, */
         /* make sure an incomplete type for it exists in the current scope */
         if (IS_STRUCT((yyvsp[(1) - (2)].lnk)))
           {
             structdef *sdef = SPEC_STRUCT((yyvsp[(1) - (2)].lnk));
             structdef *osdef;
             osdef = findSymWithBlock (StructTab, sdef->tagsym, currBlockno, NestLevel);
             if (osdef && osdef->block != currBlockno)
               {
                 sdef = newStruct(osdef->tagsym->name);
                 sdef->level = NestLevel;
                 sdef->block = currBlockno;
                 sdef->tagsym = newSymbol (osdef->tagsym->name, NestLevel);
                 addSym (StructTab, sdef, sdef->tag, sdef->level, currBlockno, 0);
                 uselessDecl = FALSE;
               }
           }
         if (uselessDecl)
           werror(W_USELESS_DECL);
         uselessDecl = TRUE;
         (yyval.sym) = NULL;
      ;}
    break;

  case 128:

/* Line 1455 of yacc.c  */
#line 616 "src/SDCC.y"
    {
         /* add the specifier list to the id */
         symbol *sym , *sym1;

         for (sym1 = sym = reverseSyms((yyvsp[(2) - (3)].sym));sym != NULL;sym = sym->next) {
             sym_link *lnk = copyLinkChain((yyvsp[(1) - (3)].lnk));
             sym_link *l0 = NULL, *l1 = NULL, *l2 = NULL;
             /* check illegal declaration */
             for (l0 = sym->type; l0 != NULL; l0 = l0->next)
               if (IS_PTR (l0))
                 break;
             /* check if creating intances of structs with flexible arrays */
             for (l1 = lnk; l1 != NULL; l1 = l1->next)
               if (IS_STRUCT (l1) && SPEC_STRUCT (l1)->b_flexArrayMember)
                 break;
             if (!options.std_c99 && l0 == NULL && l1 != NULL && SPEC_EXTR((yyvsp[(1) - (3)].lnk)) != 1)
               werror (W_FLEXARRAY_INSTRUCT, sym->name);
             /* check if creating intances of function type */
             for (l1 = lnk; l1 != NULL; l1 = l1->next)
               if (IS_FUNC (l1))
                 break;
             for (l2 = lnk; l2 != NULL; l2 = l2->next)
               if (IS_PTR (l2))
                 break;
             if (l0 == NULL && l2 == NULL && l1 != NULL)
               werrorfl(sym->fileDef, sym->lineDef, E_TYPE_IS_FUNCTION, sym->name);
             /* do the pointer stuff */
             pointerTypes(sym->type,lnk);
             addDecl (sym,0,lnk);
         }

         uselessDecl = TRUE;
         (yyval.sym) = sym1;
      ;}
    break;

  case 129:

/* Line 1455 of yacc.c  */
#line 651 "src/SDCC.y"
    {
         (yyval.sym) = NULL;
      ;}
    break;

  case 130:

/* Line 1455 of yacc.c  */
#line 656 "src/SDCC.y"
    { (yyval.lnk) = finalizeSpec((yyvsp[(1) - (1)].lnk)); ;}
    break;

  case 131:

/* Line 1455 of yacc.c  */
#line 659 "src/SDCC.y"
    { (yyval.lnk) = (yyvsp[(1) - (1)].lnk); ;}
    break;

  case 132:

/* Line 1455 of yacc.c  */
#line 660 "src/SDCC.y"
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[(1) - (2)].lnk), (yyvsp[(2) - (2)].lnk), "storage_class_specifier declaration_specifiers - skipped");
   ;}
    break;

  case 133:

/* Line 1455 of yacc.c  */
#line 665 "src/SDCC.y"
    { (yyval.lnk) = (yyvsp[(1) - (1)].lnk); ;}
    break;

  case 134:

/* Line 1455 of yacc.c  */
#line 666 "src/SDCC.y"
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[(1) - (2)].lnk), (yyvsp[(2) - (2)].lnk), "type_specifier declaration_specifiers - skipped");
   ;}
    break;

  case 135:

/* Line 1455 of yacc.c  */
#line 671 "src/SDCC.y"
    { (yyval.lnk) = (yyvsp[(1) - (1)].lnk); ;}
    break;

  case 136:

/* Line 1455 of yacc.c  */
#line 672 "src/SDCC.y"
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[(1) - (2)].lnk), (yyvsp[(2) - (2)].lnk), "function_specifier declaration_specifiers - skipped");
   ;}
    break;

  case 137:

/* Line 1455 of yacc.c  */
#line 677 "src/SDCC.y"
    { (yyval.lnk) = (yyvsp[(1) - (1)].lnk); ;}
    break;

  case 138:

/* Line 1455 of yacc.c  */
#line 678 "src/SDCC.y"
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[(1) - (2)].lnk), (yyvsp[(2) - (2)].lnk), "alignment_specifier declaration_specifiers - skipped");
   ;}
    break;

  case 140:

/* Line 1455 of yacc.c  */
#line 687 "src/SDCC.y"
    { (yyvsp[(3) - (3)].sym)->next = (yyvsp[(1) - (3)].sym); (yyval.sym) = (yyvsp[(3) - (3)].sym);;}
    break;

  case 141:

/* Line 1455 of yacc.c  */
#line 691 "src/SDCC.y"
    { (yyvsp[(1) - (1)].sym)->ival = NULL; ;}
    break;

  case 142:

/* Line 1455 of yacc.c  */
#line 692 "src/SDCC.y"
    { (yyvsp[(1) - (3)].sym)->ival = (yyvsp[(3) - (3)].ilist); seqPointNo++; ;}
    break;

  case 143:

/* Line 1455 of yacc.c  */
#line 696 "src/SDCC.y"
    { (yyval.dsgn) = NULL; ;}
    break;

  case 145:

/* Line 1455 of yacc.c  */
#line 701 "src/SDCC.y"
    { (yyval.dsgn) = revDesignation((yyvsp[(1) - (2)].dsgn)); ;}
    break;

  case 147:

/* Line 1455 of yacc.c  */
#line 706 "src/SDCC.y"
    { (yyvsp[(2) - (2)].dsgn)->next = (yyvsp[(1) - (2)].dsgn); (yyval.dsgn) = (yyvsp[(2) - (2)].dsgn); ;}
    break;

  case 148:

/* Line 1455 of yacc.c  */
#line 711 "src/SDCC.y"
    {
            value *tval;
            int elemno;

            tval = constExprValue((yyvsp[(2) - (3)].asts), TRUE);
            /* if it is not a constant then Error  */
            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror (E_CONST_EXPECTED);
                elemno = 0; /* arbitrary fixup */
              }
            else
              {
                if ((elemno = (int) ulFromVal(tval)) < 0)
                  {
                    werror (E_BAD_DESIGNATOR);
                    elemno = 0; /* arbitrary fixup */
                  }
              }
            (yyval.dsgn) = newDesignation(DESIGNATOR_ARRAY, &elemno);
         ;}
    break;

  case 149:

/* Line 1455 of yacc.c  */
#line 732 "src/SDCC.y"
    { (yyval.dsgn) = newDesignation(DESIGNATOR_STRUCT,(yyvsp[(2) - (2)].sym)); ;}
    break;

  case 150:

/* Line 1455 of yacc.c  */
#line 736 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_TYPEDEF((yyval.lnk)) = 1;
               ;}
    break;

  case 151:

/* Line 1455 of yacc.c  */
#line 740 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink(SPECIFIER);
                  SPEC_EXTR((yyval.lnk)) = 1;
               ;}
    break;

  case 152:

/* Line 1455 of yacc.c  */
#line 744 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_STAT((yyval.lnk)) = 1;
               ;}
    break;

  case 153:

/* Line 1455 of yacc.c  */
#line 748 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_AUTO;
               ;}
    break;

  case 154:

/* Line 1455 of yacc.c  */
#line 752 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_REGISTER;
               ;}
    break;

  case 155:

/* Line 1455 of yacc.c  */
#line 759 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_INLINE((yyval.lnk)) = 1;
               ;}
    break;

  case 156:

/* Line 1455 of yacc.c  */
#line 763 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_NORETURN((yyval.lnk)) = 1;
               ;}
    break;

  case 157:

/* Line 1455 of yacc.c  */
#line 771 "src/SDCC.y"
    {
                 checkTypeSanity ((yyvsp[(3) - (4)].lnk), "(_Alignas)");
                 (yyval.lnk) = newLink (SPECIFIER);
                 SPEC_ALIGNAS((yyval.lnk)) = 1;
              ;}
    break;

  case 158:

/* Line 1455 of yacc.c  */
#line 777 "src/SDCC.y"
    {
                 value *val = constExprValue ((yyvsp[(3) - (4)].asts), TRUE);
                 (yyval.lnk) = newLink (SPECIFIER);
                 SPEC_ALIGNAS((yyval.lnk)) = 0;
                 if (!val)
                   werror (E_CONST_EXPECTED);
                 else if (ulFromVal (val) == 0 || isPowerOf2 (ulFromVal (val)) && ulFromVal (val) <= port->mem.maxextalign)
                   SPEC_ALIGNAS((yyval.lnk)) = ulFromVal(val);
                 else
                   werror (E_ALIGNAS, ulFromVal(val));
              ;}
    break;

  case 159:

/* Line 1455 of yacc.c  */
#line 791 "src/SDCC.y"
    { (yyval.yyint) = INTNO_UNSPEC; ;}
    break;

  case 160:

/* Line 1455 of yacc.c  */
#line 793 "src/SDCC.y"
    { int intno = (int) ulFromVal(constExprValue((yyvsp[(2) - (2)].asts),TRUE));
          if ((intno >= 0) && (intno <= INTNO_MAX))
            (yyval.yyint) = intno;
          else
            {
              werror(E_INT_BAD_INTNO, intno);
              (yyval.yyint) = INTNO_UNSPEC;
            }
        ;}
    break;

  case 161:

/* Line 1455 of yacc.c  */
#line 805 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_BOOL;
                  ignoreTypedefType = 1;
               ;}
    break;

  case 162:

/* Line 1455 of yacc.c  */
#line 810 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_CHAR;
                  ignoreTypedefType = 1;
               ;}
    break;

  case 163:

/* Line 1455 of yacc.c  */
#line 815 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_SHORT((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               ;}
    break;

  case 164:

/* Line 1455 of yacc.c  */
#line 820 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_INT;
                  ignoreTypedefType = 1;
               ;}
    break;

  case 165:

/* Line 1455 of yacc.c  */
#line 825 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_LONG((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               ;}
    break;

  case 166:

/* Line 1455 of yacc.c  */
#line 830 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  (yyval.lnk)->select.s.b_signed = 1;
                  ignoreTypedefType = 1;
               ;}
    break;

  case 167:

/* Line 1455 of yacc.c  */
#line 835 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_USIGN((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               ;}
    break;

  case 168:

/* Line 1455 of yacc.c  */
#line 840 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_VOID;
                  ignoreTypedefType = 1;
               ;}
    break;

  case 169:

/* Line 1455 of yacc.c  */
#line 845 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_CONST((yyval.lnk)) = 1;
               ;}
    break;

  case 170:

/* Line 1455 of yacc.c  */
#line 849 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_VOLATILE((yyval.lnk)) = 1;
               ;}
    break;

  case 171:

/* Line 1455 of yacc.c  */
#line 853 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_RESTRICT((yyval.lnk)) = 1;
               ;}
    break;

  case 172:

/* Line 1455 of yacc.c  */
#line 857 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_ADDRSPACE((yyval.lnk)) = findSym (AddrspaceTab, 0, (yyvsp[(1) - (1)].yychar));
               ;}
    break;

  case 173:

/* Line 1455 of yacc.c  */
#line 861 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_FLOAT;
                  ignoreTypedefType = 1;
               ;}
    break;

  case 174:

/* Line 1455 of yacc.c  */
#line 866 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_FIXED16X16;
                  ignoreTypedefType = 1;
               ;}
    break;

  case 175:

/* Line 1455 of yacc.c  */
#line 871 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_XDATA;
               ;}
    break;

  case 176:

/* Line 1455 of yacc.c  */
#line 875 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_CODE;
               ;}
    break;

  case 177:

/* Line 1455 of yacc.c  */
#line 879 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_EEPROM;
               ;}
    break;

  case 178:

/* Line 1455 of yacc.c  */
#line 883 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_DATA;
               ;}
    break;

  case 179:

/* Line 1455 of yacc.c  */
#line 887 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_IDATA;
               ;}
    break;

  case 180:

/* Line 1455 of yacc.c  */
#line 891 "src/SDCC.y"
    {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_PDATA;
               ;}
    break;

  case 181:

/* Line 1455 of yacc.c  */
#line 895 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_BIT;
                  SPEC_SCLS((yyval.lnk)) = S_BIT;
                  SPEC_BLEN((yyval.lnk)) = 1;
                  SPEC_BSTR((yyval.lnk)) = 0;
                  ignoreTypedefType = 1;
               ;}
    break;

  case 182:

/* Line 1455 of yacc.c  */
#line 903 "src/SDCC.y"
    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  /* add this to the storage class specifier  */
                  SPEC_ABSA((yyval.lnk)) = 1;   /* set the absolute addr flag */
                  /* now get the abs addr from value */
                  SPEC_ADDR((yyval.lnk)) = (unsigned int) ulFromVal(constExprValue((yyvsp[(2) - (2)].asts),TRUE));
               ;}
    break;

  case 183:

/* Line 1455 of yacc.c  */
#line 910 "src/SDCC.y"
    {
                                   uselessDecl = FALSE;
                                   (yyval.lnk) = (yyvsp[(1) - (1)].lnk);
                                   ignoreTypedefType = 1;
                                ;}
    break;

  case 184:

/* Line 1455 of yacc.c  */
#line 915 "src/SDCC.y"
    {
                           cenum = NULL;
                           uselessDecl = FALSE;
                           ignoreTypedefType = 1;
                           (yyval.lnk) = (yyvsp[(1) - (1)].lnk);
                        ;}
    break;

  case 185:

/* Line 1455 of yacc.c  */
#line 922 "src/SDCC.y"
    {
            symbol *sym;
            sym_link *p;
            sym = findSym(TypedefTab,NULL,(yyvsp[(1) - (1)].yychar));
            (yyval.lnk) = p = copyLinkChain(sym ? sym->type : NULL);
            SPEC_TYPEDEF(getSpec(p)) = 0;
            ignoreTypedefType = 1;
         ;}
    break;

  case 187:

/* Line 1455 of yacc.c  */
#line 934 "src/SDCC.y"
    {
               (yyval.lnk) = newLink(SPECIFIER);
               SPEC_NOUN((yyval.lnk)) = V_SBIT;
               SPEC_SCLS((yyval.lnk)) = S_SBIT;
               SPEC_BLEN((yyval.lnk)) = 1;
               SPEC_BSTR((yyval.lnk)) = 0;
               ignoreTypedefType = 1;
            ;}
    break;

  case 189:

/* Line 1455 of yacc.c  */
#line 946 "src/SDCC.y"
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_CHAR;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            ;}
    break;

  case 190:

/* Line 1455 of yacc.c  */
#line 954 "src/SDCC.y"
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 1;
               SPEC_NOUN((yyval.lnk))    = V_CHAR;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            ;}
    break;

  case 191:

/* Line 1455 of yacc.c  */
#line 965 "src/SDCC.y"
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_INT;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            ;}
    break;

  case 192:

/* Line 1455 of yacc.c  */
#line 976 "src/SDCC.y"
    {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_INT;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_LONG((yyval.lnk))    = 1;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            ;}
    break;

  case 193:

/* Line 1455 of yacc.c  */
#line 989 "src/SDCC.y"
    {
          structdef *sdef;

          if (! (yyvsp[(2) - (2)].sdef)->tagsym)
            {
              /* no tag given, so new struct def for current scope */
              addSym (StructTab, (yyvsp[(2) - (2)].sdef), (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(2) - (2)].sdef)->level, currBlockno, 0);
            }
          else
            {
              sdef = findSymWithBlock (StructTab, (yyvsp[(2) - (2)].sdef)->tagsym, currBlockno, NestLevel);
              if (sdef)
                {
                  /* Error if a complete type already defined in this scope */
                  if (sdef->block == currBlockno)
                    {
                      if (sdef->fields)
                        {
                          werror(E_STRUCT_REDEF, (yyvsp[(2) - (2)].sdef)->tag);
                          werrorfl(sdef->tagsym->fileDef, sdef->tagsym->lineDef, E_PREVIOUS_DEF);
                        }
                      else
                        {
                          (yyvsp[(2) - (2)].sdef) = sdef; /* We are completing an incomplete type */
                        }
                    }
                  else
                    {
                      /* There is an existing struct def in an outer scope. */
                      /* Create new struct def for current scope */
                      addSym (StructTab, (yyvsp[(2) - (2)].sdef), (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(2) - (2)].sdef)->level, currBlockno, 0);
                    }
                }
              else
               {
                 /* There is no existing struct def at all. */
                 /* Create new struct def for current scope */
                 addSym (StructTab, (yyvsp[(2) - (2)].sdef), (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(2) - (2)].sdef)->level, currBlockno, 0);
               }
            }

          if (!(yyvsp[(2) - (2)].sdef)->type)
            {
              (yyvsp[(2) - (2)].sdef)->type = (yyvsp[(1) - (2)].yyint);
            }
          else
            {
              if ((yyvsp[(2) - (2)].sdef)->type != (yyvsp[(1) - (2)].yyint))
                  werror(E_BAD_TAG, (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(1) - (2)].yyint)==STRUCT ? "struct" : "union");
            }
        ;}
    break;

  case 194:

/* Line 1455 of yacc.c  */
#line 1041 "src/SDCC.y"
    {
          structdef *sdef;
          symbol *sym, *dsym;

          // check for errors in structure members
          for (sym=(yyvsp[(5) - (6)].sym); sym; sym=sym->next)
            {
              if (IS_ABSOLUTE(sym->etype))
                {
                  werrorfl(sym->fileDef, sym->lineDef, E_NOT_ALLOWED, "'at'");
                  SPEC_ABSA(sym->etype) = 0;
                }
              if (IS_SPEC(sym->etype) && SPEC_SCLS(sym->etype))
                {
                  werrorfl(sym->fileDef, sym->lineDef, E_NOT_ALLOWED, "storage class");
                  printTypeChainRaw (sym->type, NULL);
                  SPEC_SCLS(sym->etype) = 0;
                }
              for (dsym=sym->next; dsym; dsym=dsym->next)
                {
                  if (*dsym->name && strcmp(sym->name, dsym->name)==0)
                    {
                      werrorfl(sym->fileDef, sym->lineDef, E_DUPLICATE_MEMBER,
                               (yyvsp[(1) - (6)].yyint)==STRUCT ? "struct" : "union", sym->name);
                      werrorfl(dsym->fileDef, dsym->lineDef, E_PREVIOUS_DEF);
                    }
                }
            }

          /* Create a structdef   */
          sdef = (yyvsp[(2) - (6)].sdef);
          sdef->fields = reverseSyms((yyvsp[(5) - (6)].sym));        /* link the fields */
          sdef->size = compStructSize((yyvsp[(1) - (6)].yyint), sdef); /* update size of  */
          promoteAnonStructs ((yyvsp[(1) - (6)].yyint), sdef);

          /* Create the specifier */
          (yyval.lnk) = newLink (SPECIFIER);
          SPEC_NOUN((yyval.lnk)) = V_STRUCT;
          SPEC_STRUCT((yyval.lnk))= sdef;
        ;}
    break;

  case 195:

/* Line 1455 of yacc.c  */
#line 1082 "src/SDCC.y"
    {
          structdef *sdef;

          sdef = findSymWithBlock (StructTab, (yyvsp[(2) - (2)].sdef)->tagsym, currBlockno, NestLevel);

          if (sdef)
            (yyvsp[(2) - (2)].sdef) = sdef;
          else
            {
              /* new struct def for current scope */
              addSym (StructTab, (yyvsp[(2) - (2)].sdef), (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(2) - (2)].sdef)->level, currBlockno, 0);
            }
          (yyval.lnk) = newLink(SPECIFIER);
          SPEC_NOUN((yyval.lnk)) = V_STRUCT;
          SPEC_STRUCT((yyval.lnk)) = (yyvsp[(2) - (2)].sdef);

          if (!(yyvsp[(2) - (2)].sdef)->type)
            {
              (yyvsp[(2) - (2)].sdef)->type = (yyvsp[(1) - (2)].yyint);
            }
          else
            {
              if ((yyvsp[(2) - (2)].sdef)->type != (yyvsp[(1) - (2)].yyint))
                  werror(E_BAD_TAG, (yyvsp[(2) - (2)].sdef)->tag, (yyvsp[(1) - (2)].yyint)==STRUCT ? "struct" : "union");
            }
        ;}
    break;

  case 196:

/* Line 1455 of yacc.c  */
#line 1111 "src/SDCC.y"
    { (yyval.yyint) = STRUCT; ignoreTypedefType = 1; ;}
    break;

  case 197:

/* Line 1455 of yacc.c  */
#line 1112 "src/SDCC.y"
    { (yyval.yyint) = UNION; ignoreTypedefType = 1; ;}
    break;

  case 199:

/* Line 1455 of yacc.c  */
#line 1117 "src/SDCC.y"
    {  /* synthesize a name add to structtable */
          ignoreTypedefType = 0;
          (yyval.sdef) = newStruct(genSymName(NestLevel));
          (yyval.sdef)->level = NestLevel;
          (yyval.sdef)->block = currBlockno;
          (yyval.sdef)->tagsym = NULL;
          //addSym (StructTab, $$, $$->tag, $$->level, currBlockno, 0);
        ;}
    break;

  case 200:

/* Line 1455 of yacc.c  */
#line 1129 "src/SDCC.y"
    {  /* add name to structure table */
          ignoreTypedefType = 0;
          (yyval.sdef) = newStruct((yyvsp[(1) - (1)].sym)->name);
          (yyval.sdef)->level = NestLevel;
          (yyval.sdef)->block = currBlockno;
          (yyval.sdef)->tagsym = (yyvsp[(1) - (1)].sym);
          //$$ = findSymWithBlock (StructTab, $1, currBlockno);
          //if (! $$ )
          //  {
          //    $$ = newStruct($1->name);
          //    $$->level = NestLevel;
          //    $$->tagsym = $1;
          //    //addSym (StructTab, $$, $$->tag, $$->level, currBlockno, 0);
          //  }
        ;}
    break;

  case 202:

/* Line 1455 of yacc.c  */
#line 1149 "src/SDCC.y"
    {
          symbol *sym = (yyvsp[(2) - (2)].sym);

          /* go to the end of the chain */
          while (sym->next) sym = sym->next;
          sym->next = (yyvsp[(1) - (2)].sym);

           (yyval.sym) = (yyvsp[(2) - (2)].sym);
        ;}
    break;

  case 203:

/* Line 1455 of yacc.c  */
#line 1162 "src/SDCC.y"
    {
          /* add this type to all the symbols */
          symbol *sym;
          for ( sym = (yyvsp[(2) - (3)].sym); sym != NULL; sym = sym->next )
            {
              sym_link *btype = copyLinkChain((yyvsp[(1) - (3)].lnk));

              pointerTypes(sym->type, btype);
              if (!sym->type)
                {
                  sym->type = btype;
                  sym->etype = getSpec(sym->type);
                }
              else
                  addDecl (sym, 0, btype);
              /* make sure the type is complete and sane */
              checkTypeSanity(sym->etype, sym->name);
            }
          ignoreTypedefType = 0;
          (yyval.sym) = (yyvsp[(2) - (3)].sym);
        ;}
    break;

  case 205:

/* Line 1455 of yacc.c  */
#line 1188 "src/SDCC.y"
    {
          (yyvsp[(3) - (3)].sym)->next  = (yyvsp[(1) - (3)].sym);
          (yyval.sym) = (yyvsp[(3) - (3)].sym);
        ;}
    break;

  case 207:

/* Line 1455 of yacc.c  */
#line 1197 "src/SDCC.y"
    {
          unsigned int bitsize;
          (yyval.sym) = newSymbol (genSymName(NestLevel), NestLevel);
          bitsize = (unsigned int) ulFromVal(constExprValue((yyvsp[(2) - (2)].asts), TRUE));
          if (bitsize > (port->s.int_size * 8))
            {
              bitsize = port->s.int_size * 8;
              werror(E_BITFLD_SIZE, bitsize);
            }
          if (!bitsize)
              bitsize = BITVAR_PAD;
          (yyval.sym)->bitVar = bitsize;
          (yyval.sym)->bitUnnamed = 1;
        ;}
    break;

  case 208:

/* Line 1455 of yacc.c  */
#line 1212 "src/SDCC.y"
    {
          unsigned int bitsize;
          bitsize = (unsigned int) ulFromVal(constExprValue((yyvsp[(3) - (3)].asts), TRUE));
          if (bitsize > (port->s.int_size * 8))
            {
              bitsize = port->s.int_size * 8;
              werror(E_BITFLD_SIZE, bitsize);
            }
          if (!bitsize)
            {
              (yyval.sym) = newSymbol (genSymName(NestLevel), NestLevel);
              (yyval.sym)->bitVar = BITVAR_PAD;
              werror(W_BITFLD_NAMED);
            }
          else
              (yyvsp[(1) - (3)].sym)->bitVar = bitsize;
        ;}
    break;

  case 209:

/* Line 1455 of yacc.c  */
#line 1229 "src/SDCC.y"
    { (yyval.sym) = newSymbol ("", NestLevel); ;}
    break;

  case 210:

/* Line 1455 of yacc.c  */
#line 1234 "src/SDCC.y"
    {
          (yyval.lnk) = newEnumType ((yyvsp[(3) - (4)].sym));
          SPEC_SCLS(getSpec((yyval.lnk))) = 0;
        ;}
    break;

  case 211:

/* Line 1455 of yacc.c  */
#line 1239 "src/SDCC.y"
    {
          symbol *csym;
          sym_link *enumtype;

          csym = findSymWithLevel(enumTab, (yyvsp[(2) - (5)].sym));
          if ((csym && csym->level == (yyvsp[(2) - (5)].sym)->level))
            {
              werrorfl((yyvsp[(2) - (5)].sym)->fileDef, (yyvsp[(2) - (5)].sym)->lineDef, E_DUPLICATE_TYPEDEF, csym->name);
              werrorfl(csym->fileDef, csym->lineDef, E_PREVIOUS_DEF);
            }

          enumtype = newEnumType ((yyvsp[(4) - (5)].sym));
          SPEC_SCLS(getSpec(enumtype)) = 0;
          (yyvsp[(2) - (5)].sym)->type = enumtype;

          /* add this to the enumerator table */
          if (!csym)
              addSym (enumTab, (yyvsp[(2) - (5)].sym), (yyvsp[(2) - (5)].sym)->name, (yyvsp[(2) - (5)].sym)->level, (yyvsp[(2) - (5)].sym)->block, 0);
          (yyval.lnk) = copyLinkChain(enumtype);
        ;}
    break;

  case 212:

/* Line 1455 of yacc.c  */
#line 1260 "src/SDCC.y"
    {
          symbol *csym;

          /* check the enumerator table */
          if ((csym = findSymWithLevel(enumTab, (yyvsp[(2) - (2)].sym))))
              (yyval.lnk) = copyLinkChain(csym->type);
          else
            {
              (yyval.lnk) = newLink(SPECIFIER);
              SPEC_NOUN((yyval.lnk)) = V_INT;
            }
        ;}
    break;

  case 215:

/* Line 1455 of yacc.c  */
#line 1278 "src/SDCC.y"
    {
          (yyvsp[(3) - (3)].sym)->next = (yyvsp[(1) - (3)].sym);
          (yyval.sym) = (yyvsp[(3) - (3)].sym);
        ;}
    break;

  case 216:

/* Line 1455 of yacc.c  */
#line 1286 "src/SDCC.y"
    {
          symbol *sym;

          // check if the symbol at the same level already exists
          if ((sym = findSymWithLevel (SymbolTab, (yyvsp[(1) - (2)].sym))) && sym->level == (yyvsp[(1) - (2)].sym)->level)
            {
              werrorfl ((yyvsp[(1) - (2)].sym)->fileDef, (yyvsp[(1) - (2)].sym)->lineDef, E_DUPLICATE_MEMBER, "enum", (yyvsp[(1) - (2)].sym)->name);
              werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
            }
          (yyvsp[(1) - (2)].sym)->type = copyLinkChain ((yyvsp[(2) - (2)].val)->type);
          (yyvsp[(1) - (2)].sym)->etype = getSpec ((yyvsp[(1) - (2)].sym)->type);
          SPEC_ENUM ((yyvsp[(1) - (2)].sym)->etype) = 1;
          (yyval.sym) = (yyvsp[(1) - (2)].sym);
          // do this now, so we can use it for the next enums in the list
          addSymChain (&(yyvsp[(1) - (2)].sym));
        ;}
    break;

  case 217:

/* Line 1455 of yacc.c  */
#line 1306 "src/SDCC.y"
    {
          value *val;

          val = constExprValue((yyvsp[(2) - (2)].asts), TRUE);
          if (!IS_INT(val->type) && !IS_CHAR(val->type) && !IS_BOOL(val->type))
            {
              werror(E_ENUM_NON_INTEGER);
              SNPRINTF(lbuff, sizeof(lbuff), "%d", (int) ulFromVal(val));
              val = constVal(lbuff);
            }
          (yyval.val) = cenum = val;
        ;}
    break;

  case 218:

/* Line 1455 of yacc.c  */
#line 1318 "src/SDCC.y"
    {
          if (cenum)
            {
              SNPRINTF(lbuff, sizeof(lbuff), "%d", (int) ulFromVal(cenum)+1);
              (yyval.val) = cenum = constVal(lbuff);
            }
          else
            {
              (yyval.val) = cenum = constCharVal(0);
            }
        ;}
    break;

  case 219:

/* Line 1455 of yacc.c  */
#line 1332 "src/SDCC.y"
    { (yyval.sym) = (yyvsp[(1) - (1)].sym); ;}
    break;

  case 220:

/* Line 1455 of yacc.c  */
#line 1334 "src/SDCC.y"
    {
             addDecl ((yyvsp[(2) - (2)].sym),0,reverseLink((yyvsp[(1) - (2)].lnk)));
             (yyval.sym) = (yyvsp[(2) - (2)].sym);
         ;}
    break;

  case 221:

/* Line 1455 of yacc.c  */
#line 1341 "src/SDCC.y"
    { (yyval.sym) = (yyvsp[(1) - (1)].sym); ;}
    break;

  case 222:

/* Line 1455 of yacc.c  */
#line 1342 "src/SDCC.y"
    { (yyval.sym) = (yyvsp[(1) - (1)].sym); ;}
    break;

  case 223:

/* Line 1455 of yacc.c  */
#line 1347 "src/SDCC.y"
    {
             (yyval.sym) = (yyvsp[(1) - (1)].sym);
             strncpy (function_name, (yyval.sym)->name, sizeof (function_name) - 4);
             memset (function_name + sizeof (function_name) - 4, 0x00, 4);
         ;}
    break;

  case 224:

/* Line 1455 of yacc.c  */
#line 1353 "src/SDCC.y"
    {
             addDecl ((yyvsp[(2) - (2)].sym),0,reverseLink((yyvsp[(1) - (2)].lnk)));
             (yyval.sym) = (yyvsp[(2) - (2)].sym);
             strncpy (function_name, (yyval.sym)->name, sizeof (function_name) - 4);
             memset (function_name + sizeof (function_name) - 4, 0x00, 4);
         ;}
    break;

  case 225:

/* Line 1455 of yacc.c  */
#line 1362 "src/SDCC.y"
    { (yyval.sym) = (yyvsp[(1) - (1)].sym); ;}
    break;

  case 226:

/* Line 1455 of yacc.c  */
#line 1363 "src/SDCC.y"
    {
           // copy the functionAttributes (not the args and hasVargs !!)
           struct value *args;
           unsigned hasVargs;
           sym_link *funcType=(yyvsp[(1) - (2)].sym)->type;

           while (funcType && !IS_FUNC(funcType))
             funcType = funcType->next;

           if (!funcType)
             werror (E_FUNC_ATTR);
           else
             {
               args=FUNC_ARGS(funcType);
               hasVargs=FUNC_HASVARARGS(funcType);

               memcpy (&funcType->funcAttrs, &(yyvsp[(2) - (2)].lnk)->funcAttrs,
                   sizeof((yyvsp[(2) - (2)].lnk)->funcAttrs));

               FUNC_ARGS(funcType)=args;
               FUNC_HASVARARGS(funcType)=hasVargs;

               // just to be sure
               memset (&(yyvsp[(2) - (2)].lnk)->funcAttrs, 0,
                   sizeof((yyvsp[(2) - (2)].lnk)->funcAttrs));

               addDecl ((yyvsp[(1) - (2)].sym),0,(yyvsp[(2) - (2)].lnk));
             }
   ;}
    break;

  case 228:

/* Line 1455 of yacc.c  */
#line 1396 "src/SDCC.y"
    { (yyval.sym) = (yyvsp[(2) - (3)].sym); ;}
    break;

  case 229:

/* Line 1455 of yacc.c  */
#line 1398 "src/SDCC.y"
    {
            sym_link   *p;

            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;
            DCL_ELEM(p) = 0;
            addDecl((yyvsp[(1) - (3)].sym),0,p);
         ;}
    break;

  case 230:

/* Line 1455 of yacc.c  */
#line 1407 "src/SDCC.y"
    {
            sym_link *p;
            value *tval;
            int size;

            tval = constExprValue((yyvsp[(3) - (4)].asts), TRUE);
            /* if it is not a constant then Error  */
            p = newLink (DECLARATOR);
            DCL_TYPE(p) = ARRAY;

            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror(E_CONST_EXPECTED);
                /* Assume a single item array to limit the cascade */
                /* of additional errors. */
                size = 1;
              }
            else
              {
                if ((size = (int) ulFromVal(tval)) < 0)
                  {
                    werror(E_NEGATIVE_ARRAY_SIZE, (yyvsp[(1) - (4)].sym)->name);
                    size = 1;
                  }
              }
            DCL_ELEM(p) = size;
            addDecl((yyvsp[(1) - (4)].sym), 0, p);
         ;}
    break;

  case 231:

/* Line 1455 of yacc.c  */
#line 1439 "src/SDCC.y"
    {
          addDecl ((yyvsp[(1) - (3)].sym), FUNCTION, NULL);
        ;}
    break;

  case 232:

/* Line 1455 of yacc.c  */
#line 1443 "src/SDCC.y"
    {
          NestLevel++;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
          seqPointNo++; /* not a true sequence point, but helps resolve scope */
        ;}
    break;

  case 233:

/* Line 1455 of yacc.c  */
#line 1451 "src/SDCC.y"
    {
          sym_link *funcType;

          addDecl ((yyvsp[(1) - (5)].sym), FUNCTION, NULL);

          funcType = (yyvsp[(1) - (5)].sym)->type;
          while (funcType && !IS_FUNC(funcType))
              funcType = funcType->next;

          assert (funcType);

          FUNC_HASVARARGS(funcType) = IS_VARG((yyvsp[(4) - (5)].val));
          FUNC_ARGS(funcType) = reverseVal((yyvsp[(4) - (5)].val));

          /* nest level was incremented to take care of the parms  */
          NestLevel--;
          currBlockno = STACK_POP(blockNum);
          seqPointNo++; /* not a true sequence point, but helps resolve scope */

          // if this was a pointer (to a function)
          if (!IS_FUNC((yyvsp[(1) - (5)].sym)->type))
              cleanUpLevel(SymbolTab, NestLevel + 1);

          (yyval.sym) = (yyvsp[(1) - (5)].sym);
        ;}
    break;

  case 234:

/* Line 1455 of yacc.c  */
#line 1477 "src/SDCC.y"
    {
          werror(E_OLD_STYLE,(yyvsp[(1) - (4)].sym)->name);
          /* assume it returns an int */
          (yyvsp[(1) - (4)].sym)->type = (yyvsp[(1) - (4)].sym)->etype = newIntLink();
          (yyval.sym) = (yyvsp[(1) - (4)].sym);
        ;}
    break;

  case 235:

/* Line 1455 of yacc.c  */
#line 1486 "src/SDCC.y"
    { (yyval.lnk) = (yyvsp[(1) - (1)].lnk);;}
    break;

  case 236:

/* Line 1455 of yacc.c  */
#line 1488 "src/SDCC.y"
    {
             (yyval.lnk) = (yyvsp[(1) - (2)].lnk);
             if (IS_SPEC((yyvsp[(2) - (2)].lnk))) {
                 DCL_TSPEC((yyvsp[(1) - (2)].lnk)) = (yyvsp[(2) - (2)].lnk);
                 DCL_PTR_CONST((yyvsp[(1) - (2)].lnk)) = SPEC_CONST((yyvsp[(2) - (2)].lnk));
                 DCL_PTR_VOLATILE((yyvsp[(1) - (2)].lnk)) = SPEC_VOLATILE((yyvsp[(2) - (2)].lnk));
                 DCL_PTR_RESTRICT((yyvsp[(1) - (2)].lnk)) = SPEC_RESTRICT((yyvsp[(2) - (2)].lnk));
                 DCL_PTR_ADDRSPACE((yyvsp[(1) - (2)].lnk)) = SPEC_ADDRSPACE((yyvsp[(2) - (2)].lnk));
             }
             else
                 werror (W_PTR_TYPE_INVALID);
         ;}
    break;

  case 237:

/* Line 1455 of yacc.c  */
#line 1501 "src/SDCC.y"
    {
             (yyval.lnk) = (yyvsp[(1) - (2)].lnk);
             (yyval.lnk)->next = (yyvsp[(2) - (2)].lnk);
             DCL_TYPE((yyvsp[(2) - (2)].lnk))=port->unqualified_pointer;
         ;}
    break;

  case 238:

/* Line 1455 of yacc.c  */
#line 1507 "src/SDCC.y"
    {
             (yyval.lnk) = (yyvsp[(1) - (3)].lnk);
             if (IS_SPEC((yyvsp[(2) - (3)].lnk)) && DCL_TYPE((yyvsp[(3) - (3)].lnk)) == UPOINTER) {
                 DCL_PTR_CONST((yyvsp[(1) - (3)].lnk)) = SPEC_CONST((yyvsp[(2) - (3)].lnk));
                 DCL_PTR_VOLATILE((yyvsp[(1) - (3)].lnk)) = SPEC_VOLATILE((yyvsp[(2) - (3)].lnk));
                 DCL_PTR_RESTRICT((yyvsp[(1) - (3)].lnk)) = SPEC_RESTRICT((yyvsp[(2) - (3)].lnk));
                 DCL_PTR_ADDRSPACE((yyvsp[(1) - (3)].lnk)) = SPEC_ADDRSPACE((yyvsp[(2) - (3)].lnk));
                 switch (SPEC_SCLS((yyvsp[(2) - (3)].lnk))) {
                 case S_XDATA:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = FPOINTER;
                     break;
                 case S_IDATA:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = IPOINTER;
                     break;
                 case S_PDATA:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = PPOINTER;
                     break;
                 case S_DATA:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = POINTER;
                     break;
                 case S_CODE:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = CPOINTER;
                     break;
                 case S_EEPROM:
                     DCL_TYPE((yyvsp[(3) - (3)].lnk)) = EEPPOINTER;
                     break;
                 default:
                   // this could be just "constant"
                   // werror(W_PTR_TYPE_INVALID);
                     ;
                 }
             }
             else
                 werror (W_PTR_TYPE_INVALID);
             (yyval.lnk)->next = (yyvsp[(3) - (3)].lnk);
         ;}
    break;

  case 239:

/* Line 1455 of yacc.c  */
#line 1547 "src/SDCC.y"
    {
        (yyval.lnk) = newLink(DECLARATOR);
        DCL_TYPE((yyval.lnk))=UPOINTER;
      ;}
    break;

  case 240:

/* Line 1455 of yacc.c  */
#line 1553 "src/SDCC.y"
    { (yyval.lnk) = finalizeSpec((yyvsp[(1) - (1)].lnk)); ;}
    break;

  case 242:

/* Line 1455 of yacc.c  */
#line 1558 "src/SDCC.y"
    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[(1) - (2)].lnk), (yyvsp[(2) - (2)].lnk), "type_specifier_list type_specifier skipped");
   ;}
    break;

  case 244:

/* Line 1455 of yacc.c  */
#line 1568 "src/SDCC.y"
    {
           (yyvsp[(3) - (3)].sym)->next = (yyvsp[(1) - (3)].sym);
           (yyval.sym) = (yyvsp[(3) - (3)].sym);
         ;}
    break;

  case 246:

/* Line 1455 of yacc.c  */
#line 1576 "src/SDCC.y"
    { (yyvsp[(1) - (3)].val)->vArgs = 1;;}
    break;

  case 248:

/* Line 1455 of yacc.c  */
#line 1582 "src/SDCC.y"
    {
            (yyvsp[(3) - (3)].val)->next = (yyvsp[(1) - (3)].val);
            (yyval.val) = (yyvsp[(3) - (3)].val);
         ;}
    break;

  case 249:

/* Line 1455 of yacc.c  */
#line 1590 "src/SDCC.y"
    {
          symbol *loop;

          if (IS_SPEC ((yyvsp[(1) - (2)].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[(1) - (2)].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, (yyvsp[(2) - (2)].sym)->name);
            }
          pointerTypes ((yyvsp[(2) - (2)].sym)->type, (yyvsp[(1) - (2)].lnk));
          addDecl ((yyvsp[(2) - (2)].sym), 0, (yyvsp[(1) - (2)].lnk));
          for (loop = (yyvsp[(2) - (2)].sym); loop; loop->_isparm = 1, loop = loop->next)
            ;
          (yyval.val) = symbolVal ((yyvsp[(2) - (2)].sym));
          ignoreTypedefType = 0;
        ;}
    break;

  case 250:

/* Line 1455 of yacc.c  */
#line 1605 "src/SDCC.y"
    {
          (yyval.val) = newValue ();
          (yyval.val)->type = (yyvsp[(1) - (1)].lnk);
          (yyval.val)->etype = getSpec ((yyval.val)->type);
          ignoreTypedefType = 0;
         ;}
    break;

  case 251:

/* Line 1455 of yacc.c  */
#line 1615 "src/SDCC.y"
    {
          if (IS_SPEC ((yyvsp[(1) - (1)].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[(1) - (1)].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }
          (yyval.lnk) = (yyvsp[(1) - (1)].lnk); ignoreTypedefType = 0;
        ;}
    break;

  case 252:

/* Line 1455 of yacc.c  */
#line 1623 "src/SDCC.y"
    {
          /* go to the end of the list */
          sym_link *p;

          if (IS_SPEC ((yyvsp[(1) - (2)].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[(1) - (2)].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }
          pointerTypes ((yyvsp[(2) - (2)].lnk),(yyvsp[(1) - (2)].lnk));
          for (p = (yyvsp[(2) - (2)].lnk); p && p->next; p = p->next)
            ;
          if (!p)
            {
              werror(E_SYNTAX_ERROR, yytext);
            }
          else
            {
              p->next = (yyvsp[(1) - (2)].lnk);
            }
          (yyval.lnk) = (yyvsp[(2) - (2)].lnk);
          ignoreTypedefType = 0;
        ;}
    break;

  case 253:

/* Line 1455 of yacc.c  */
#line 1648 "src/SDCC.y"
    { (yyval.lnk) = reverseLink((yyvsp[(1) - (1)].lnk)); ;}
    break;

  case 255:

/* Line 1455 of yacc.c  */
#line 1650 "src/SDCC.y"
    { (yyvsp[(1) - (2)].lnk) = reverseLink((yyvsp[(1) - (2)].lnk)); (yyvsp[(2) - (2)].lnk)->next = (yyvsp[(1) - (2)].lnk); (yyval.lnk) = (yyvsp[(2) - (2)].lnk);
          if (IS_PTR((yyvsp[(1) - (2)].lnk)) && IS_FUNC((yyvsp[(2) - (2)].lnk)))
            DCL_TYPE((yyvsp[(1) - (2)].lnk)) = CPOINTER;
        ;}
    break;

  case 256:

/* Line 1455 of yacc.c  */
#line 1657 "src/SDCC.y"
    { (yyval.lnk) = (yyvsp[(2) - (3)].lnk); ;}
    break;

  case 257:

/* Line 1455 of yacc.c  */
#line 1658 "src/SDCC.y"
    {
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = 0;
                                    ;}
    break;

  case 258:

/* Line 1455 of yacc.c  */
#line 1663 "src/SDCC.y"
    {
                                       value *val;
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = (int) ulFromVal(val = constExprValue((yyvsp[(2) - (3)].asts),TRUE));
                                    ;}
    break;

  case 259:

/* Line 1455 of yacc.c  */
#line 1669 "src/SDCC.y"
    {
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = 0;
                                       (yyval.lnk)->next = (yyvsp[(1) - (3)].lnk);
                                    ;}
    break;

  case 260:

/* Line 1455 of yacc.c  */
#line 1676 "src/SDCC.y"
    {
                                       value *val;
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = (int) ulFromVal(val = constExprValue((yyvsp[(3) - (4)].asts),TRUE));
                                       (yyval.lnk)->next = (yyvsp[(1) - (4)].lnk);
                                    ;}
    break;

  case 261:

/* Line 1455 of yacc.c  */
#line 1683 "src/SDCC.y"
    { (yyval.lnk) = NULL;;}
    break;

  case 262:

/* Line 1455 of yacc.c  */
#line 1684 "src/SDCC.y"
    { (yyval.lnk) = NULL;;}
    break;

  case 263:

/* Line 1455 of yacc.c  */
#line 1685 "src/SDCC.y"
    {
     // $1 must be a pointer to a function
     sym_link *p=newLink(DECLARATOR);
     DCL_TYPE(p) = FUNCTION;
     if (!(yyvsp[(1) - (3)].lnk)) {
       // ((void (code *) ()) 0) ()
       (yyvsp[(1) - (3)].lnk)=newLink(DECLARATOR);
       DCL_TYPE((yyvsp[(1) - (3)].lnk))=CPOINTER;
       (yyval.lnk) = (yyvsp[(1) - (3)].lnk);
     }
     (yyvsp[(1) - (3)].lnk)->next=p;
   ;}
    break;

  case 264:

/* Line 1455 of yacc.c  */
#line 1698 "src/SDCC.y"
    {
          NestLevel++;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
        ;}
    break;

  case 265:

/* Line 1455 of yacc.c  */
#line 1705 "src/SDCC.y"
    {
          sym_link *p = newLink(DECLARATOR), *q;
          DCL_TYPE(p) = FUNCTION;

          FUNC_HASVARARGS(p) = IS_VARG((yyvsp[(4) - (5)].val));
          FUNC_ARGS(p) = reverseVal((yyvsp[(4) - (5)].val));

          /* nest level was incremented to take care of the parms  */
          NestLevel--;
          currBlockno = STACK_POP(blockNum);
          if (!(yyvsp[(1) - (5)].lnk))
            {
              /* ((void (code *) (void)) 0) () */
              (yyvsp[(1) - (5)].lnk) = newLink(DECLARATOR);
              DCL_TYPE((yyvsp[(1) - (5)].lnk)) = CPOINTER;
              (yyval.lnk) = (yyvsp[(1) - (5)].lnk);
            }
          for (q = (yyvsp[(1) - (5)].lnk); q && q->next; q = q->next);
          q->next = p;
        ;}
    break;

  case 266:

/* Line 1455 of yacc.c  */
#line 1728 "src/SDCC.y"
    { (yyval.ilist) = newiList(INIT_NODE,(yyvsp[(1) - (1)].asts)); ;}
    break;

  case 267:

/* Line 1455 of yacc.c  */
#line 1729 "src/SDCC.y"
    { (yyval.ilist) = newiList(INIT_DEEP,revinit((yyvsp[(2) - (3)].ilist))); ;}
    break;

  case 268:

/* Line 1455 of yacc.c  */
#line 1730 "src/SDCC.y"
    { (yyval.ilist) = newiList(INIT_DEEP,revinit((yyvsp[(2) - (4)].ilist))); ;}
    break;

  case 269:

/* Line 1455 of yacc.c  */
#line 1734 "src/SDCC.y"
    { (yyvsp[(2) - (2)].ilist)->designation = (yyvsp[(1) - (2)].dsgn); (yyval.ilist) = (yyvsp[(2) - (2)].ilist); ;}
    break;

  case 270:

/* Line 1455 of yacc.c  */
#line 1736 "src/SDCC.y"
    {
                                       (yyvsp[(4) - (4)].ilist)->designation = (yyvsp[(3) - (4)].dsgn);
                                       (yyvsp[(4) - (4)].ilist)->next = (yyvsp[(1) - (4)].ilist);
                                       (yyval.ilist) = (yyvsp[(4) - (4)].ilist);
                                    ;}
    break;

  case 271:

/* Line 1455 of yacc.c  */
#line 1745 "src/SDCC.y"
    {
                                       value *val = constExprValue ((yyvsp[(3) - (6)].asts), TRUE);
                                       if (!val)
                                         werror (E_CONST_EXPECTED);
                                       else if (!ulFromVal(val))
                                         werror (W_STATIC_ASSERTION, (yyvsp[(5) - (6)].yystr));
                                    ;}
    break;

  case 280:

/* Line 1455 of yacc.c  */
#line 1766 "src/SDCC.y"
    {
                   if (inCriticalFunction || inCriticalBlock)
                     werror(E_INVALID_CRITICAL);
                   inCriticalBlock = 1;
                   STACK_PUSH(continueStack,NULL);
                   STACK_PUSH(breakStack,NULL);
                   (yyval.sym) = NULL;
                ;}
    break;

  case 281:

/* Line 1455 of yacc.c  */
#line 1777 "src/SDCC.y"
    {
                   STACK_POP(breakStack);
                   STACK_POP(continueStack);
                   (yyval.asts) = newNode(CRITICAL,(yyvsp[(2) - (2)].asts),NULL);
                   inCriticalBlock = 0;
                ;}
    break;

  case 282:

/* Line 1455 of yacc.c  */
#line 1786 "src/SDCC.y"
    { if ((yyvsp[(1) - (2)].asts)) {(yyval.asts) = (yyvsp[(1) - (2)].asts); (yyvsp[(1) - (2)].asts)->right = (yyvsp[(2) - (2)].asts);} else (yyval.asts) = newNode (BLOCK, NULL, NULL); ;}
    break;

  case 283:

/* Line 1455 of yacc.c  */
#line 1788 "src/SDCC.y"
    { /* Support a label without a statement at the end of a */
       /* compound statement as a SDCC extension. Include the */
       /* closing brace as part of the rule to avoid an */
       /* unacceptably large number of shift/reduce conflicts */
       /* and then reinsert it to be parsed a second time. */
       werror(W_LABEL_WITHOUT_STATEMENT);
       (yyval.asts) = (yyvsp[(1) - (2)].asts);
       yychar = '}';
     ;}
    break;

  case 284:

/* Line 1455 of yacc.c  */
#line 1800 "src/SDCC.y"
    {  (yyval.asts) = createLabel((yyvsp[(1) - (2)].sym),NULL);
                                          (yyvsp[(1) - (2)].sym)->isitmp = 0;  ;}
    break;

  case 285:

/* Line 1455 of yacc.c  */
#line 1803 "src/SDCC.y"
    {
       if (STACK_EMPTY(swStk))
         (yyval.asts) = createCase(NULL,(yyvsp[(2) - (3)].asts),NULL);
       else
         (yyval.asts) = createCase(STACK_PEEK(swStk),(yyvsp[(2) - (3)].asts),NULL);
     ;}
    break;

  case 286:

/* Line 1455 of yacc.c  */
#line 1809 "src/SDCC.y"
    { (yyval.asts) = newNode(DEFAULT,NULL,NULL); ;}
    break;

  case 287:

/* Line 1455 of yacc.c  */
#line 1810 "src/SDCC.y"
    {
       if (STACK_EMPTY(swStk))
         (yyval.asts) = createDefault(NULL,(yyvsp[(2) - (3)].asts),NULL);
       else
         (yyval.asts) = createDefault(STACK_PEEK(swStk),(yyvsp[(2) - (3)].asts),NULL);
     ;}
    break;

  case 288:

/* Line 1455 of yacc.c  */
#line 1820 "src/SDCC.y"
    {
          NestLevel++;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
          ignoreTypedefType = 0;
        ;}
    break;

  case 289:

/* Line 1455 of yacc.c  */
#line 1831 "src/SDCC.y"
    {
          NestLevel--;
          currBlockno = STACK_POP(blockNum);
        ;}
    break;

  case 290:

/* Line 1455 of yacc.c  */
#line 1838 "src/SDCC.y"
    { (yyval.asts) = createBlock(NULL, NULL); ;}
    break;

  case 291:

/* Line 1455 of yacc.c  */
#line 1839 "src/SDCC.y"
    { (yyval.asts) = createBlock(NULL, (yyvsp[(2) - (3)].asts)); ;}
    break;

  case 292:

/* Line 1455 of yacc.c  */
#line 1841 "src/SDCC.y"
    {
       (yyval.asts) = createBlock((yyvsp[(2) - (3)].sym), NULL); 
       cleanUpLevel(StructTab, NestLevel + 1);
     ;}
    break;

  case 293:

/* Line 1455 of yacc.c  */
#line 1848 "src/SDCC.y"
    {
       (yyval.asts) = createBlock((yyvsp[(2) - (4)].sym), (yyvsp[(3) - (4)].asts)); 
       cleanUpLevel(StructTab, NestLevel + 1);
     ;}
    break;

  case 294:

/* Line 1455 of yacc.c  */
#line 1852 "src/SDCC.y"
    { (yyval.asts) = NULL; ;}
    break;

  case 295:

/* Line 1455 of yacc.c  */
#line 1857 "src/SDCC.y"
    {
       /* if this is typedef declare it immediately */
       if ( (yyvsp[(1) - (1)].sym) && IS_TYPEDEF((yyvsp[(1) - (1)].sym)->etype)) {
         allocVariables ((yyvsp[(1) - (1)].sym));
         (yyval.sym) = NULL;
       }
       else
         (yyval.sym) = (yyvsp[(1) - (1)].sym);
       ignoreTypedefType = 0;
       addSymChain(&(yyvsp[(1) - (1)].sym));
     ;}
    break;

  case 296:

/* Line 1455 of yacc.c  */
#line 1870 "src/SDCC.y"
    {
       symbol   *sym;

       /* if this is a typedef */
       if ((yyvsp[(2) - (2)].sym) && IS_TYPEDEF((yyvsp[(2) - (2)].sym)->etype)) {
         allocVariables ((yyvsp[(2) - (2)].sym));
         (yyval.sym) = (yyvsp[(1) - (2)].sym);
       }
       else {
         /* get to the end of the previous decl */
         if ( (yyvsp[(1) - (2)].sym) ) {
           (yyval.sym) = sym = (yyvsp[(1) - (2)].sym);
           while (sym->next)
             sym = sym->next;
           sym->next = (yyvsp[(2) - (2)].sym);
         }
         else
           (yyval.sym) = (yyvsp[(2) - (2)].sym);
       }
       ignoreTypedefType = 0;
       addSymChain(&(yyvsp[(2) - (2)].sym));
     ;}
    break;

  case 298:

/* Line 1455 of yacc.c  */
#line 1896 "src/SDCC.y"
    {  (yyval.asts) = newNode(NULLOP,(yyvsp[(1) - (2)].asts),(yyvsp[(2) - (2)].asts));;}
    break;

  case 299:

/* Line 1455 of yacc.c  */
#line 1900 "src/SDCC.y"
    { (yyval.asts) = NULL;;}
    break;

  case 300:

/* Line 1455 of yacc.c  */
#line 1901 "src/SDCC.y"
    { (yyval.asts) = (yyvsp[(1) - (2)].asts); seqPointNo++;;}
    break;

  case 301:

/* Line 1455 of yacc.c  */
#line 1905 "src/SDCC.y"
    { (yyval.asts) = (yyvsp[(2) - (2)].asts); ;}
    break;

  case 302:

/* Line 1455 of yacc.c  */
#line 1906 "src/SDCC.y"
    { (yyval.asts) = NULL; ;}
    break;

  case 303:

/* Line 1455 of yacc.c  */
#line 1911 "src/SDCC.y"
    { seqPointNo++;;}
    break;

  case 304:

/* Line 1455 of yacc.c  */
#line 1912 "src/SDCC.y"
    {
                              noLineno++;
                              (yyval.asts) = createIf ((yyvsp[(3) - (7)].asts), (yyvsp[(6) - (7)].asts), (yyvsp[(7) - (7)].asts) );
                              (yyval.asts)->lineno = (yyvsp[(3) - (7)].asts)->lineno;
                              (yyval.asts)->filename = (yyvsp[(3) - (7)].asts)->filename;
                              noLineno--;
                           ;}
    break;

  case 305:

/* Line 1455 of yacc.c  */
#line 1919 "src/SDCC.y"
    {
                              ast *ex;
                              static   int swLabel = 0;

                              seqPointNo++;
                              /* create a node for expression  */
                              ex = newNode(SWITCH,(yyvsp[(3) - (4)].asts),NULL);
                              STACK_PUSH(swStk,ex);   /* save it in the stack */
                              ex->values.switchVals.swNum = swLabel;

                              /* now create the label */
                              SNPRINTF(lbuff, sizeof(lbuff),
                                       "_swBrk_%d",swLabel++);
                              (yyval.sym)  =  newSymbol(lbuff,NestLevel);
                              /* put label in the break stack  */
                              STACK_PUSH(breakStack,(yyval.sym));
                           ;}
    break;

  case 306:

/* Line 1455 of yacc.c  */
#line 1936 "src/SDCC.y"
    {
                              /* get back the switch form the stack  */
                              (yyval.asts) = STACK_POP(swStk);
                              (yyval.asts)->right = newNode (NULLOP,(yyvsp[(6) - (6)].asts),createLabel((yyvsp[(5) - (6)].sym),NULL));
                              STACK_POP(breakStack);
                           ;}
    break;

  case 307:

/* Line 1455 of yacc.c  */
#line 1944 "src/SDCC.y"
    {  /* create and push the continue , break & body labels */
                  static int Lblnum = 0;
                  /* continue */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilecontinue_%d",Lblnum);
                  STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
                  /* break */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilebreak_%d",Lblnum);
                  STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
                  /* body */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilebody_%d",Lblnum++);
                  (yyval.sym) = newSymbol(lbuff,NestLevel);
               ;}
    break;

  case 308:

/* Line 1455 of yacc.c  */
#line 1958 "src/SDCC.y"
    {  /* create and push the continue , break & body Labels */
           static int Lblnum = 0;

           /* continue */
           SNPRINTF(lbuff, sizeof(lbuff), "_docontinue_%d",Lblnum);
           STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
           /* break */
           SNPRINTF(lbuff, sizeof(lbuff), "_dobreak_%d",Lblnum);
           STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
           /* do body */
           SNPRINTF(lbuff, sizeof(lbuff), "_dobody_%d",Lblnum++);
           (yyval.sym) = newSymbol (lbuff,NestLevel);
        ;}
    break;

  case 309:

/* Line 1455 of yacc.c  */
#line 1973 "src/SDCC.y"
    { /* create & push continue, break & body labels */
            static int Lblnum = 0;

           NestLevel++;
           STACK_PUSH(blockNum, currBlockno);
           btree_add_child(currBlockno, ++blockNo);
           currBlockno = blockNo;
           ignoreTypedefType = 0;

            /* continue */
            SNPRINTF(lbuff, sizeof(lbuff), "_forcontinue_%d",Lblnum);
            STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
            /* break    */
            SNPRINTF(lbuff, sizeof(lbuff), "_forbreak_%d",Lblnum);
            STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
            /* body */
            SNPRINTF(lbuff, sizeof(lbuff), "_forbody_%d",Lblnum);
            (yyval.sym) = newSymbol(lbuff,NestLevel);
            /* condition */
            SNPRINTF(lbuff, sizeof(lbuff), "_forcond_%d",Lblnum++);
            STACK_PUSH(forStack,newSymbol(lbuff,NestLevel));
          ;}
    break;

  case 310:

/* Line 1455 of yacc.c  */
#line 1998 "src/SDCC.y"
    { seqPointNo++;;}
    break;

  case 311:

/* Line 1455 of yacc.c  */
#line 1999 "src/SDCC.y"
    {
                           noLineno++;
                           (yyval.asts) = createWhile ( (yyvsp[(1) - (6)].sym), STACK_POP(continueStack),
                                              STACK_POP(breakStack), (yyvsp[(3) - (6)].asts), (yyvsp[(6) - (6)].asts) );
                           (yyval.asts)->lineno = (yyvsp[(1) - (6)].sym)->lineDef;
                           (yyval.asts)->filename = (yyvsp[(1) - (6)].sym)->fileDef;
                           noLineno--;
                         ;}
    break;

  case 312:

/* Line 1455 of yacc.c  */
#line 2008 "src/SDCC.y"
    {
                          seqPointNo++;
                          noLineno++;
                          (yyval.asts) = createDo ( (yyvsp[(1) - (7)].sym) , STACK_POP(continueStack),
                                          STACK_POP(breakStack), (yyvsp[(5) - (7)].asts), (yyvsp[(2) - (7)].asts));
                          (yyval.asts)->lineno = (yyvsp[(1) - (7)].sym)->lineDef;
                          (yyval.asts)->filename = (yyvsp[(1) - (7)].sym)->fileDef;
                          noLineno--;
                        ;}
    break;

  case 313:

/* Line 1455 of yacc.c  */
#line 2018 "src/SDCC.y"
    {
                          noLineno++;

                          (yyval.asts) = newNode(FOR,(yyvsp[(9) - (9)].asts),NULL);
                          AST_FOR((yyval.asts),trueLabel) = (yyvsp[(1) - (9)].sym);
                          AST_FOR((yyval.asts),continueLabel) =  STACK_POP(continueStack);
                          AST_FOR((yyval.asts),falseLabel) = STACK_POP(breakStack);
                          AST_FOR((yyval.asts),condLabel)  = STACK_POP(forStack);
                          AST_FOR((yyval.asts),initExpr)   = (yyvsp[(3) - (9)].asts);
                          AST_FOR((yyval.asts),condExpr)   = (yyvsp[(5) - (9)].asts);
                          AST_FOR((yyval.asts),loopExpr)   = (yyvsp[(7) - (9)].asts);
                          
                          /* This continue label is not at the correct location, */
                          /* but we need to create it now for proper binding. The */
                          /* code that handles the FOR node will move it to the */
                          /* proper location inside the for loop. */
                          if (AST_FOR((yyval.asts),continueLabel)->isref)
                            (yyval.asts)->right = createLabel(AST_FOR((yyval.asts),continueLabel),NULL);
                          (yyval.asts) = newNode(NULLOP,(yyval.asts),createLabel(AST_FOR((yyval.asts),falseLabel),NULL));
                          noLineno--;

                          NestLevel--;
                          currBlockno = STACK_POP(blockNum);
                        ;}
    break;

  case 314:

/* Line 1455 of yacc.c  */
#line 2043 "src/SDCC.y"
    {
                          if (!options.std_c99)
                            werror (E_FOR_INITAL_DECLARATION_C99);

                          noLineno++;

                          if ( (yyvsp[(3) - (8)].sym) && IS_TYPEDEF((yyvsp[(3) - (8)].sym)->etype))
                            allocVariables ((yyvsp[(3) - (8)].sym));
                          ignoreTypedefType = 0;
                          addSymChain(&(yyvsp[(3) - (8)].sym));

                          (yyval.asts) = newNode(FOR,(yyvsp[(8) - (8)].asts),NULL);
                          AST_FOR((yyval.asts),trueLabel) = (yyvsp[(1) - (8)].sym);
                          AST_FOR((yyval.asts),continueLabel) =  STACK_POP(continueStack);
                          AST_FOR((yyval.asts),falseLabel) = STACK_POP(breakStack);
                          AST_FOR((yyval.asts),condLabel)  = STACK_POP(forStack);
                          AST_FOR((yyval.asts),initExpr)   = 0;
                          AST_FOR((yyval.asts),condExpr)   = (yyvsp[(4) - (8)].asts);
                          AST_FOR((yyval.asts),loopExpr)   = (yyvsp[(6) - (8)].asts);

                          /* This continue label is not at the correct location, */
                          /* but we need to create it now for proper binding. The */
                          /* code that handles the FOR node will move it to the */
                          /* proper location inside the for loop. */
                          if (AST_FOR((yyval.asts),continueLabel)->isref)
                            (yyval.asts)->right = createLabel(AST_FOR((yyval.asts),continueLabel),NULL);
                          (yyval.asts) = createBlock((yyvsp[(3) - (8)].sym), newNode(NULLOP,(yyval.asts),createLabel(AST_FOR((yyval.asts),falseLabel),NULL)));
                          cleanUpLevel(StructTab, NestLevel + 1);
                          noLineno--;

                          NestLevel--;
                          currBlockno = STACK_POP(blockNum);
                        ;}
    break;

  case 315:

/* Line 1455 of yacc.c  */
#line 2079 "src/SDCC.y"
    { (yyval.asts) = NULL; seqPointNo++; ;}
    break;

  case 316:

/* Line 1455 of yacc.c  */
#line 2080 "src/SDCC.y"
    { (yyval.asts) = (yyvsp[(1) - (1)].asts); seqPointNo++; ;}
    break;

  case 317:

/* Line 1455 of yacc.c  */
#line 2084 "src/SDCC.y"
    {
                              if (inCriticalBlock) {
                                werror(E_INVALID_CRITICAL);
                                (yyval.asts) = NULL;
                              } else {
                                (yyvsp[(2) - (3)].sym)->islbl = 1;
                                (yyval.asts) = newAst_VALUE(symbolVal((yyvsp[(2) - (3)].sym)));
                                (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
                              }
                           ;}
    break;

  case 318:

/* Line 1455 of yacc.c  */
#line 2094 "src/SDCC.y"
    {
       /* make sure continue is in context */
       if (STACK_EMPTY(continueStack) || STACK_PEEK(continueStack) == NULL) {
           werror(E_BREAK_CONTEXT);
           (yyval.asts) = NULL;
       }
       else {
           (yyval.asts) = newAst_VALUE(symbolVal(STACK_PEEK(continueStack)));
           (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
           /* mark the continue label as referenced */
           STACK_PEEK(continueStack)->isref = 1;
       }
   ;}
    break;

  case 319:

/* Line 1455 of yacc.c  */
#line 2107 "src/SDCC.y"
    {
       if (STACK_EMPTY(breakStack) || STACK_PEEK(breakStack) == NULL) {
           werror(E_BREAK_CONTEXT);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newAst_VALUE(symbolVal(STACK_PEEK(breakStack)));
           (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
           STACK_PEEK(breakStack)->isref = 1;
       }
   ;}
    break;

  case 320:

/* Line 1455 of yacc.c  */
#line 2117 "src/SDCC.y"
    {
       seqPointNo++;
       if (inCriticalBlock) {
           werror(E_INVALID_CRITICAL);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newNode(RETURN,NULL,NULL);
       }
   ;}
    break;

  case 321:

/* Line 1455 of yacc.c  */
#line 2126 "src/SDCC.y"
    {
       seqPointNo++;
       if (inCriticalBlock) {
           werror(E_INVALID_CRITICAL);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newNode(RETURN,NULL,(yyvsp[(2) - (3)].asts));
       }
   ;}
    break;

  case 323:

/* Line 1455 of yacc.c  */
#line 2143 "src/SDCC.y"
    {
        ast *ex;

        seqPointNo++;
        ex = newNode(INLINEASM, NULL, NULL);
        ex->values.inlineasm = strdup(copyStr ((yyvsp[(3) - (5)].yystr), NULL));
        seqPointNo++;
        (yyval.asts) = ex;
     ;}
    break;

  case 324:

/* Line 1455 of yacc.c  */
#line 2153 "src/SDCC.y"
    {
        ast *ex;

        seqPointNo++;
        ex = newNode(INLINEASM, NULL, NULL);
        ex->values.inlineasm = strdup((yyvsp[(1) - (2)].yystr));
        seqPointNo++;
        (yyval.asts) = ex;
      ;}
    break;

  case 325:

/* Line 1455 of yacc.c  */
#line 2165 "src/SDCC.y"
    {
     symbol *sym;
     if ((sym = findSymWithLevel (AddrspaceTab, (yyvsp[(3) - (4)].sym))) && sym->level == (yyvsp[(3) - (4)].sym)->level)
       werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
     if (!findSymWithLevel (SymbolTab, (yyvsp[(2) - (4)].sym)))
       werror (E_ID_UNDEF, (yyvsp[(2) - (4)].sym)->name);
     addSym (AddrspaceTab, (yyvsp[(3) - (4)].sym), (yyvsp[(3) - (4)].sym)->name, (yyvsp[(3) - (4)].sym)->level, (yyvsp[(3) - (4)].sym)->block, 0);
     sym = findSymWithLevel (AddrspaceTab, (yyvsp[(3) - (4)].sym));
     sym->addressmod[0] = findSymWithLevel (SymbolTab, (yyvsp[(2) - (4)].sym));
     sym->addressmod[1] = 0;
   ;}
    break;

  case 326:

/* Line 1455 of yacc.c  */
#line 2176 "src/SDCC.y"
    {
     symbol *sym;
     sym_link *type;
     if ((sym = findSymWithLevel (AddrspaceTab, (yyvsp[(4) - (5)].sym))) && sym->level == (yyvsp[(4) - (5)].sym)->level)
       werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
     if (!findSymWithLevel (SymbolTab, (yyvsp[(2) - (5)].sym)))
       werror (E_ID_UNDEF, (yyvsp[(2) - (5)].sym)->name);
     addSym (AddrspaceTab, (yyvsp[(4) - (5)].sym), (yyvsp[(4) - (5)].sym)->name, (yyvsp[(4) - (5)].sym)->level, (yyvsp[(4) - (5)].sym)->block, 0);
     sym = findSymWithLevel (AddrspaceTab, (yyvsp[(4) - (5)].sym));
     sym->addressmod[0] = findSymWithLevel (SymbolTab, (yyvsp[(2) - (5)].sym));
     sym->addressmod[1] = 0;
     type = newLink (SPECIFIER);
     SPEC_CONST(type) = 1;
     sym->type = sym->etype = type;
   ;}
    break;

  case 327:

/* Line 1455 of yacc.c  */
#line 2194 "src/SDCC.y"
    { (yyval.sym) = newSymbol ((yyvsp[(1) - (1)].yychar), NestLevel); ;}
    break;



/* Line 1455 of yacc.c  */
#line 5580 "src/SDCCy.c"
      default: break;
    }
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
      {
	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
	  {
	    YYSIZE_T yyalloc = 2 * yysize;
	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
	    if (yymsg != yymsgbuf)
	      YYSTACK_FREE (yymsg);
	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
	    if (yymsg)
	      yymsg_alloc = yyalloc;
	    else
	      {
		yymsg = yymsgbuf;
		yymsg_alloc = sizeof yymsgbuf;
	      }
	  }

	if (0 < yysize && yysize <= yymsg_alloc)
	  {
	    (void) yysyntax_error (yymsg, yystate, yychar);
	    yyerror (yymsg);
	  }
	else
	  {
	    yyerror (YY_("syntax error"));
	    if (yysize != 0)
	      goto yyexhaustedlab;
	  }
      }
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
	{
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
	}
      else
	{
	  yydestruct ("Error: discarding",
		      yytoken, &yylval);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (yyn != YYPACT_NINF)
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  *++yyvsp = yylval;


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#if !defined(yyoverflow) || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEMPTY)
     yydestruct ("Cleanup: discarding lookahead",
		 yytoken, &yylval);
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}



/* Line 1675 of yacc.c  */
#line 2196 "src/SDCC.y"


