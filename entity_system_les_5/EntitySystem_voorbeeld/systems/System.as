package systems {
	/**
	 * @author berendweij
	 */
	public class System {
		
		protected var _targets:Vector.<Entity>;
		
		public function update() : void
		{
		}

		public function get targets() : Vector.<Entity> {
			return _targets;
		}

		public function set targets(targets : Vector.<Entity>) : void {
			_targets = targets;
		}
		
	}
}
