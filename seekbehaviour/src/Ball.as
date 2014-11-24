package  
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Berend Weij
	 */
	public class Ball extends Vehicle
	{
		private var _target : DisplayObject;
		
		// de class 'Ball' extend de Vehicle. Hierdoor heeft hij functies zoals 'seek'
		// ook andere objecten kunnen nu eenvoudig de Vehicle class extenden
		public function Ball(massGiven : int, maxSpeedGiven : int) 
		{
			var size : int = 30;
			this.graphics.beginFill(0xFF0000);
			this.graphics.lineStyle(1, 0xFF0000);
			this.graphics.lineTo(-size/2, -size/2);
			this.graphics.lineTo(-size/2, size/2);
			this.graphics.lineTo(0, 0);
						
			maxSpeed	=	maxSpeedGiven;
			mass		=	massGiven;
		}
		
		public function set target(value:DisplayObject):void 
		{
			_target = value;
		}
		
		override public function update():void 
		{
			super.update();
			
			if(_target != null){
				seek(new Vector2D(_target.x, _target.y));
			}else {
				seek(new Vector2D(stage.mouseX, stage.mouseY));
			}
		}
	}

}