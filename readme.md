# Result.hx
A simple return object based on Rust's [Result](https://doc.rust-lang.org/std/result/enum.Result.html) for easier error handling and making safe code easier.

## Usage
**Result-hx** was created to allow for "safer" returning of functions, and better management of errors. `Result<T,E>` has two type parameters, `T` is the main return type while `E` is the error type.

```haxe
import result.Result;

function getContent(file : String) : Result<String, String> {
	if (!sys.FileSystem.exists(file)) return Error('file $file does not exist');
	else return Ok(sys.io.File.getContent(file));
}

function main() {
	switch(getContent("afile.txt")) {
		case Error(error): Sys.println('error getting content: $error');
		case Ok(content): Sys.println('file content: $content');
	}
}
```

Some helper functions are included in `haxe.ds.ResultTools`

```haxe
using result.ResultTools;

function main() {
	var content = getContent("afile.txt");

	trace(content.isOk());

	Sys.println('file content: ${content.unwrap()}');

}
```
