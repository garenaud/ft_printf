# ft_printf

## Description
This project is a recreation of the libc's `printf` function. [read the subject](https://github.com/garenaud/ft_printf/blob/master/printf.subject.pdf "printf subject")

## Features
- Handles the following conversions: `c`, `s`, `p`, `d`, `i`, `u`, `x`, `X`, `%`
- Handles any combination of the following flags: `-`, `0`, `.`

## Usage
To compile, run `make`. This will compile `libprintf.a`. To use, include `ft_printf.h` (located in the `includes` directory) and use just like `printf`:

```c
#include "ft_printf.h"

int main()
{
    ft_printf("Hello, %s!", "world");
    return (0);
}
```

## Testing
Run `make test` to run the tests.
