package systems {
	import components.GravityComponent;
	import components.VelocityComponent;
	import components.PositionComponent;
	import components.DisplayComponent;
	/**
	 * @author berendweij
	 */
	public class GravitySystem extends System {
		
		public static const GRAVITY : Number = 0.1;
		
		override public function update():void
		{
			// in deze update staat de logica om de objecten te laten bewegen
			for each( var target:Entity in targets )
			{
				// aangezien we door alle targets heen loopen moeten we ook kijken of deze target wel de components hebben
				// die wij nodig hebben in dit systeem
				if (target.get(GravityComponent) && target.get(VelocityComponent))
				{
					// we zouden ook specifiek de gravity per object bij kunnen houden
					// voor nu tellen we hem direct op bij de velocityY
					target.get(VelocityComponent).velocityY += GRAVITY * target.get(GravityComponent).mass;
				}
			}
		}
		
	}
}
