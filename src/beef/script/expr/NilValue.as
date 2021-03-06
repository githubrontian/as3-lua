package beef.script.expr {
	import beef.script.expr.Value;

	public class NilValue extends Value {
		public static const INSTANCE:NilValue = new NilValue();
		
		public override function asBoolean():BooleanValue {
			return BooleanValue.FALSE;
		}
		public override function asNumber():NumberValue {
			return new NumberValue(NaN);
		}
		public override function asString():StringValue {
			return new StringValue('nil');
		}
		public function toString():String {
			return "[NilValue]";
		}
	}
}
