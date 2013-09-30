package 
{
	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.display.Sprite;

	public class Main extends Sprite
	{
		
		private var _cars	:	Vector.<DisplayObject>	=	new Vector.<DisplayObject>();
		
		public function Main()
		{
			
			var car	:	Car	=	new Car(-5, 0);
			car.view		=	new CarImage();
			car.x			=	300;
			car.y			=	300;
			
			addChild(car);
			_cars.push(car);
			
			// start met updaten
			stage.addEventListener(Event.ENTER_FRAME, update);
			
		}

		private function update(event : Event) : void
		{
			for each(var car : Car in _cars)
			{
				car.update();
			}
		}
	}
}
