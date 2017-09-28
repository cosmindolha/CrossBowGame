package ; #if !flash


import openfl._internal.swf.SWFLite;
import openfl.display.MovieClip;
import openfl.Assets;


class CrossBowAnim extends MovieClip {
	
	
	
	
	public function new () {
		
		super ();
		
		/*
		if (!SWFLite.instances.exists ("lib/library/library.swf")) {
			
			SWFLite.instances.set ("lib/library/library.swf", SWFLite.unserialize (Assets.getText ("lib/library/library.swf")));
			
		}
		*/
		
		var swfLite = SWFLite.instances.get ("lib/library/library.swf");
		var symbol = swfLite.symbols.get (71);
		
		__fromSymbol (swfLite, cast symbol);
		
	}
	
	
}


#else
@:bind @:native("CrossBowAnim") class CrossBowAnim extends flash.display.MovieClip {
	
	
	
	
	public function new () {
		
		super ();
		
	}
	
	
}
#end