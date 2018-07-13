#   File:       Makefile
#   Target:     MakeDefs
#   Created:    Monday, July 2, 2018 02:10:22 PM


MAKEFILE        = Tools.make
¥MondoBuild¥    = {MAKEFILE}  # Make blank to avoid rebuilds when makefile is modified

ObjDir          = :obj:
Includes        =  ¶
				  -i :include: ¶
				  -i :sys:share:

Sym-68K         = -sym off
Sym-PPC         = -sym off

COptions        = {Includes} {Sym-68K} -model far -mc68020 -w 2,35 -enum int
PPCCOptions        = {Includes} {Sym-PPC} -w 2,35 -enum int -align power
Tools-COptions	= -d TARGET_API_MAC_OS8=1 

FLEX	= ::flex-2.5.27:flex
YACC	= ::byacc-20180609:yacc

### Source Files ###

SrcFiles        =  ¶
				  :src:objects.c ¶
				  :src:monst.c ¶
				  :util:makedefs.c ¶
				  :src:alloc.c ¶
				  :util:dgn_lex.l ¶
				  :util:dgn_yacc.y ¶
				  :util:dgn_main.c ¶
				  :util:panic.c ¶
				  :src:decl.c ¶
				  :src:drawing.c ¶
				  :sys:mac:macerrs.c ¶
				  :sys:mac:macfile.c ¶
				  :util:lev_lex.l ¶
				  :util:lev_yacc.y ¶
				  :util:lev_main.c 


### Object Files ###

MakeDefs-ObjFiles-68K    =  ¶
				  "{ObjDir}objects.c.68k.o" ¶
				  "{ObjDir}monst.c.68k.o" ¶
				  "{ObjDir}makedefs.c.68k.o"

DgnComp-ObjFiles-68K    =  ¶
				  "{ObjDir}alloc.c.68k.o" ¶
				  "{ObjDir}dgn_lex.c.68k.o" ¶
				  "{ObjDir}dgn_yacc.c.68k.o" ¶
				  "{ObjDir}dgn_main.c.68k.o" ¶
				  "{ObjDir}panic.c.68k.o"

LevComp-ObjFiles-68K    =  ¶
				  "{ObjDir}alloc.c.68k.o" ¶
				  "{ObjDir}decl.c.68k.o" ¶
				  "{ObjDir}drawing.c.68k.o" ¶
				  "{ObjDir}monst.c.68k.o" ¶
				  "{ObjDir}objects.c.68k.o" ¶
				  "{ObjDir}macerrs.c.68k.o" ¶
				  "{ObjDir}macfile.c.68k.o" ¶
				  "{ObjDir}lev_lex.c.68k.o" ¶
				  "{ObjDir}lev_yacc.c.68k.o" ¶
				  "{ObjDir}lev_main.c.68k.o" ¶
				  "{ObjDir}panic.c.68k.o"

MakeDefs-ObjFiles-PPC    =  ¶
				  "{ObjDir}objects.c.ppc.o" ¶
				  "{ObjDir}monst.c.ppc.o" ¶
				  "{ObjDir}makedefs.c.ppc.o"

DgnComp-ObjFiles-PPC    =  ¶
				  "{ObjDir}alloc.c.ppc.o" ¶
				  "{ObjDir}dgn_lex.c.ppc.o" ¶
				  "{ObjDir}dgn_yacc.c.ppc.o" ¶
				  "{ObjDir}dgn_main.c.ppc.o" ¶
				  "{ObjDir}panic.c.ppc.o"

LevComp-ObjFiles-PPC    =  ¶
				  "{ObjDir}alloc.c.ppc.o" ¶
				  "{ObjDir}decl.c.ppc.o" ¶
				  "{ObjDir}drawing.c.ppc.o" ¶
				  "{ObjDir}monst.c.ppc.o" ¶
				  "{ObjDir}objects.c.ppc.o" ¶
				  "{ObjDir}macerrs.c.ppc.o" ¶
				  "{ObjDir}macfile.c.ppc.o" ¶
				  "{ObjDir}lev_lex.c.ppc.o" ¶
				  "{ObjDir}lev_yacc.c.ppc.o" ¶
				  "{ObjDir}lev_main.c.ppc.o" ¶
				  "{ObjDir}panic.c.ppc.o"


### Libraries ###

LibFiles-68K    =  ¶
				  "{Libraries}Stubs.o" ¶
				  "{Libraries}MathLib.o" ¶
				  "{CLibraries}StdCLib.o" ¶
				  "{Libraries}MacRuntime.o" ¶
				  "{Libraries}IntEnv.o" ¶
				  "{Libraries}ToolLibs.o" ¶
				  "{Libraries}Interface.o"

LibFiles-PPC	=  ¶
				  "{SharedLibraries}MathLib" ¶
				  "{SharedLibraries}StdCLib" ¶
				  "{PPCLibraries}StdCRuntime.o" ¶
				  "{PPCLibraries}PPCCRuntime.o" ¶
				  "{PPCLibraries}PPCToolLibs.o" ¶
				  "{SharedLibraries}InterfaceLib"


### Default Rules ###

.c.68k.o  Ä  .c  {¥MondoBuild¥}
	{C} {depDir}{default}.c -o {targDir}{default}.c.68k.o {COptions} {Tools-COptions}

.c.ppc.o  Ä  .c  {¥MondoBuild¥}
	{PPCC} {depDir}{default}.c -o {targDir}{default}.c.ppc.o {PPCCOptions} {Tools-COptions}


### Build Rules ###

MakeDefs  ÄÄ  {MakeDefs-ObjFiles-68K} {LibFiles-68K} {¥MondoBuild¥}
	Link ¶
		-o {Targ} ¶
		{MakeDefs-ObjFiles-68K} ¶
		{LibFiles-68K} ¶
		{Sym-68K} ¶
		-mf -d ¶
		-t 'MPST' ¶
		-c 'MPS ' ¶
		-model far 

MakeDefs  ÄÄ  {MakeDefs-ObjFiles-PPC} {LibFiles-PPC} {¥MondoBuild¥}
	PPCLink ¶
		-o {Targ} ¶
		{MakeDefs-ObjFiles-PPC} ¶
		{LibFiles-PPC} ¶
		{Sym-PPC} ¶
		-mf -d ¶
		-t 'MPST' ¶
		-c 'MPS ' 


DgnComp  ÄÄ  {DgnComp-ObjFiles-68K} {LibFiles-68K} {¥MondoBuild¥}
	Link ¶
		-o {Targ} ¶
		{DgnComp-ObjFiles-68K} ¶
		{LibFiles-68K} ¶
		{Sym-68K} ¶
		-mf -d ¶
		-t 'MPST' ¶
		-c 'MPS ' ¶
		-model far 

DgnComp  ÄÄ  {DgnComp-ObjFiles-PPC} {LibFiles-PPC} {¥MondoBuild¥}
	PPCLink ¶
		-o {Targ} ¶
		{DgnComp-ObjFiles-PPC} ¶
		{LibFiles-PPC} ¶
		{Sym-PPC} ¶
		-mf -d ¶
		-t 'MPST' ¶
		-c 'MPS ' 


LevComp  ÄÄ  {LevComp-ObjFiles-68K} {LibFiles-68K} {¥MondoBuild¥}
	Link ¶
		-o {Targ} ¶
		{LevComp-ObjFiles-68K} ¶
		{LibFiles-68K} ¶
		{Sym-68K} ¶
		-mf -d ¶
		-t 'MPST' ¶
		-c 'MPS ' ¶
		-model far 

LevComp  ÄÄ  {LevComp-ObjFiles-PPC} {LibFiles-PPC} {¥MondoBuild¥}
	PPCLink ¶
		-o {Targ} ¶
		{LevComp-ObjFiles-PPC} ¶
		{LibFiles-PPC} ¶
		{Sym-PPC} ¶
		-mf -d ¶
		-t 'MPST' ¶
		-c 'MPS ' 


### Required Dependencies ###

"{ObjDir}objects.c.68k.o" "{ObjDir}objects.c.ppc.o"  Ä  :src:objects.c
"{ObjDir}monst.c.68k.o" "{ObjDir}monst.c.ppc.o"  Ä  :src:monst.c
"{ObjDir}makedefs.c.68k.o" "{ObjDir}makedefs.c.ppc.o"  Ä  :util:makedefs.c
"{ObjDir}alloc.c.68k.o" "{ObjDir}alloc.c.ppc.o"  Ä  :src:alloc.c
"{ObjDir}dgn_lex.c.68k.o" "{ObjDir}dgn_lex.c.ppc.o"  Ä  "{ObjDir}dgn_lex.c"
"{ObjDir}dgn_yacc.c.68k.o" "{ObjDir}dgn_yacc.c.ppc.o"  Ä  "{ObjDir}dgn_yacc.c"
"{ObjDir}dgn_main.c.68k.o" "{ObjDir}dgn_main.c.ppc.o"  Ä  :util:dgn_main.c
"{ObjDir}panic.c.68k.o" "{ObjDir}panic.c.ppc.o"  Ä  :util:panic.c
"{ObjDir}decl.c.68k.o" "{ObjDir}decl.c.ppc.o"  Ä  :src:decl.c
"{ObjDir}drawing.c.68k.o" "{ObjDir}drawing.c.ppc.o"  Ä  :src:drawing.c
"{ObjDir}macerrs.c.68k.o" "{ObjDir}macerrs.c.ppc.o"  Ä  :sys:mac:macerrs.c
"{ObjDir}macfile.c.68k.o" "{ObjDir}macfile.c.ppc.o"  Ä  :sys:mac:macfile.c
"{ObjDir}lev_lex.c.68k.o" "{ObjDir}lev_lex.c.ppc.o"  Ä  "{ObjDir}lev_lex.c"
"{ObjDir}lev_yacc.c.68k.o" "{ObjDir}lev_yacc.c.ppc.o"  Ä  "{ObjDir}lev_yacc.c"
"{ObjDir}lev_main.c.68k.o" "{ObjDir}lev_main.c.ppc.o"  Ä  :util:lev_main.c


"{ObjDir}dgn_lex.c"  Ä  :util:dgn_comp.l
	{FLEX} :util:dgn_comp.l
	StreamEdit -e '1,$ Replace /"lex.yy.c"/ "dgn_lex.c"' ¶
		-e '1,$ Replace /static void yyunput/ "void yyunput"' lex.yy.c > {targDir}{targ}

"{ObjDir}dgn_yacc.c"  Ä  :util:dgn_comp.y
	{YACC} -d :util:dgn_comp.y
	StreamEdit -e '1,$ Replace /"y.tab.c"/ "dgn_yacc.c"' y.tab.c > {targDir}{targ}
	StreamEdit -e '1,$ Replace /"y.tab.h"/ "dgn_yacc.h"' y.tab.h > :include:dgn_yacc.h

"{ObjDir}lev_lex.c"  Ä  :util:lev_comp.l
	{FLEX} :util:lev_comp.l
	StreamEdit -e '1,$ Replace /"lex.yy.c"/ "lev_lex.c"' ¶
		-e '1,$ Replace /static void yyunput/ "void yyunput"' lex.yy.c > {targDir}{targ}

"{ObjDir}lev_yacc.c"  Ä  :util:lev_comp.y
	{YACC} -d :util:lev_comp.y
	StreamEdit -e '1,$ Replace /"y.tab.c"/ "lev_yacc.c"' y.tab.c > {targDir}{targ}
	StreamEdit -e '1,$ Replace /"y.tab.h"/ "lev_yacc.h"' y.tab.h > :include:lev_yacc.h


### Optional Dependencies ###
### Build this target to generate "include file" dependencies. ###

Dependencies  Ä  $OutOfDate
	MakeDepend ¶
		-append {MAKEFILE} ¶
		-ignore "{CIncludes}" ¶
		-objdir "{ObjDir}" ¶
		-objext .o ¶
		{Includes} ¶
		{SrcFiles}


