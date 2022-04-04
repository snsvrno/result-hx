package haxe.ds;

enum Result<T,E> {
	Ok(t : T);
	Error(e : E);
}
