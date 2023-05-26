// mainly to test that there aren't any typos in the syntax and source files
// i.e. that this library will build correctly.

import result.Result;
using result.ResultTools;

import utest.Assert;

class Test extends utest.Test {
	public static function main() {
		utest.UTest.run([
			new Test(),
		]);
	}

	public function testTools() {
		var testitem : Result<Int,Bool> = Ok(1);
		Assert.isTrue(testitem.isOk());
		Assert.isFalse(testitem.isError());
		Assert.equals(1, testitem.unwrap());
		Assert.raises(function() { testitem.unwrapError(); }, String);

		var item2: Result<Int,Bool> = Error(true);
		Assert.isFalse(item2.isOk());
		Assert.isTrue(item2.isError());
		Assert.raises(function() { item2.unwrap(); }, String);
		Assert.isTrue(item2.unwrapError());
	}
}
