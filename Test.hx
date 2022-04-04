// mainly to test that there aren't any typos in the syntax and source files
// i.e. that this library will build correctly.

import result.Result;
using result.ResultTools;

class Test {
	public static function main() {
		var testitem : Result<Int,Bool> = Ok(1);

		trace(testitem.unwrap());
		trace(testitem.isOk());
		trace(testitem.isError());

		var item2: Result<Int,Bool> = Error(true);
		trace(item2.isOk());
		trace(item2.isError());
		trace(item2.unwrap());
	}
}
