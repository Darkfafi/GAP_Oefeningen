package nl.berendweij.mvc_example.model.vo
{
	import utils.data.vo.VO;
	/**
	 * @author 
	 */
	public class HighscoreVO extends VO 
	{
		
		// voor nu doen we niks met een database of een SharedObject
		// we slaan het alleen ter voorbeeld op in een Array
		private var _highscores : Array;
		
		function HighscoreVO() : void
		{
			_highscores = [];
		}
		
		public function get highscores():Array 
		{
			return _highscores;
		}
		
		public function set highscores(value:Array):void 
		{
			_highscores = value;
		}
		
	}
}
