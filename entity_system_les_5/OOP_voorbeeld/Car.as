package {
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	/**
	 * @author berendweij
	 */
	public class Car extends Sprite {
		
		private var _view 		:	DisplayObject;
		private var _velocityX	:	Number;
		private var _velocityY	:	Number;
		
		public function Car(velocityX : Number, velocityY : Number) : void
		{
			_velocityX	=	velocityX;
			_velocityY	=	velocityY;
		}
		
		public function get view() : DisplayObject {
			return _view;
		}

		public function set view(view : DisplayObject) : void {
			_view = view;
			addChild(view);
		}
		
		public function update() : void
		{
			if(x < 0)
			{
				// als we links uit het scherm zijn: rij dan weer terug (Math.abs() maakt de snelheid positief)
				_velocityX	= Math.abs(_velocityX);
			}
			else if(x > 550)
			{
				// als we rechts uit het scherm zijn: rij dan weer terug
				_velocityX	= -Math.abs(_velocityX); 
			}
			
			if(_velocityX > 0)
			{
				// we rijden naar rechts, dus laat de auto naar rechts kijken
				scaleX	=	1;
			}
			else
			{
				// we rijden naar links, dus laat de auto naar links kijken
				scaleX	=	-1;
			}
			
			// zorg ervoor dat we visueel echt laten zien hoe de game er op dit moment uitziet
			x			+=	_velocityX;
			y 			+=	_velocityY;
		}
		
	}
}
