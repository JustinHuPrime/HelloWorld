# HelloWorld

This is hello world from scratch.

First, `crt0.s` loads the appropriate parameters from the operating system into the right registers. Next, inline assembly is used to make a Linux `write(2)` system call, displaying "Hello, world!". Finally, an `exit(2)` system call is made with the return value from main.
