## Objc/Swift Framework Demonstration

This is a sample project with a custom framework target, `FooBarKit`, which has both Swift class (`Foo`) and Objective-C class (`Bar`), and the main app employs both classes from a Swift app. Both `Foo` and `Bar` employ protocol-delegate pattern, illustrating that the protocols are correctly captured by the framework.

This project doesn't employ any custom `module.modulemap` files. I just created a Swift framework and then added the following line to the umbrella header and marked `Bar.h` with a target membership of `public`.

    #import "Bar.h"

This was developed in Xcode 8.3.3 with iOS 10.3. I also tested it with macOS target (not included here) and that also worked, too.

See https://stackoverflow.com/questions/44975116/protocol-declared-in-objective-c-framework-is-not-visible-in-swift.

Rob Ryan </br>
7 July 2017

## License

Copyright &copy; 2017 Robert Ryan. All rights reserved.

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
