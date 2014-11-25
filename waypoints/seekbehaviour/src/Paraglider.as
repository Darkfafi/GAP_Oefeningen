package  
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Berend Weij
	 */
	public class Paraglider extends Vehicle
	{
		private var waypointArray : Array = [];
		
		// de class 'Paraglider' extend de Vehicle. Hierdoor heeft hij functies zoals 'seek'
		// ook andere objecten kunnen nu eenvoudig de Vehicle class extenden
		public function Paraglider() 
		{
			var size : int = 30;
			this.graphics.beginFill(0xFF0000);
			this.graphics.lineStyle(1, 0xFF0000);
			this.graphics.lineTo(-size/2, -size/2);
			this.graphics.lineTo(-size/2, size/2);
			this.graphics.lineTo(0, 0);
						
			maxSpeed	=	10;
			mass		=	25;
		}
		
		public function addWaypoint(targetPoint : Vector2D) :void{
			waypointArray.push(targetPoint);
		}
		override public function update():void 
		{
			super.update();
			if(waypointArray[0] != null){
				setTarget(waypointArray[0] as Vector2D);
			}else {
				setTarget(new Vector2D(stage.stageWidth / 2, stage.stageHeight / 2));
			}
		}
		override protected function closeToTarget():void 
		{
			super.closeToTarget();
			waypointArray.splice(0, 1);
		}
	}
}