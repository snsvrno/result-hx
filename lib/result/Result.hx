package result;

/**
 * Wrapper enum used for safe error handling.
 *
 * ```haxe
 * function getContent(filename : String) : Result<String, String> {
 * 	 if (!sys.FileSystem.exists(file)) return Error('file $file does not exist');
 * 	 else return Ok(sys.io.File.getContent(file));
 * }
 * ```
 */
enum Result<T,E> {
	/*** represents as sucessful operation, with the desired value. */
	Ok(t : T);
	/*** represents a failed operation, with detailed error information. */
	Error(e : E);
}
