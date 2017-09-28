package ; #if !flash


import openfl._internal.swf.SWFLite;
import openfl.display.MovieClip;
import openfl.Assets;


class Bubbles extends MovieClip {
	
	
	
	
	public function new () {
		
		super ();
		
		/*
		if (!SWFLite.instances.exists ("lib/library/library.bin")) {
			
			SWFLite.instances.set ("lib/library/library.bin", SWFLite.unserialize (Assets.getText ("lib/library/library.bin")));
			
		}
		*/
		
		var swfLite = SWFLite.instances.get ("lib/library/library.bin");
		var symbol = swfLite.symbols.get (81);
		
		__fromSymbol (swfLite, cast symbol);
		
	}
	
	
}


#else
@:bind @:native("Bubbles") class Bubbles extends flash.display.MovieClip {
	
	
	
	
	public function new () {
		
		super ();
		
	}
	
	
}
#end