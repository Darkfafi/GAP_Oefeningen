package {
	/**
	 * @author berendweij
	 */
	public class EnemyShipFactory {
		
		public function makeEnemyShip( type : int ) : EnemyShip
		{
			// lokale variabele waar de het nieuwe ruimteschip in opslaan
			var enemy : EnemyShip;
			
			if(type == 0)
			{
				enemy = new UFOEnemyShip();
			}
			else if(type == 1)
			{
				enemy = new RocketEnemyShip();
			}
			else
			{
				enemy = new BigBossEnemyShip();
			}
			
			// we kunnen het ruimteschip nog wat basisinstellingen meegeven
			enemy.rotation = 10;
			
			return enemy;
		}
		
	}
}
