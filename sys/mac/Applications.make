#   File:       Makefile
#   Target:     NetHack
#   Created:    Wednesday, July 4, 2018 01:14:13 PM


MAKEFILE        = Applications.make
¥MondoBuild¥    = #{MAKEFILE}  # Make blank to avoid rebuilds when makefile is modified

CarbonStdCLibDir = ::CarbonStdCLib.o-3.8d3:

ObjDir          = :obj:
Includes        =  ¶
				  -i :include: ¶
				  -i "{CarbonStdCLibDir}CIncludes:"

Sym-PPC         = -sym off

PPCCOptions     = {Includes} {Sym-PPC} -opt size -w 2,35 -enum int
NetHack-COptions = -d TARGET_API_MAC_CARBON=1
Recover-COptions = -d TARGET_API_MAC_OS8=1 -d OLDROUTINENAMES=1


### Source Files ###

SrcFiles        =  ¶
				  :src:allmain.c ¶
				  :src:alloc.c ¶
				  :src:apply.c ¶
				  :src:artifact.c ¶
				  :src:attrib.c ¶
				  :src:ball.c ¶
				  :src:bones.c ¶
				  :src:botl.c ¶
				  :src:cmd.c ¶
				  :src:dbridge.c ¶
				  :src:decl.c ¶
				  :src:detect.c ¶
				  :src:dig.c ¶
				  :src:display.c ¶
				  :src:dlb.c ¶
				  :src:do.c ¶
				  :src:dog.c ¶
				  :src:dogmove.c ¶
				  :src:dokick.c ¶
				  :src:dothrow.c ¶
				  :src:do_name.c ¶
				  :src:do_wear.c ¶
				  :src:drawing.c ¶
				  :src:dungeon.c ¶
				  :src:eat.c ¶
				  :src:end.c ¶
				  :src:engrave.c ¶
				  :src:exper.c ¶
				  :src:explode.c ¶
				  :src:extralev.c ¶
				  :src:files.c ¶
				  :src:fountain.c ¶
				  :src:hack.c ¶
				  :src:hacklib.c ¶
				  :src:invent.c ¶
				  :src:light.c ¶
				  :src:lock.c ¶
				  :src:mail.c ¶
				  :src:makemon.c ¶
				  :src:mapglyph.c ¶
				  :src:mcastu.c ¶
				  :src:mhitm.c ¶
				  :src:mhitu.c ¶
				  :src:minion.c ¶
				  :src:mklev.c ¶
				  :src:mkmap.c ¶
				  :src:mkmaze.c ¶
				  :src:mkobj.c ¶
				  :src:mkroom.c ¶
				  :src:mon.c ¶
				  :src:mondata.c ¶
				  :src:monmove.c ¶
				  :src:monst.c ¶
				  :src:monstr.c ¶
				  :src:mplayer.c ¶
				  :src:mthrowu.c ¶
				  :src:muse.c ¶
				  :src:music.c ¶
				  :src:objects.c ¶
				  :src:objnam.c ¶
				  :src:options.c ¶
				  :src:o_init.c ¶
				  :src:pager.c ¶
				  :src:pickup.c ¶
				  :src:pline.c ¶
				  :src:polyself.c ¶
				  :src:potion.c ¶
				  :src:pray.c ¶
				  :src:priest.c ¶
				  :src:quest.c ¶
				  :src:questpgr.c ¶
				  :src:read.c ¶
				  :src:rect.c ¶
				  :src:region.c ¶
				  :src:restore.c ¶
				  :src:rip.c ¶
				  :src:rnd.c ¶
				  :src:role.c ¶
				  :src:rumors.c ¶
				  :src:save.c ¶
				  :src:shk.c ¶
				  :src:shknam.c ¶
				  :src:sit.c ¶
				  :src:sounds.c ¶
				  :src:spell.c ¶
				  :src:sp_lev.c ¶
				  :src:steal.c ¶
				  :src:steed.c ¶
				  :src:sys.c ¶
				  :src:teleport.c ¶
				  :src:timeout.c ¶
				  :src:topten.c ¶
				  :src:track.c ¶
				  :src:trap.c ¶
				  :src:uhitm.c ¶
				  :src:u_init.c ¶
				  :src:vault.c ¶
				  :src:version.c ¶
				  :src:vision.c ¶
				  :src:vis_tab.c ¶
				  :src:weapon.c ¶
				  :src:were.c ¶
				  :src:wield.c ¶
				  :src:windows.c ¶
				  :src:wizard.c ¶
				  :src:worm.c ¶
				  :src:worn.c ¶
				  :src:write.c ¶
				  :src:zap.c ¶
				  :sys:mac:dprintf.c ¶
				  :sys:mac:Files.r ¶
				  :sys:mac:maccurs.c ¶
				  :sys:mac:macerrs.c ¶
				  :sys:mac:macfile.c ¶
				  :sys:mac:macmain.c ¶
				  :sys:mac:macmenu.c ¶
				  :sys:mac:macsnd.c ¶
				  :sys:mac:mactopl.c ¶
				  :sys:mac:mactty.c ¶
				  :sys:mac:macunix.c ¶
				  :sys:mac:macwin.c ¶
				  :sys:mac:mgetline.c ¶
				  :sys:mac:mmodal.c ¶
				  :sys:mac:mttymain.c ¶
				  :sys:share:pmatchregex.c ¶
				  :sys:share:random.c ¶
				  :win:tty:getline.c ¶
				  :win:tty:termcap.c ¶
				  :win:tty:topl.c ¶
				  :win:tty:wintty.c ¶
				  :sys:mac:mrecover.c 


### Object Files ###

ObjFiles-PPC    =  ¶
				  "{ObjDir}allmain.c.ppc.o" ¶
				  "{ObjDir}alloc.c.ppc.o" ¶
				  "{ObjDir}apply.c.ppc.o" ¶
				  "{ObjDir}artifact.c.ppc.o" ¶
				  "{ObjDir}attrib.c.ppc.o" ¶
				  "{ObjDir}ball.c.ppc.o" ¶
				  "{ObjDir}bones.c.ppc.o" ¶
				  "{ObjDir}botl.c.ppc.o" ¶
				  "{ObjDir}cmd.c.ppc.o" ¶
				  "{ObjDir}dbridge.c.ppc.o" ¶
				  "{ObjDir}decl.c.ppc.o" ¶
				  "{ObjDir}detect.c.ppc.o" ¶
				  "{ObjDir}dig.c.ppc.o" ¶
				  "{ObjDir}display.c.ppc.o" ¶
				  "{ObjDir}dlb.c.ppc.o" ¶
				  "{ObjDir}do.c.ppc.o" ¶
				  "{ObjDir}dog.c.ppc.o" ¶
				  "{ObjDir}dogmove.c.ppc.o" ¶
				  "{ObjDir}dokick.c.ppc.o" ¶
				  "{ObjDir}dothrow.c.ppc.o" ¶
				  "{ObjDir}do_name.c.ppc.o" ¶
				  "{ObjDir}do_wear.c.ppc.o" ¶
				  "{ObjDir}drawing.c.ppc.o" ¶
				  "{ObjDir}dungeon.c.ppc.o" ¶
				  "{ObjDir}eat.c.ppc.o" ¶
				  "{ObjDir}end.c.ppc.o" ¶
				  "{ObjDir}engrave.c.ppc.o" ¶
				  "{ObjDir}exper.c.ppc.o" ¶
				  "{ObjDir}explode.c.ppc.o" ¶
				  "{ObjDir}extralev.c.ppc.o" ¶
				  "{ObjDir}files.c.ppc.o" ¶
				  "{ObjDir}fountain.c.ppc.o" ¶
				  "{ObjDir}hack.c.ppc.o" ¶
				  "{ObjDir}hacklib.c.ppc.o" ¶
				  "{ObjDir}invent.c.ppc.o" ¶
				  "{ObjDir}light.c.ppc.o" ¶
				  "{ObjDir}lock.c.ppc.o" ¶
				  "{ObjDir}mail.c.ppc.o" ¶
				  "{ObjDir}makemon.c.ppc.o" ¶
				  "{ObjDir}mapglyph.c.ppc.o" ¶
				  "{ObjDir}mcastu.c.ppc.o" ¶
				  "{ObjDir}mhitm.c.ppc.o" ¶
				  "{ObjDir}mhitu.c.ppc.o" ¶
				  "{ObjDir}minion.c.ppc.o" ¶
				  "{ObjDir}mklev.c.ppc.o" ¶
				  "{ObjDir}mkmap.c.ppc.o" ¶
				  "{ObjDir}mkmaze.c.ppc.o" ¶
				  "{ObjDir}mkobj.c.ppc.o" ¶
				  "{ObjDir}mkroom.c.ppc.o" ¶
				  "{ObjDir}mon.c.ppc.o" ¶
				  "{ObjDir}mondata.c.ppc.o" ¶
				  "{ObjDir}monmove.c.ppc.o" ¶
				  "{ObjDir}monst.c.ppc.o" ¶
				  "{ObjDir}monstr.c.ppc.o" ¶
				  "{ObjDir}mplayer.c.ppc.o" ¶
				  "{ObjDir}mthrowu.c.ppc.o" ¶
				  "{ObjDir}muse.c.ppc.o" ¶
				  "{ObjDir}music.c.ppc.o" ¶
				  "{ObjDir}objects.c.ppc.o" ¶
				  "{ObjDir}objnam.c.ppc.o" ¶
				  "{ObjDir}options.c.ppc.o" ¶
				  "{ObjDir}o_init.c.ppc.o" ¶
				  "{ObjDir}pager.c.ppc.o" ¶
				  "{ObjDir}pickup.c.ppc.o" ¶
				  "{ObjDir}pline.c.ppc.o" ¶
				  "{ObjDir}polyself.c.ppc.o" ¶
				  "{ObjDir}potion.c.ppc.o" ¶
				  "{ObjDir}pray.c.ppc.o" ¶
				  "{ObjDir}priest.c.ppc.o" ¶
				  "{ObjDir}quest.c.ppc.o" ¶
				  "{ObjDir}questpgr.c.ppc.o" ¶
				  "{ObjDir}read.c.ppc.o" ¶
				  "{ObjDir}rect.c.ppc.o" ¶
				  "{ObjDir}region.c.ppc.o" ¶
				  "{ObjDir}restore.c.ppc.o" ¶
				  "{ObjDir}rip.c.ppc.o" ¶
				  "{ObjDir}rnd.c.ppc.o" ¶
				  "{ObjDir}role.c.ppc.o" ¶
				  "{ObjDir}rumors.c.ppc.o" ¶
				  "{ObjDir}save.c.ppc.o" ¶
				  "{ObjDir}shk.c.ppc.o" ¶
				  "{ObjDir}shknam.c.ppc.o" ¶
				  "{ObjDir}sit.c.ppc.o" ¶
				  "{ObjDir}sounds.c.ppc.o" ¶
				  "{ObjDir}spell.c.ppc.o" ¶
				  "{ObjDir}sp_lev.c.ppc.o" ¶
				  "{ObjDir}steal.c.ppc.o" ¶
				  "{ObjDir}steed.c.ppc.o" ¶
				  "{ObjDir}sys.c.ppc.o" ¶
				  "{ObjDir}teleport.c.ppc.o" ¶
				  "{ObjDir}timeout.c.ppc.o" ¶
				  "{ObjDir}topten.c.ppc.o" ¶
				  "{ObjDir}track.c.ppc.o" ¶
				  "{ObjDir}trap.c.ppc.o" ¶
				  "{ObjDir}uhitm.c.ppc.o" ¶
				  "{ObjDir}u_init.c.ppc.o" ¶
				  "{ObjDir}vault.c.ppc.o" ¶
				  "{ObjDir}version.c.ppc.o" ¶
				  "{ObjDir}vision.c.ppc.o" ¶
				  "{ObjDir}vis_tab.c.ppc.o" ¶
				  "{ObjDir}weapon.c.ppc.o" ¶
				  "{ObjDir}were.c.ppc.o" ¶
				  "{ObjDir}wield.c.ppc.o" ¶
				  "{ObjDir}windows.c.ppc.o" ¶
				  "{ObjDir}wizard.c.ppc.o" ¶
				  "{ObjDir}worm.c.ppc.o" ¶
				  "{ObjDir}worn.c.ppc.o" ¶
				  "{ObjDir}write.c.ppc.o" ¶
				  "{ObjDir}zap.c.ppc.o" ¶
				  "{ObjDir}dprintf.c.ppc.o" ¶
				  "{ObjDir}maccurs.c.ppc.o" ¶
				  "{ObjDir}macerrs.c.ppc.o" ¶
				  "{ObjDir}macfile.c.ppc.o" ¶
				  "{ObjDir}macmain.c.ppc.o" ¶
				  "{ObjDir}macmenu.c.ppc.o" ¶
				  "{ObjDir}macsnd.c.ppc.o" ¶
				  "{ObjDir}mactopl.c.ppc.o" ¶
				  "{ObjDir}mactty.c.ppc.o" ¶
				  "{ObjDir}macunix.c.ppc.o" ¶
				  "{ObjDir}macwin.c.ppc.o" ¶
				  "{ObjDir}mgetline.c.ppc.o" ¶
				  "{ObjDir}mmodal.c.ppc.o" ¶
				  "{ObjDir}mttymain.c.ppc.o" ¶
				  "{ObjDir}pmatchregex.c.ppc.o" ¶
				  "{ObjDir}random.c.ppc.o" ¶
				  "{ObjDir}getline.c.ppc.o" ¶
				  "{ObjDir}termcap.c.ppc.o" ¶
				  "{ObjDir}topl.c.ppc.o" ¶
				  "{ObjDir}wintty.c.ppc.o" 

Recover-ObjFiles-PPC    = ¶
				  "{ObjDir}mrecover.c.ppc.o"


### Libraries ###

LibFiles-Carbon-PPC    =  ¶
				  "{CarbonStdCLibDir}PPCLibraries:CarbonStdCLib.o" ¶
				  "{SharedLibraries}CarbonLib" ¶
				  "{SharedLibraries}StdCLib" ¶
				  "{PPCLibraries}StdCRuntime.o" ¶
				  "{PPCLibraries}PPCCRuntime.o" ¶
				  "{PPCLibraries}PPCToolLibs.o"

LibFiles-PPC    = ¶
				  "{SharedLibraries}InterfaceLib" ¶
				  "{SharedLibraries}StdCLib" ¶
				  "{PPCLibraries}StdCRuntime.o" ¶
				  "{PPCLibraries}PPCCRuntime.o" ¶
				  "{PPCLibraries}PPCToolLibs.o"


### Default Rules ###

.c.ppc.o  Ä  .c  {¥MondoBuild¥}
	{PPCC} {depDir}{default}.c -o {targDir}{default}.c.ppc.o {PPCCOptions} {NetHack-COptions}


### Build Rules ###

NetHack  ÄÄ  {ObjFiles-PPC} {LibFiles-Carbon-PPC} {¥MondoBuild¥}
	PPCLink ¶
		-o {Targ} ¶
		{ObjFiles-PPC} ¶
		{LibFiles-Carbon-PPC} ¶
		{Sym-PPC} ¶
		-mf -d ¶
		-m __appstart ¶
		-t 'APPL' ¶
		-c 'nh31'


NetHack  ÄÄ  :sys:mac:Files.r {¥MondoBuild¥}
	Rez :sys:mac:Files.r -d TARGET_API_MAC_CARBON=1 -o {Targ} {Includes} -append

NetHack  ÄÄ  :sys:mac:NetHack.rsrc {¥MondoBuild¥}
	Echo "Include ¶":sys:mac:NetHack.rsrc¶";" | Rez -o {Targ} -append

NetHack  ÄÄ  :sys:mac:Sounds.rsrc {¥MondoBuild¥}
	Echo "Include ¶":sys:mac:Sounds.rsrc¶";" | Rez -o {Targ} -append

NetHack  ÄÄ  {¥MondoBuild¥}
	Echo ¶
		"#include ¶"Processes.r¶"¶n ¶
		Resource 'SIZE' (-1) ¶{ ¶
		reserved, ¶
		acceptSuspendResumeEvents, ¶
		reserved, ¶
		canBackground, ¶
		doesActivateOnFGSwitch, ¶
		backgroundAndForeground, ¶
		dontGetFrontClicks, ¶
		ignoreAppDiedEvents, ¶
		is32BitCompatible, ¶
		isHighLevelEventAware, ¶
		onlyLocalHLEvents, ¶
		notStationeryAware, ¶
		dontUseTextEditServices, ¶
		notDisplayManagerAware, ¶
		reserved, ¶
		reserved, ¶
		2500 * 1024, ¶
		1500 * 1024 ¶};" | Rez -o {Targ} -append

Recover  ÄÄ  {Recover-ObjFiles-PPC} {LibFiles-PPC} {¥MondoBuild¥}
	PPCLink ¶
		-o {Targ} ¶
		{Recover-ObjFiles-PPC} ¶
		{LibFiles-PPC} ¶
		{Sym-PPC} ¶
		-mf -d ¶
		-t 'APPL' -c 'nhRc'

Recover  ÄÄ  :sys:mac:mrecover.rsrc {¥MondoBuild¥}
	Echo "Include ¶":sys:mac:mrecover.rsrc¶";" | Rez -o {Targ} -append

Recover  ÄÄ  {¥MondoBuild¥}
	Echo ¶
		"#include ¶"Processes.r¶"¶n ¶
		Resource 'SIZE' (-1) ¶{ ¶
		reserved, ¶
		acceptSuspendResumeEvents, ¶
		reserved, ¶
		canBackground, ¶
		doesActivateOnFGSwitch, ¶
		backgroundAndForeground, ¶
		dontGetFrontClicks, ¶
		ignoreAppDiedEvents, ¶
		is32BitCompatible, ¶
		isHighLevelEventAware, ¶
		onlyLocalHLEvents, ¶
		notStationeryAware, ¶
		dontUseTextEditServices, ¶
		notDisplayManagerAware, ¶
		reserved, ¶
		reserved, ¶
		64 * 1024, ¶
		64 * 1024 ¶};" | Rez -o {Targ} -append


### Required Dependencies ###

"{ObjDir}getline.c.ppc.o"  Ä  :win:tty:getline.c
"{ObjDir}termcap.c.ppc.o"  Ä  :win:tty:termcap.c
"{ObjDir}topl.c.ppc.o"  Ä  :win:tty:topl.c
"{ObjDir}wintty.c.ppc.o"  Ä  :win:tty:wintty.c
"{ObjDir}pmatchregex.c.ppc.o"  Ä  :sys:share:pmatchregex.c
"{ObjDir}random.c.ppc.o"  Ä  :sys:share:random.c
"{ObjDir}dprintf.c.ppc.o"  Ä  :sys:mac:dprintf.c
"{ObjDir}maccurs.c.ppc.o"  Ä  :sys:mac:maccurs.c
"{ObjDir}macerrs.c.ppc.o"  Ä  :sys:mac:macerrs.c
"{ObjDir}macfile.c.ppc.o"  Ä  :sys:mac:macfile.c
"{ObjDir}macmain.c.ppc.o"  Ä  :sys:mac:macmain.c
"{ObjDir}macmenu.c.ppc.o"  Ä  :sys:mac:macmenu.c
"{ObjDir}macsnd.c.ppc.o"  Ä  :sys:mac:macsnd.c
"{ObjDir}mactopl.c.ppc.o"  Ä  :sys:mac:mactopl.c
"{ObjDir}mactty.c.ppc.o"  Ä  :sys:mac:mactty.c
"{ObjDir}macunix.c.ppc.o"  Ä  :sys:mac:macunix.c
"{ObjDir}macwin.c.ppc.o"  Ä  :sys:mac:macwin.c
"{ObjDir}mgetline.c.ppc.o"  Ä  :sys:mac:mgetline.c
"{ObjDir}mmodal.c.ppc.o"  Ä  :sys:mac:mmodal.c
"{ObjDir}mttymain.c.ppc.o"  Ä  :sys:mac:mttymain.c
"{ObjDir}allmain.c.ppc.o"  Ä  :src:allmain.c
"{ObjDir}alloc.c.ppc.o"  Ä  :src:alloc.c
"{ObjDir}apply.c.ppc.o"  Ä  :src:apply.c
"{ObjDir}artifact.c.ppc.o"  Ä  :src:artifact.c
"{ObjDir}attrib.c.ppc.o"  Ä  :src:attrib.c
"{ObjDir}ball.c.ppc.o"  Ä  :src:ball.c
"{ObjDir}bones.c.ppc.o"  Ä  :src:bones.c
"{ObjDir}botl.c.ppc.o"  Ä  :src:botl.c
"{ObjDir}cmd.c.ppc.o"  Ä  :src:cmd.c
"{ObjDir}dbridge.c.ppc.o"  Ä  :src:dbridge.c
"{ObjDir}decl.c.ppc.o"  Ä  :src:decl.c
"{ObjDir}detect.c.ppc.o"  Ä  :src:detect.c
"{ObjDir}dig.c.ppc.o"  Ä  :src:dig.c
"{ObjDir}display.c.ppc.o"  Ä  :src:display.c
"{ObjDir}dlb.c.ppc.o"  Ä  :src:dlb.c
"{ObjDir}do.c.ppc.o"  Ä  :src:do.c
"{ObjDir}dog.c.ppc.o"  Ä  :src:dog.c
"{ObjDir}dogmove.c.ppc.o"  Ä  :src:dogmove.c
"{ObjDir}dokick.c.ppc.o"  Ä  :src:dokick.c
"{ObjDir}dothrow.c.ppc.o"  Ä  :src:dothrow.c
"{ObjDir}do_name.c.ppc.o"  Ä  :src:do_name.c
"{ObjDir}do_wear.c.ppc.o"  Ä  :src:do_wear.c
"{ObjDir}drawing.c.ppc.o"  Ä  :src:drawing.c
"{ObjDir}dungeon.c.ppc.o"  Ä  :src:dungeon.c
"{ObjDir}eat.c.ppc.o"  Ä  :src:eat.c
"{ObjDir}end.c.ppc.o"  Ä  :src:end.c
"{ObjDir}engrave.c.ppc.o"  Ä  :src:engrave.c
"{ObjDir}exper.c.ppc.o"  Ä  :src:exper.c
"{ObjDir}explode.c.ppc.o"  Ä  :src:explode.c
"{ObjDir}extralev.c.ppc.o"  Ä  :src:extralev.c
"{ObjDir}files.c.ppc.o"  Ä  :src:files.c
"{ObjDir}fountain.c.ppc.o"  Ä  :src:fountain.c
"{ObjDir}hack.c.ppc.o"  Ä  :src:hack.c
"{ObjDir}hacklib.c.ppc.o"  Ä  :src:hacklib.c
"{ObjDir}invent.c.ppc.o"  Ä  :src:invent.c
"{ObjDir}light.c.ppc.o"  Ä  :src:light.c
"{ObjDir}lock.c.ppc.o"  Ä  :src:lock.c
"{ObjDir}mail.c.ppc.o"  Ä  :src:mail.c
"{ObjDir}makemon.c.ppc.o"  Ä  :src:makemon.c
"{ObjDir}mapglyph.c.ppc.o"  Ä  :src:mapglyph.c
"{ObjDir}mcastu.c.ppc.o"  Ä  :src:mcastu.c
"{ObjDir}mhitm.c.ppc.o"  Ä  :src:mhitm.c
"{ObjDir}mhitu.c.ppc.o"  Ä  :src:mhitu.c
"{ObjDir}minion.c.ppc.o"  Ä  :src:minion.c
"{ObjDir}mklev.c.ppc.o"  Ä  :src:mklev.c
"{ObjDir}mkmap.c.ppc.o"  Ä  :src:mkmap.c
"{ObjDir}mkmaze.c.ppc.o"  Ä  :src:mkmaze.c
"{ObjDir}mkobj.c.ppc.o"  Ä  :src:mkobj.c
"{ObjDir}mkroom.c.ppc.o"  Ä  :src:mkroom.c
"{ObjDir}mon.c.ppc.o"  Ä  :src:mon.c
"{ObjDir}mondata.c.ppc.o"  Ä  :src:mondata.c
"{ObjDir}monmove.c.ppc.o"  Ä  :src:monmove.c
"{ObjDir}monst.c.ppc.o"  Ä  :src:monst.c
"{ObjDir}monstr.c.ppc.o"  Ä  :src:monstr.c
"{ObjDir}mplayer.c.ppc.o"  Ä  :src:mplayer.c
"{ObjDir}mthrowu.c.ppc.o"  Ä  :src:mthrowu.c
"{ObjDir}muse.c.ppc.o"  Ä  :src:muse.c
"{ObjDir}music.c.ppc.o"  Ä  :src:music.c
"{ObjDir}objects.c.ppc.o"  Ä  :src:objects.c
"{ObjDir}objnam.c.ppc.o"  Ä  :src:objnam.c
"{ObjDir}options.c.ppc.o"  Ä  :src:options.c
"{ObjDir}o_init.c.ppc.o"  Ä  :src:o_init.c
"{ObjDir}pager.c.ppc.o"  Ä  :src:pager.c
"{ObjDir}pickup.c.ppc.o"  Ä  :src:pickup.c
"{ObjDir}pline.c.ppc.o"  Ä  :src:pline.c
"{ObjDir}polyself.c.ppc.o"  Ä  :src:polyself.c
"{ObjDir}potion.c.ppc.o"  Ä  :src:potion.c
"{ObjDir}pray.c.ppc.o"  Ä  :src:pray.c
"{ObjDir}priest.c.ppc.o"  Ä  :src:priest.c
"{ObjDir}quest.c.ppc.o"  Ä  :src:quest.c
"{ObjDir}questpgr.c.ppc.o"  Ä  :src:questpgr.c
"{ObjDir}read.c.ppc.o"  Ä  :src:read.c
"{ObjDir}rect.c.ppc.o"  Ä  :src:rect.c
"{ObjDir}region.c.ppc.o"  Ä  :src:region.c
"{ObjDir}restore.c.ppc.o"  Ä  :src:restore.c
"{ObjDir}rip.c.ppc.o"  Ä  :src:rip.c
"{ObjDir}rnd.c.ppc.o"  Ä  :src:rnd.c
"{ObjDir}role.c.ppc.o"  Ä  :src:role.c
"{ObjDir}rumors.c.ppc.o"  Ä  :src:rumors.c
"{ObjDir}save.c.ppc.o"  Ä  :src:save.c
"{ObjDir}shk.c.ppc.o"  Ä  :src:shk.c
"{ObjDir}shknam.c.ppc.o"  Ä  :src:shknam.c
"{ObjDir}sit.c.ppc.o"  Ä  :src:sit.c
"{ObjDir}sounds.c.ppc.o"  Ä  :src:sounds.c
"{ObjDir}spell.c.ppc.o"  Ä  :src:spell.c
"{ObjDir}sp_lev.c.ppc.o"  Ä  :src:sp_lev.c
"{ObjDir}steal.c.ppc.o"  Ä  :src:steal.c
"{ObjDir}steed.c.ppc.o"  Ä  :src:steed.c
"{ObjDir}sys.c.ppc.o"  Ä  :src:sys.c
"{ObjDir}teleport.c.ppc.o"  Ä  :src:teleport.c
"{ObjDir}timeout.c.ppc.o"  Ä  :src:timeout.c
"{ObjDir}topten.c.ppc.o"  Ä  :src:topten.c
"{ObjDir}track.c.ppc.o"  Ä  :src:track.c
"{ObjDir}trap.c.ppc.o"  Ä  :src:trap.c
"{ObjDir}uhitm.c.ppc.o"  Ä  :src:uhitm.c
"{ObjDir}u_init.c.ppc.o"  Ä  :src:u_init.c
"{ObjDir}vault.c.ppc.o"  Ä  :src:vault.c
"{ObjDir}version.c.ppc.o"  Ä  :src:version.c
"{ObjDir}vision.c.ppc.o"  Ä  :src:vision.c
"{ObjDir}vis_tab.c.ppc.o"  Ä  :src:vis_tab.c
"{ObjDir}weapon.c.ppc.o"  Ä  :src:weapon.c
"{ObjDir}were.c.ppc.o"  Ä  :src:were.c
"{ObjDir}wield.c.ppc.o"  Ä  :src:wield.c
"{ObjDir}windows.c.ppc.o"  Ä  :src:windows.c
"{ObjDir}wizard.c.ppc.o"  Ä  :src:wizard.c
"{ObjDir}worm.c.ppc.o"  Ä  :src:worm.c
"{ObjDir}worn.c.ppc.o"  Ä  :src:worn.c
"{ObjDir}write.c.ppc.o"  Ä  :src:write.c
"{ObjDir}zap.c.ppc.o"  Ä  :src:zap.c

"{ObjDir}mrecover.c.ppc.o"  Ä  :sys:mac:mrecover.c
	{PPCC} :sys:mac:mrecover.c -o "{ObjDir}mrecover.c.ppc.o" {PPCCOptions} {Recover-COptions}


### Optional Dependencies ###
### Build this target to generate "include file" dependencies. ###

Dependencies  Ä  $OutOfDate
	MakeDepend ¶
		-append {MAKEFILE} ¶
		-ignore "{CIncludes}" ¶
		-ignore "{RIncludes}" ¶
		-objdir "{ObjDir}" ¶
		-objext .ppc.o ¶
		{Includes} ¶
		{SrcFiles}


