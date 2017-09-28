package;


import lime.app.Config;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {
	
	
	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	
	
	public static function init (config:Config):Void {
		
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
		
		var rootPath = null;
		
		if (config != null && Reflect.hasField (config, "rootPath")) {
			
			rootPath = Reflect.field (config, "rootPath");
			
		}
		
		if (rootPath == null) {
			
			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif (sys && windows && !cs)
			rootPath = FileSystem.absolutePath (haxe.io.Path.directory (#if (haxe_ver >= 3.3) Sys.programPath () #else Sys.executablePath () #end)) + "/";
			#else
			rootPath = "";
			#end
			
		}
		
		Assets.defaultRootPath = rootPath;
		
		#if (openfl && !flash && !display)
		
		#end
		
		var data, manifest, library;
		
		data = '{"name":"library","assets":"aoy4:pathy21:lib%2Flibrary%2F1.jpgy4:sizei7816y4:typey5:IMAGEy2:idR1y7:preloadtgoR0y22:lib%2Flibrary%2F10.jpgR2i7788R3R4R5R7R6tgoR0y23:lib%2Flibrary%2F10a.pngR2i12008R3R4R5R8R6tgoR0y22:lib%2Flibrary%2F11.jpgR2i7796R3R4R5R9R6tgoR0y23:lib%2Flibrary%2F11a.pngR2i12044R3R4R5R10R6tgoR0y22:lib%2Flibrary%2F12.jpgR2i7796R3R4R5R11R6tgoR0y23:lib%2Flibrary%2F12a.pngR2i12044R3R4R5R12R6tgoR0y22:lib%2Flibrary%2F13.jpgR2i7850R3R4R5R13R6tgoR0y23:lib%2Flibrary%2F13a.pngR2i11962R3R4R5R14R6tgoR0y22:lib%2Flibrary%2F14.jpgR2i7850R3R4R5R15R6tgoR0y23:lib%2Flibrary%2F14a.pngR2i11962R3R4R5R16R6tgoR0y22:lib%2Flibrary%2F15.jpgR2i7927R3R4R5R17R6tgoR0y23:lib%2Flibrary%2F15a.pngR2i11914R3R4R5R18R6tgoR0y22:lib%2Flibrary%2F16.jpgR2i7927R3R4R5R19R6tgoR0y23:lib%2Flibrary%2F16a.pngR2i11914R3R4R5R20R6tgoR0y22:lib%2Flibrary%2F17.jpgR2i7790R3R4R5R21R6tgoR0y23:lib%2Flibrary%2F17a.pngR2i12059R3R4R5R22R6tgoR0y22:lib%2Flibrary%2F18.jpgR2i7790R3R4R5R23R6tgoR0y23:lib%2Flibrary%2F18a.pngR2i12059R3R4R5R24R6tgoR0y22:lib%2Flibrary%2F19.jpgR2i7792R3R4R5R25R6tgoR0y23:lib%2Flibrary%2F19a.pngR2i12074R3R4R5R26R6tgoR0y22:lib%2Flibrary%2F1a.pngR2i12014R3R4R5R27R6tgoR0y22:lib%2Flibrary%2F20.jpgR2i7792R3R4R5R28R6tgoR0y23:lib%2Flibrary%2F20a.pngR2i12074R3R4R5R29R6tgoR0y22:lib%2Flibrary%2F21.jpgR2i7769R3R4R5R30R6tgoR0y23:lib%2Flibrary%2F21a.pngR2i12134R3R4R5R31R6tgoR0y22:lib%2Flibrary%2F23.jpgR2i7818R3R4R5R32R6tgoR0y23:lib%2Flibrary%2F23a.pngR2i12014R3R4R5R33R6tgoR0y22:lib%2Flibrary%2F25.jpgR2i7841R3R4R5R34R6tgoR0y23:lib%2Flibrary%2F25a.pngR2i12001R3R4R5R35R6tgoR0y22:lib%2Flibrary%2F27.jpgR2i7869R3R4R5R36R6tgoR0y23:lib%2Flibrary%2F27a.pngR2i12075R3R4R5R37R6tgoR0y22:lib%2Flibrary%2F29.jpgR2i7799R3R4R5R38R6tgoR0y23:lib%2Flibrary%2F29a.pngR2i12148R3R4R5R39R6tgoR0y21:lib%2Flibrary%2F3.jpgR2i7806R3R4R5R40R6tgoR0y22:lib%2Flibrary%2F31.jpgR2i7738R3R4R5R41R6tgoR0y23:lib%2Flibrary%2F31a.pngR2i12248R3R4R5R42R6tgoR0y22:lib%2Flibrary%2F33.jpgR2i7731R3R4R5R43R6tgoR0y23:lib%2Flibrary%2F33a.pngR2i12260R3R4R5R44R6tgoR0y22:lib%2Flibrary%2F35.jpgR2i7780R3R4R5R45R6tgoR0y23:lib%2Flibrary%2F35a.pngR2i12170R3R4R5R46R6tgoR0y22:lib%2Flibrary%2F37.jpgR2i7740R3R4R5R47R6tgoR0y23:lib%2Flibrary%2F37a.pngR2i12206R3R4R5R48R6tgoR0y22:lib%2Flibrary%2F39.jpgR2i7708R3R4R5R49R6tgoR0y23:lib%2Flibrary%2F39a.pngR2i12267R3R4R5R50R6tgoR0y22:lib%2Flibrary%2F3a.pngR2i12027R3R4R5R51R6tgoR0y21:lib%2Flibrary%2F4.jpgR2i7806R3R4R5R52R6tgoR0y22:lib%2Flibrary%2F41.jpgR2i7786R3R4R5R53R6tgoR0y23:lib%2Flibrary%2F41a.pngR2i12155R3R4R5R54R6tgoR0y22:lib%2Flibrary%2F43.jpgR2i7759R3R4R5R55R6tgoR0y23:lib%2Flibrary%2F43a.pngR2i12052R3R4R5R56R6tgoR0y22:lib%2Flibrary%2F44.jpgR2i7786R3R4R5R57R6tgoR0y23:lib%2Flibrary%2F44a.pngR2i12155R3R4R5R58R6tgoR0y22:lib%2Flibrary%2F45.jpgR2i7916R3R4R5R59R6tgoR0y23:lib%2Flibrary%2F45a.pngR2i11927R3R4R5R60R6tgoR0y22:lib%2Flibrary%2F46.jpgR2i7759R3R4R5R61R6tgoR0y23:lib%2Flibrary%2F46a.pngR2i12052R3R4R5R62R6tgoR0y22:lib%2Flibrary%2F47.jpgR2i7784R3R4R5R63R6tgoR0y23:lib%2Flibrary%2F47a.pngR2i12020R3R4R5R64R6tgoR0y22:lib%2Flibrary%2F48.jpgR2i7916R3R4R5R65R6tgoR0y23:lib%2Flibrary%2F48a.pngR2i11927R3R4R5R66R6tgoR0y22:lib%2Flibrary%2F49.jpgR2i7751R3R4R5R67R6tgoR0y23:lib%2Flibrary%2F49a.pngR2i12102R3R4R5R68R6tgoR0y22:lib%2Flibrary%2F4a.pngR2i12027R3R4R5R69R6tgoR0y21:lib%2Flibrary%2F5.jpgR2i7850R3R4R5R70R6tgoR0y22:lib%2Flibrary%2F50.jpgR2i7784R3R4R5R71R6tgoR0y23:lib%2Flibrary%2F50a.pngR2i12020R3R4R5R72R6tgoR0y22:lib%2Flibrary%2F51.jpgR2i7740R3R4R5R73R6tgoR0y23:lib%2Flibrary%2F51a.pngR2i12086R3R4R5R74R6tgoR0y22:lib%2Flibrary%2F52.jpgR2i7751R3R4R5R75R6tgoR0y23:lib%2Flibrary%2F52a.pngR2i12102R3R4R5R76R6tgoR0y22:lib%2Flibrary%2F53.jpgR2i7812R3R4R5R77R6tgoR0y23:lib%2Flibrary%2F53a.pngR2i11977R3R4R5R78R6tgoR0y22:lib%2Flibrary%2F54.jpgR2i7740R3R4R5R79R6tgoR0y23:lib%2Flibrary%2F54a.pngR2i12086R3R4R5R80R6tgoR0y22:lib%2Flibrary%2F55.jpgR2i7837R3R4R5R81R6tgoR0y23:lib%2Flibrary%2F55a.pngR2i11977R3R4R5R82R6tgoR0y22:lib%2Flibrary%2F56.jpgR2i7812R3R4R5R83R6tgoR0y23:lib%2Flibrary%2F56a.pngR2i11977R3R4R5R84R6tgoR0y22:lib%2Flibrary%2F57.jpgR2i7731R3R4R5R85R6tgoR0y23:lib%2Flibrary%2F57a.pngR2i12075R3R4R5R86R6tgoR0y22:lib%2Flibrary%2F58.jpgR2i7837R3R4R5R87R6tgoR0y23:lib%2Flibrary%2F58a.pngR2i11977R3R4R5R88R6tgoR0y22:lib%2Flibrary%2F59.jpgR2i7669R3R4R5R89R6tgoR0y23:lib%2Flibrary%2F59a.pngR2i12054R3R4R5R90R6tgoR0y22:lib%2Flibrary%2F5a.pngR2i11978R3R4R5R91R6tgoR0y21:lib%2Flibrary%2F6.jpgR2i7850R3R4R5R92R6tgoR0y22:lib%2Flibrary%2F60.jpgR2i7731R3R4R5R93R6tgoR0y23:lib%2Flibrary%2F60a.pngR2i12075R3R4R5R94R6tgoR0y22:lib%2Flibrary%2F61.jpgR2i7785R3R4R5R95R6tgoR0y23:lib%2Flibrary%2F61a.pngR2i11835R3R4R5R96R6tgoR0y22:lib%2Flibrary%2F62.jpgR2i7669R3R4R5R97R6tgoR0y23:lib%2Flibrary%2F62a.pngR2i12054R3R4R5R98R6tgoR0y22:lib%2Flibrary%2F63.jpgR2i7754R3R4R5R99R6tgoR0y23:lib%2Flibrary%2F63a.pngR2i11902R3R4R5R100R6tgoR0y22:lib%2Flibrary%2F64.jpgR2i7785R3R4R5R101R6tgoR0y23:lib%2Flibrary%2F64a.pngR2i11835R3R4R5R102R6tgoR0y22:lib%2Flibrary%2F65.jpgR2i7860R3R4R5R103R6tgoR0y23:lib%2Flibrary%2F65a.pngR2i11783R3R4R5R104R6tgoR0y22:lib%2Flibrary%2F66.jpgR2i7754R3R4R5R105R6tgoR0y23:lib%2Flibrary%2F66a.pngR2i11902R3R4R5R106R6tgoR0y22:lib%2Flibrary%2F67.jpgR2i7550R3R4R5R107R6tgoR0y23:lib%2Flibrary%2F67a.pngR2i11879R3R4R5R108R6tgoR0y22:lib%2Flibrary%2F68.jpgR2i7860R3R4R5R109R6tgoR0y23:lib%2Flibrary%2F68a.pngR2i11783R3R4R5R110R6tgoR0y22:lib%2Flibrary%2F69.jpgR2i7588R3R4R5R111R6tgoR0y23:lib%2Flibrary%2F69a.pngR2i11770R3R4R5R112R6tgoR0y22:lib%2Flibrary%2F6a.pngR2i11978R3R4R5R113R6tgoR0y21:lib%2Flibrary%2F7.jpgR2i7842R3R4R5R114R6tgoR0y22:lib%2Flibrary%2F70.jpgR2i7550R3R4R5R115R6tgoR0y23:lib%2Flibrary%2F70a.pngR2i11879R3R4R5R116R6tgoR0y22:lib%2Flibrary%2F71.jpgR2i7550R3R4R5R117R6tgoR0y23:lib%2Flibrary%2F71a.pngR2i11879R3R4R5R118R6tgoR0y22:lib%2Flibrary%2F72.jpgR2i3905R3R4R5R119R6tgoR0y23:lib%2Flibrary%2F72a.pngR2i10774R3R4R5R120R6tgoR0y22:lib%2Flibrary%2F73.jpgR2i3905R3R4R5R121R6tgoR0y23:lib%2Flibrary%2F73a.pngR2i10774R3R4R5R122R6tgoR0y22:lib%2Flibrary%2F75.jpgR2i7562R3R4R5R123R6tgoR0y23:lib%2Flibrary%2F75a.pngR2i11891R3R4R5R124R6tgoR0y22:lib%2Flibrary%2F77.jpgR2i7588R3R4R5R125R6tgoR0y23:lib%2Flibrary%2F77a.pngR2i11770R3R4R5R126R6tgoR0y22:lib%2Flibrary%2F79.jpgR2i7535R3R4R5R127R6tgoR0y23:lib%2Flibrary%2F79a.pngR2i11658R3R4R5R128R6tgoR0y22:lib%2Flibrary%2F7a.pngR2i12020R3R4R5R129R6tgoR0y21:lib%2Flibrary%2F8.jpgR2i7842R3R4R5R130R6tgoR0y22:lib%2Flibrary%2F81.jpgR2i7457R3R4R5R131R6tgoR0y23:lib%2Flibrary%2F81a.pngR2i11824R3R4R5R132R6tgoR0y22:lib%2Flibrary%2F8a.pngR2i12020R3R4R5R133R6tgoR0y21:lib%2Flibrary%2F9.jpgR2i7788R3R4R5R134R6tgoR0y22:lib%2Flibrary%2F9a.pngR2i12008R3R4R5R135R6tgoR0y27:lib%2Flibrary%2Flibrary.binR2i36630R3y4:TEXTR5R136R6tgh","version":2,"libraryArgs":["lib/library/library.bin"],"libraryType":"openfl._internal.swf.SWFLiteLibrary"}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("library", library);
		data = '{"name":null,"assets":"aoy4:pathy15:img%2Farrow.pngy4:sizei24704y4:typey5:IMAGEy2:idR1y7:preloadtgoR0y12:img%2Fbg.pngR2i338059R3R4R5R7R6tgh","version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		
		
		library = Assets.getLibrary ("library");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("library");
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__img_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__img_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_1_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_10_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_10a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_11_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_11a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_12_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_12a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_13_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_13a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_14_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_14a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_15_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_15a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_16_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_16a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_17_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_17a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_18_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_18a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_19_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_19a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_1a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_20_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_20a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_21_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_21a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_23_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_23a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_25_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_25a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_27_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_27a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_29_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_29a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_3_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_31_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_31a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_33_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_33a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_35_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_35a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_37_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_37a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_39_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_39a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_3a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_4_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_41_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_41a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_43_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_43a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_44_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_44a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_45_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_45a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_46_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_46a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_47_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_47a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_48_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_48a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_49_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_49a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_4a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_5_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_50_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_50a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_51_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_51a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_52_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_52a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_53_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_53a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_54_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_54a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_55_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_55a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_56_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_56a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_57_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_57a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_58_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_58a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_59_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_59a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_5a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_6_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_60_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_60a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_61_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_61a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_62_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_62a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_63_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_63a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_64_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_64a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_65_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_65a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_66_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_66a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_67_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_67a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_68_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_68a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_69_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_69a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_6a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_7_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_70_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_70a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_71_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_71a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_72_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_72a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_73_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_73a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_75_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_75a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_77_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_77a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_79_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_79a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_7a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_8_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_81_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_81a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_8a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_9_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_9a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__lib_library_library_bin extends null { }
@:keep @:bind #if display private #end class __ASSET__lib_library_json extends null { }
@:keep @:bind #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:image("assets/img/arrow.png") #if display private #end class __ASSET__img_arrow_png extends lime.graphics.Image {}
@:image("assets/img/bg.png") #if display private #end class __ASSET__img_bg_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/1.jpg") #if display private #end class __ASSET__lib_library_1_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/10.jpg") #if display private #end class __ASSET__lib_library_10_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/10a.png") #if display private #end class __ASSET__lib_library_10a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/11.jpg") #if display private #end class __ASSET__lib_library_11_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/11a.png") #if display private #end class __ASSET__lib_library_11a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/12.jpg") #if display private #end class __ASSET__lib_library_12_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/12a.png") #if display private #end class __ASSET__lib_library_12a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/13.jpg") #if display private #end class __ASSET__lib_library_13_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/13a.png") #if display private #end class __ASSET__lib_library_13a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/14.jpg") #if display private #end class __ASSET__lib_library_14_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/14a.png") #if display private #end class __ASSET__lib_library_14a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/15.jpg") #if display private #end class __ASSET__lib_library_15_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/15a.png") #if display private #end class __ASSET__lib_library_15a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/16.jpg") #if display private #end class __ASSET__lib_library_16_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/16a.png") #if display private #end class __ASSET__lib_library_16a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/17.jpg") #if display private #end class __ASSET__lib_library_17_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/17a.png") #if display private #end class __ASSET__lib_library_17a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/18.jpg") #if display private #end class __ASSET__lib_library_18_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/18a.png") #if display private #end class __ASSET__lib_library_18a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/19.jpg") #if display private #end class __ASSET__lib_library_19_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/19a.png") #if display private #end class __ASSET__lib_library_19a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/1a.png") #if display private #end class __ASSET__lib_library_1a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/20.jpg") #if display private #end class __ASSET__lib_library_20_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/20a.png") #if display private #end class __ASSET__lib_library_20a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/21.jpg") #if display private #end class __ASSET__lib_library_21_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/21a.png") #if display private #end class __ASSET__lib_library_21a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/23.jpg") #if display private #end class __ASSET__lib_library_23_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/23a.png") #if display private #end class __ASSET__lib_library_23a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/25.jpg") #if display private #end class __ASSET__lib_library_25_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/25a.png") #if display private #end class __ASSET__lib_library_25a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/27.jpg") #if display private #end class __ASSET__lib_library_27_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/27a.png") #if display private #end class __ASSET__lib_library_27a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/29.jpg") #if display private #end class __ASSET__lib_library_29_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/29a.png") #if display private #end class __ASSET__lib_library_29a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/3.jpg") #if display private #end class __ASSET__lib_library_3_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/31.jpg") #if display private #end class __ASSET__lib_library_31_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/31a.png") #if display private #end class __ASSET__lib_library_31a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/33.jpg") #if display private #end class __ASSET__lib_library_33_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/33a.png") #if display private #end class __ASSET__lib_library_33a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/35.jpg") #if display private #end class __ASSET__lib_library_35_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/35a.png") #if display private #end class __ASSET__lib_library_35a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/37.jpg") #if display private #end class __ASSET__lib_library_37_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/37a.png") #if display private #end class __ASSET__lib_library_37a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/39.jpg") #if display private #end class __ASSET__lib_library_39_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/39a.png") #if display private #end class __ASSET__lib_library_39a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/3a.png") #if display private #end class __ASSET__lib_library_3a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/4.jpg") #if display private #end class __ASSET__lib_library_4_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/41.jpg") #if display private #end class __ASSET__lib_library_41_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/41a.png") #if display private #end class __ASSET__lib_library_41a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/43.jpg") #if display private #end class __ASSET__lib_library_43_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/43a.png") #if display private #end class __ASSET__lib_library_43a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/44.jpg") #if display private #end class __ASSET__lib_library_44_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/44a.png") #if display private #end class __ASSET__lib_library_44a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/45.jpg") #if display private #end class __ASSET__lib_library_45_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/45a.png") #if display private #end class __ASSET__lib_library_45a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/46.jpg") #if display private #end class __ASSET__lib_library_46_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/46a.png") #if display private #end class __ASSET__lib_library_46a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/47.jpg") #if display private #end class __ASSET__lib_library_47_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/47a.png") #if display private #end class __ASSET__lib_library_47a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/48.jpg") #if display private #end class __ASSET__lib_library_48_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/48a.png") #if display private #end class __ASSET__lib_library_48a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/49.jpg") #if display private #end class __ASSET__lib_library_49_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/49a.png") #if display private #end class __ASSET__lib_library_49a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/4a.png") #if display private #end class __ASSET__lib_library_4a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/5.jpg") #if display private #end class __ASSET__lib_library_5_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/50.jpg") #if display private #end class __ASSET__lib_library_50_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/50a.png") #if display private #end class __ASSET__lib_library_50a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/51.jpg") #if display private #end class __ASSET__lib_library_51_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/51a.png") #if display private #end class __ASSET__lib_library_51a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/52.jpg") #if display private #end class __ASSET__lib_library_52_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/52a.png") #if display private #end class __ASSET__lib_library_52a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/53.jpg") #if display private #end class __ASSET__lib_library_53_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/53a.png") #if display private #end class __ASSET__lib_library_53a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/54.jpg") #if display private #end class __ASSET__lib_library_54_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/54a.png") #if display private #end class __ASSET__lib_library_54a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/55.jpg") #if display private #end class __ASSET__lib_library_55_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/55a.png") #if display private #end class __ASSET__lib_library_55a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/56.jpg") #if display private #end class __ASSET__lib_library_56_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/56a.png") #if display private #end class __ASSET__lib_library_56a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/57.jpg") #if display private #end class __ASSET__lib_library_57_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/57a.png") #if display private #end class __ASSET__lib_library_57a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/58.jpg") #if display private #end class __ASSET__lib_library_58_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/58a.png") #if display private #end class __ASSET__lib_library_58a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/59.jpg") #if display private #end class __ASSET__lib_library_59_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/59a.png") #if display private #end class __ASSET__lib_library_59a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/5a.png") #if display private #end class __ASSET__lib_library_5a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/6.jpg") #if display private #end class __ASSET__lib_library_6_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/60.jpg") #if display private #end class __ASSET__lib_library_60_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/60a.png") #if display private #end class __ASSET__lib_library_60a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/61.jpg") #if display private #end class __ASSET__lib_library_61_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/61a.png") #if display private #end class __ASSET__lib_library_61a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/62.jpg") #if display private #end class __ASSET__lib_library_62_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/62a.png") #if display private #end class __ASSET__lib_library_62a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/63.jpg") #if display private #end class __ASSET__lib_library_63_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/63a.png") #if display private #end class __ASSET__lib_library_63a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/64.jpg") #if display private #end class __ASSET__lib_library_64_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/64a.png") #if display private #end class __ASSET__lib_library_64a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/65.jpg") #if display private #end class __ASSET__lib_library_65_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/65a.png") #if display private #end class __ASSET__lib_library_65a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/66.jpg") #if display private #end class __ASSET__lib_library_66_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/66a.png") #if display private #end class __ASSET__lib_library_66a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/67.jpg") #if display private #end class __ASSET__lib_library_67_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/67a.png") #if display private #end class __ASSET__lib_library_67a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/68.jpg") #if display private #end class __ASSET__lib_library_68_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/68a.png") #if display private #end class __ASSET__lib_library_68a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/69.jpg") #if display private #end class __ASSET__lib_library_69_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/69a.png") #if display private #end class __ASSET__lib_library_69a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/6a.png") #if display private #end class __ASSET__lib_library_6a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/7.jpg") #if display private #end class __ASSET__lib_library_7_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/70.jpg") #if display private #end class __ASSET__lib_library_70_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/70a.png") #if display private #end class __ASSET__lib_library_70a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/71.jpg") #if display private #end class __ASSET__lib_library_71_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/71a.png") #if display private #end class __ASSET__lib_library_71a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/72.jpg") #if display private #end class __ASSET__lib_library_72_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/72a.png") #if display private #end class __ASSET__lib_library_72a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/73.jpg") #if display private #end class __ASSET__lib_library_73_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/73a.png") #if display private #end class __ASSET__lib_library_73a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/75.jpg") #if display private #end class __ASSET__lib_library_75_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/75a.png") #if display private #end class __ASSET__lib_library_75a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/77.jpg") #if display private #end class __ASSET__lib_library_77_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/77a.png") #if display private #end class __ASSET__lib_library_77a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/79.jpg") #if display private #end class __ASSET__lib_library_79_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/79a.png") #if display private #end class __ASSET__lib_library_79a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/7a.png") #if display private #end class __ASSET__lib_library_7a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/8.jpg") #if display private #end class __ASSET__lib_library_8_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/81.jpg") #if display private #end class __ASSET__lib_library_81_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/81a.png") #if display private #end class __ASSET__lib_library_81a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/8a.png") #if display private #end class __ASSET__lib_library_8a_png extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/9.jpg") #if display private #end class __ASSET__lib_library_9_jpg extends lime.graphics.Image {}
@:image("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/9a.png") #if display private #end class __ASSET__lib_library_9a_png extends lime.graphics.Image {}
@:file("D:/openfl/CrossBowGame/bin/html5/obj/libraries/library/library.bin") #if display private #end class __ASSET__lib_library_library_bin extends haxe.io.Bytes {}
@:file("") #if display private #end class __ASSET__lib_library_json extends haxe.io.Bytes {}
@:file("") #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else



#end

#if (openfl && !flash)



#end
#end