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

class Player extends FlxSprite
{
    
    public var speed:Int;
    static public inline var DEFAULT_SPEED = 100;
    public var skills:Array<Skill>;
    public var skillMapping = ["Q" => 0, "W" => 1, "E" => 2, "R" => 3];

    public function new() {
        super();
        this.loadGraphic("assets/data/roguelike/player.png");
        this.speed = DEFAULT_SPEED;
    }

    override public function destroy():Void {
        super.destroy();
    }

    override public function update():Void {
        super.update();
        handleInput();
    }

    private function handleInput(): Void {
        this.velocity.x = 0;
        this.velocity.y = 0;
        if (FlxG.keys.pressed("UP")) {
            this.velocity.y = -this.speed;
        } if (FlxG.keys.pressed("DOWN")) {
            this.velocity.y = this.speed;
        } if (FlxG.keys.pressed("RIGHT")) {
            this.velocity.x = this.speed;
        } if (FlxG.keys.pressed("LEFT")) {
            this.velocity.x = -this.speed;
        }

        for (key in skillMapping.keys) {
            FlxG.log(key);
        }
    }
}