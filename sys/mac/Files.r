#include "MacTypes.r"
#include "date.h"
#include "patchlevel.h"


/* Carbon 'carb' resource
 * has been made obsolete by the 'plst' resource below.
 */

/* Carbon 'plst' resource
 * Single-file applications must have this resource for MacOS X to
 * count it as a Carbon app rather than a Classic app.  It contains
 * an embedded Info.plist file, with the same format as would occur
 * in an application based on a directory bundle.  The attributes
 * declared in this resource override the 'BNDL', 'FREF', and 'vers'
 * resources in MacOS X.
 *
 * For further information, see
 * http://developer.apple.com/technotes/tn/tn2013.html
 */
read 'plst' (0) "carbon.plist";


/* Classic resources
 * These resources are used in MacOS 9.x and earlier.
 */
resource 'vers' (1, purgeable) {
	VERSION_MAJOR, (VERSION_MINOR<<4) | PATCHLEVEL, final, EDITLEVEL, verUS,
	VERSION_STRING,
	VERSION_STRING
};

resource 'vers' (2, purgeable) {
	VERSION_MAJOR, (VERSION_MINOR<<4) | PATCHLEVEL, final, EDITLEVEL, verUS,
	VERSION_STRING,
	"devteam@nethack.org"
};


/* Dungeon librarian files
 * File data and quest.dat have gotten too big to be put into resources!
 */
#ifdef TARGET_API_MAC_CARBON
read 'File' (1000,"cmdhelp") DIRPATH "cmdhelp";
read 'File' (1001,"help") DIRPATH "help";
read 'File' (1002,"hh") DIRPATH "hh";
read 'File' (1003,"history") DIRPATH "history";
read 'File' (1004,"license") DIRPATH "license";
read 'File' (1005,"MacHelp") DIRPATH "MacHelp";
read 'File' (1006,"News") DIRPATH "News";
read 'File' (1007,"opthelp") DIRPATH "opthelp";
read 'File' (1008,"wizhelp") DIRPATH "wizhelp";
read 'File' (1009,"air.lev") DIRPATH "air.lev";
read 'File' (1010,"asmodeus.lev") DIRPATH "asmodeus.lev";
read 'File' (1011,"astral.lev") DIRPATH "astral.lev";
read 'File' (1012,"baalz.lev") DIRPATH "baalz.lev";
read 'File' (1013,"bigrm-1.lev") DIRPATH "bigrm-1.lev";
read 'File' (1014,"bigrm-2.lev") DIRPATH "bigrm-2.lev";
read 'File' (1015,"bigrm-3.lev") DIRPATH "bigrm-3.lev";
read 'File' (1016,"bigrm-4.lev") DIRPATH "bigrm-4.lev";
read 'File' (1017,"bigrm-5.lev") DIRPATH "bigrm-5.lev";
read 'File' (1018,"castle.lev") DIRPATH "castle.lev";
//read 'File' (1019,"data") DIRPATH "data";
read 'File' (1020,"dungeon") DIRPATH "dungeon";
read 'File' (1021,"earth.lev") DIRPATH "earth.lev";
read 'File' (1022,"fakewiz1.lev") DIRPATH "fakewiz1.lev";
read 'File' (1023,"fakewiz2.lev") DIRPATH "fakewiz2.lev";
read 'File' (1024,"fire.lev") DIRPATH "fire.lev";
read 'File' (1025,"juiblex.lev") DIRPATH "juiblex.lev";
read 'File' (1026,"knox.lev") DIRPATH "knox.lev";
read 'File' (1027,"medusa-1.lev") DIRPATH "medusa-1.lev";
read 'File' (1028,"medusa-2.lev") DIRPATH "medusa-2.lev";
read 'File' (1029,"minefill.lev") DIRPATH "minefill.lev";
read 'File' (1030,"minend-1.lev") DIRPATH "minend-1.lev";
read 'File' (1031,"minend-2.lev") DIRPATH "minend-2.lev";
read 'File' (1032,"minend-3.lev") DIRPATH "minend-3.lev";
read 'File' (1034,"minetn-1.lev") DIRPATH "minetn-1.lev";
read 'File' (1035,"minetn-2.lev") DIRPATH "minetn-2.lev";
read 'File' (1036,"minetn-3.lev") DIRPATH "minetn-3.lev";
read 'File' (1037,"minetn-4.lev") DIRPATH "minetn-4.lev";
read 'File' (1038,"minetn-5.lev") DIRPATH "minetn-5.lev";
read 'File' (1039,"minetn-6.lev") DIRPATH "minetn-6.lev";
read 'File' (1040,"minetn-7.lev") DIRPATH "minetn-7.lev";
read 'File' (1041,"options") DIRPATH "options";
read 'File' (1042,"oracle.lev") DIRPATH "oracle.lev";
read 'File' (1043,"oracles") DIRPATH "oracles";
read 'File' (1044,"orcus.lev") DIRPATH "orcus.lev";
//read 'File' (1045,"quest.dat") DIRPATH "quest.dat";
read 'File' (1046,"rumors") DIRPATH "rumors";
read 'File' (1047,"sanctum.lev") DIRPATH "sanctum.lev";
read 'File' (1048,"soko1-1.lev") DIRPATH "soko1-1.lev";
read 'File' (1049,"soko1-2.lev") DIRPATH "soko1-2.lev";
read 'File' (1050,"soko2-1.lev") DIRPATH "soko2-1.lev";
read 'File' (1051,"soko2-2.lev") DIRPATH "soko2-2.lev";
read 'File' (1052,"soko3-1.lev") DIRPATH "soko3-1.lev";
read 'File' (1053,"soko3-2.lev") DIRPATH "soko3-2.lev";
read 'File' (1054,"soko4-1.lev") DIRPATH "soko4-1.lev";
read 'File' (1055,"soko4-2.lev") DIRPATH "soko4-2.lev";
read 'File' (1056,"tower1.lev") DIRPATH "tower1.lev";
read 'File' (1057,"tower2.lev") DIRPATH "tower2.lev";
read 'File' (1058,"tower3.lev") DIRPATH "tower3.lev";
read 'File' (1059,"valley.lev") DIRPATH "valley.lev";
read 'File' (1060,"water.lev") DIRPATH "water.lev";
read 'File' (1061,"wizard1.lev") DIRPATH "wizard1.lev";
read 'File' (1062,"wizard2.lev") DIRPATH "wizard2.lev";
read 'File' (1063,"wizard3.lev") DIRPATH "wizard3.lev";
read 'File' (1100,"Arc-fila.lev") DIRPATH "Arc-fila.lev";
read 'File' (1101,"Arc-filb.lev") DIRPATH "Arc-filb.lev";
read 'File' (1102,"Arc-goal.lev") DIRPATH "Arc-goal.lev";
read 'File' (1103,"Arc-loca.lev") DIRPATH "Arc-loca.lev";
read 'File' (1104,"Arc-strt.lev") DIRPATH "Arc-strt.lev";
read 'File' (1105,"Bar-fila.lev") DIRPATH "Bar-fila.lev";
read 'File' (1106,"Bar-filb.lev") DIRPATH "Bar-filb.lev";
read 'File' (1107,"Bar-goal.lev") DIRPATH "Bar-goal.lev";
read 'File' (1108,"Bar-loca.lev") DIRPATH "Bar-loca.lev";
read 'File' (1109,"Bar-strt.lev") DIRPATH "Bar-strt.lev";
read 'File' (1110,"Cav-fila.lev") DIRPATH "Cav-fila.lev";
read 'File' (1111,"Cav-filb.lev") DIRPATH "Cav-filb.lev";
read 'File' (1112,"Cav-goal.lev") DIRPATH "Cav-goal.lev";
read 'File' (1113,"Cav-loca.lev") DIRPATH "Cav-loca.lev";
read 'File' (1114,"Cav-strt.lev") DIRPATH "Cav-strt.lev";
read 'File' (1115,"Hea-fila.lev") DIRPATH "Hea-fila.lev";
read 'File' (1116,"Hea-filb.lev") DIRPATH "Hea-filb.lev";
read 'File' (1117,"Hea-goal.lev") DIRPATH "Hea-goal.lev";
read 'File' (1118,"Hea-loca.lev") DIRPATH "Hea-loca.lev";
read 'File' (1119,"Hea-strt.lev") DIRPATH "Hea-strt.lev";
read 'File' (1120,"Kni-fila.lev") DIRPATH "Kni-fila.lev";
read 'File' (1121,"Kni-filb.lev") DIRPATH "Kni-filb.lev";
read 'File' (1122,"Kni-goal.lev") DIRPATH "Kni-goal.lev";
read 'File' (1123,"Kni-loca.lev") DIRPATH "Kni-loca.lev";
read 'File' (1124,"Kni-strt.lev") DIRPATH "Kni-strt.lev";
read 'File' (1125,"Mon-fila.lev") DIRPATH "Mon-fila.lev";
read 'File' (1126,"Mon-filb.lev") DIRPATH "Mon-filb.lev";
read 'File' (1127,"Mon-goal.lev") DIRPATH "Mon-goal.lev";
read 'File' (1128,"Mon-loca.lev") DIRPATH "Mon-loca.lev";
read 'File' (1129,"Mon-strt.lev") DIRPATH "Mon-strt.lev";
read 'File' (1130,"Pri-fila.lev") DIRPATH "Pri-fila.lev";
read 'File' (1131,"Pri-filb.lev") DIRPATH "Pri-filb.lev";
read 'File' (1132,"Pri-goal.lev") DIRPATH "Pri-goal.lev";
read 'File' (1133,"Pri-loca.lev") DIRPATH "Pri-loca.lev";
read 'File' (1134,"Pri-strt.lev") DIRPATH "Pri-strt.lev";
read 'File' (1135,"Ran-fila.lev") DIRPATH "Ran-fila.lev";
read 'File' (1136,"Ran-filb.lev") DIRPATH "Ran-filb.lev";
read 'File' (1137,"Ran-goal.lev") DIRPATH "Ran-goal.lev";
read 'File' (1138,"Ran-loca.lev") DIRPATH "Ran-loca.lev";
read 'File' (1139,"Ran-strt.lev") DIRPATH "Ran-strt.lev";
read 'File' (1140,"Rog-fila.lev") DIRPATH "Rog-fila.lev";
read 'File' (1141,"Rog-filb.lev") DIRPATH "Rog-filb.lev";
read 'File' (1142,"Rog-goal.lev") DIRPATH "Rog-goal.lev";
read 'File' (1143,"Rog-loca.lev") DIRPATH "Rog-loca.lev";
read 'File' (1144,"Rog-strt.lev") DIRPATH "Rog-strt.lev";
read 'File' (1145,"Sam-fila.lev") DIRPATH "Sam-fila.lev";
read 'File' (1146,"Sam-filb.lev") DIRPATH "Sam-filb.lev";
read 'File' (1147,"Sam-goal.lev") DIRPATH "Sam-goal.lev";
read 'File' (1148,"Sam-loca.lev") DIRPATH "Sam-loca.lev";
read 'File' (1149,"Sam-strt.lev") DIRPATH "Sam-strt.lev";
read 'File' (1150,"Tou-fila.lev") DIRPATH "Tou-fila.lev";
read 'File' (1151,"Tou-filb.lev") DIRPATH "Tou-filb.lev";
read 'File' (1152,"Tou-goal.lev") DIRPATH "Tou-goal.lev";
read 'File' (1153,"Tou-loca.lev") DIRPATH "Tou-loca.lev";
read 'File' (1154,"Tou-strt.lev") DIRPATH "Tou-strt.lev";
read 'File' (1155,"Val-fila.lev") DIRPATH "Val-fila.lev";
read 'File' (1156,"Val-filb.lev") DIRPATH "Val-filb.lev";
read 'File' (1157,"Val-goal.lev") DIRPATH "Val-goal.lev";
read 'File' (1158,"Val-loca.lev") DIRPATH "Val-loca.lev";
read 'File' (1159,"Val-strt.lev") DIRPATH "Val-strt.lev";
read 'File' (1160,"Wiz-fila.lev") DIRPATH "Wiz-fila.lev";
read 'File' (1161,"Wiz-filb.lev") DIRPATH "Wiz-filb.lev";
read 'File' (1162,"Wiz-goal.lev") DIRPATH "Wiz-goal.lev";
read 'File' (1163,"Wiz-loca.lev") DIRPATH "Wiz-loca.lev";
read 'File' (1164,"Wiz-strt.lev") DIRPATH "Wiz-strt.lev";
#else
read 'File' (1000,"cmdhelp") ":dat:cmdhelp";
read 'File' (1001,"help") ":dat:help";
read 'File' (1002,"hh") ":dat:hh";
read 'File' (1003,"history") ":dat:history";
read 'File' (1004,"license") ":dat:license";
read 'File' (1005,"MacHelp") ":sys:mac:MacHelp";
read 'File' (1006,"News") ":sys:mac:News";
read 'File' (1007,"opthelp") ":dat:opthelp";
read 'File' (1008,"wizhelp") ":dat:wizhelp";
read 'File' (1009,"air.lev") ":lib:air.lev";
read 'File' (1010,"asmodeus.lev") ":lib:asmodeus.lev";
read 'File' (1011,"astral.lev") ":lib:astral.lev";
read 'File' (1012,"baalz.lev") ":lib:baalz.lev";
read 'File' (1013,"bigrm-1.lev") ":lib:bigrm-1.lev";
read 'File' (1014,"bigrm-2.lev") ":lib:bigrm-2.lev";
read 'File' (1015,"bigrm-3.lev") ":lib:bigrm-3.lev";
read 'File' (1016,"bigrm-4.lev") ":lib:bigrm-4.lev";
read 'File' (1017,"bigrm-5.lev") ":lib:bigrm-5.lev";
read 'File' (1018,"castle.lev") ":lib:castle.lev";
read 'File' (1019,"data") ":lib:data";
read 'File' (1020,"dungeon") ":lib:dungeon";
read 'File' (1021,"earth.lev") ":lib:earth.lev";
read 'File' (1022,"fakewiz1.lev") ":lib:fakewiz1.lev";
read 'File' (1023,"fakewiz2.lev") ":lib:fakewiz2.lev";
read 'File' (1024,"fire.lev") ":lib:fire.lev";
read 'File' (1025,"juiblex.lev") ":lib:juiblex.lev";
read 'File' (1026,"knox.lev") ":lib:knox.lev";
read 'File' (1027,"medusa-1.lev") ":lib:medusa-1.lev";
read 'File' (1028,"medusa-2.lev") ":lib:medusa-2.lev";
read 'File' (1029,"minefill.lev") ":lib:minefill.lev";
read 'File' (1030,"minend-1.lev") ":lib:minend-1.lev";
read 'File' (1031,"minend-2.lev") ":lib:minend-2.lev";
read 'File' (1032,"minend-3.lev") ":lib:minend-3.lev";
read 'File' (1034,"minetn-1.lev") ":lib:minetn-1.lev";
read 'File' (1035,"minetn-2.lev") ":lib:minetn-2.lev";
read 'File' (1036,"minetn-3.lev") ":lib:minetn-3.lev";
read 'File' (1037,"minetn-4.lev") ":lib:minetn-4.lev";
read 'File' (1038,"minetn-5.lev") ":lib:minetn-5.lev";
read 'File' (1039,"minetn-6.lev") ":lib:minetn-6.lev";
read 'File' (1040,"minetn-7.lev") ":lib:minetn-7.lev";
read 'File' (1041,"options") ":lib:options";
read 'File' (1042,"oracle.lev") ":lib:oracle.lev";
read 'File' (1043,"oracles") ":lib:oracles";
read 'File' (1044,"orcus.lev") ":lib:orcus.lev";
read 'File' (1045,"quest.dat") ":lib:quest.dat";
read 'File' (1046,"rumors") ":lib:rumors";
read 'File' (1047,"sanctum.lev") ":lib:sanctum.lev";
read 'File' (1048,"soko1-1.lev") ":lib:soko1-1.lev";
read 'File' (1049,"soko1-2.lev") ":lib:soko1-2.lev";
read 'File' (1050,"soko2-1.lev") ":lib:soko2-1.lev";
read 'File' (1051,"soko2-2.lev") ":lib:soko2-2.lev";
read 'File' (1052,"soko3-1.lev") ":lib:soko3-1.lev";
read 'File' (1053,"soko3-2.lev") ":lib:soko3-2.lev";
read 'File' (1054,"soko4-1.lev") ":lib:soko4-1.lev";
read 'File' (1055,"soko4-2.lev") ":lib:soko4-2.lev";
read 'File' (1056,"tower1.lev") ":lib:tower1.lev";
read 'File' (1057,"tower2.lev") ":lib:tower2.lev";
read 'File' (1058,"tower3.lev") ":lib:tower3.lev";
read 'File' (1059,"valley.lev") ":lib:valley.lev";
read 'File' (1060,"water.lev") ":lib:water.lev";
read 'File' (1061,"wizard1.lev") ":lib:wizard1.lev";
read 'File' (1062,"wizard2.lev") ":lib:wizard2.lev";
read 'File' (1063,"wizard3.lev") ":lib:wizard3.lev";
read 'File' (1100,"Arc-fila.lev") ":lib:Arc-fila.lev";
read 'File' (1101,"Arc-filb.lev") ":lib:Arc-filb.lev";
read 'File' (1102,"Arc-goal.lev") ":lib:Arc-goal.lev";
read 'File' (1103,"Arc-loca.lev") ":lib:Arc-loca.lev";
read 'File' (1104,"Arc-strt.lev") ":lib:Arc-strt.lev";
read 'File' (1105,"Bar-fila.lev") ":lib:Bar-fila.lev";
read 'File' (1106,"Bar-filb.lev") ":lib:Bar-filb.lev";
read 'File' (1107,"Bar-goal.lev") ":lib:Bar-goal.lev";
read 'File' (1108,"Bar-loca.lev") ":lib:Bar-loca.lev";
read 'File' (1109,"Bar-strt.lev") ":lib:Bar-strt.lev";
read 'File' (1110,"Cav-fila.lev") ":lib:Cav-fila.lev";
read 'File' (1111,"Cav-filb.lev") ":lib:Cav-filb.lev";
read 'File' (1112,"Cav-goal.lev") ":lib:Cav-goal.lev";
read 'File' (1113,"Cav-loca.lev") ":lib:Cav-loca.lev";
read 'File' (1114,"Cav-strt.lev") ":lib:Cav-strt.lev";
read 'File' (1115,"Hea-fila.lev") ":lib:Hea-fila.lev";
read 'File' (1116,"Hea-filb.lev") ":lib:Hea-filb.lev";
read 'File' (1117,"Hea-goal.lev") ":lib:Hea-goal.lev";
read 'File' (1118,"Hea-loca.lev") ":lib:Hea-loca.lev";
read 'File' (1119,"Hea-strt.lev") ":lib:Hea-strt.lev";
read 'File' (1120,"Kni-fila.lev") ":lib:Kni-fila.lev";
read 'File' (1121,"Kni-filb.lev") ":lib:Kni-filb.lev";
read 'File' (1122,"Kni-goal.lev") ":lib:Kni-goal.lev";
read 'File' (1123,"Kni-loca.lev") ":lib:Kni-loca.lev";
read 'File' (1124,"Kni-strt.lev") ":lib:Kni-strt.lev";
read 'File' (1125,"Mon-fila.lev") ":lib:Mon-fila.lev";
read 'File' (1126,"Mon-filb.lev") ":lib:Mon-filb.lev";
read 'File' (1127,"Mon-goal.lev") ":lib:Mon-goal.lev";
read 'File' (1128,"Mon-loca.lev") ":lib:Mon-loca.lev";
read 'File' (1129,"Mon-strt.lev") ":lib:Mon-strt.lev";
read 'File' (1130,"Pri-fila.lev") ":lib:Pri-fila.lev";
read 'File' (1131,"Pri-filb.lev") ":lib:Pri-filb.lev";
read 'File' (1132,"Pri-goal.lev") ":lib:Pri-goal.lev";
read 'File' (1133,"Pri-loca.lev") ":lib:Pri-loca.lev";
read 'File' (1134,"Pri-strt.lev") ":lib:Pri-strt.lev";
read 'File' (1135,"Ran-fila.lev") ":lib:Ran-fila.lev";
read 'File' (1136,"Ran-filb.lev") ":lib:Ran-filb.lev";
read 'File' (1137,"Ran-goal.lev") ":lib:Ran-goal.lev";
read 'File' (1138,"Ran-loca.lev") ":lib:Ran-loca.lev";
read 'File' (1139,"Ran-strt.lev") ":lib:Ran-strt.lev";
read 'File' (1140,"Rog-fila.lev") ":lib:Rog-fila.lev";
read 'File' (1141,"Rog-filb.lev") ":lib:Rog-filb.lev";
read 'File' (1142,"Rog-goal.lev") ":lib:Rog-goal.lev";
read 'File' (1143,"Rog-loca.lev") ":lib:Rog-loca.lev";
read 'File' (1144,"Rog-strt.lev") ":lib:Rog-strt.lev";
read 'File' (1145,"Sam-fila.lev") ":lib:Sam-fila.lev";
read 'File' (1146,"Sam-filb.lev") ":lib:Sam-filb.lev";
read 'File' (1147,"Sam-goal.lev") ":lib:Sam-goal.lev";
read 'File' (1148,"Sam-loca.lev") ":lib:Sam-loca.lev";
read 'File' (1149,"Sam-strt.lev") ":lib:Sam-strt.lev";
read 'File' (1150,"Tou-fila.lev") ":lib:Tou-fila.lev";
read 'File' (1151,"Tou-filb.lev") ":lib:Tou-filb.lev";
read 'File' (1152,"Tou-goal.lev") ":lib:Tou-goal.lev";
read 'File' (1153,"Tou-loca.lev") ":lib:Tou-loca.lev";
read 'File' (1154,"Tou-strt.lev") ":lib:Tou-strt.lev";
read 'File' (1155,"Val-fila.lev") ":lib:Val-fila.lev";
read 'File' (1156,"Val-filb.lev") ":lib:Val-filb.lev";
read 'File' (1157,"Val-goal.lev") ":lib:Val-goal.lev";
read 'File' (1158,"Val-loca.lev") ":lib:Val-loca.lev";
read 'File' (1159,"Val-strt.lev") ":lib:Val-strt.lev";
read 'File' (1160,"Wiz-fila.lev") ":lib:Wiz-fila.lev";
read 'File' (1161,"Wiz-filb.lev") ":lib:Wiz-filb.lev";
read 'File' (1162,"Wiz-goal.lev") ":lib:Wiz-goal.lev";
read 'File' (1163,"Wiz-loca.lev") ":lib:Wiz-loca.lev";
read 'File' (1164,"Wiz-strt.lev") ":lib:Wiz-strt.lev";
#endif
