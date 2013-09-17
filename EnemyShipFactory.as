package {
	/**
	 * @author berendweij
	 */
	public class EnemyShipFactory {
		
		public function makeEnemyShip( type : int ) : EnemyShip
		{
			var enemy : EnemyShip;
			
			if(type == 0)
			{
				enemy = new UFOEnemyShip();
			}
			else
			{
				enemy = new RocketEnemyShip();
			}
			
			return enemy;
		}
		
	}
}
