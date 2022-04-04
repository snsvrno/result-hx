package haxe.ds;

class ResultTools {

	/**
	 * returns the inside type if `Ok`, will thrown an error if `Error`
	 */
	inline public static function unwrap<T,E>(result : Result<T,E>) : T {
		switch(result) {
			case Ok(r): return r;
			case Error(e): throw 'cannot unwrap result with error: $e';
		}
	}

	/**
	 * checks if the `Result` is `Ok`
	 */
	inline public static function isOk<T,E>(result : Result<T,E>) : Bool {
		switch(result) {
			case Ok(_): return true;
			case Error(_): return false;
		}
	}

	/**
	 * checks if the `Result` is `Error`
	 */
	inline public static function isError<T,E>(result : Result<T,E>) : Bool return !isOk(result);

}
