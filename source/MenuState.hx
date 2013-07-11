package;

import nme.Assets;
import nme.geom.Rectangle;
import nme.net.SharedObject;
import org.flixel.FlxButton;
import org.flixel.FlxG;
import org.flixel.FlxPath;
import org.flixel.FlxSave;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;

class MenuState extends FlxState
{
	override public function create():Void
	{
		#if !neko
		FlxG.bgColor = 0xffffffff;
		#else
		FlxG.camera.bgColor = {rgb: 0xffffff, a: 0xff};
		#end		
		#if !FLX_NO_MOUSE
		FlxG.mouse.show();
		#end
		var x= new FlxText(0,0,100,"Hello World!");
		add(x); 

		var player = new Player();
		player.x = 10;
		player.y = 10;
		add(player);
	}
	
	override public function destroy():Void
	{
		super.destroy();
	}

	override public function update():Void
	{
		super.update();
	}	
}