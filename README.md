# Nilgorithms

<a href="https://gitmoji.dev">
  <img src="https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg" alt="Gitmoji">
</a>

Algorithms implemented in [Nim](https://nim-lang.org/) :crown:.

## Prologue

Hey there if you've stumbled on this file blame your inquisitiveness. Just kidding :joy: !

Welcome to `~/nilgorithms`. It's most likely that you've not heard of Nim (if you have, please [jump in](#contributing)) and that you're interested to learn about this language.

Cool then grab a coffee :coffee: and...

- If you've very little programming experience go to: https://narimiran.github.io/nim-basics/
- If you know other programming languages hop on to: https://github.com/nim-lang/Nim/wiki#nim-for-x-programmers

## Contributing

- Please follow the Nim Style Guide: https://nim-lang.org/docs/nep1.html
- All folder names in `snake_case`
- All file names in `camelCase`
  - Algorithms with multiple implementation techniques goes as `algorithmName_method`
    ```bash
    # example
    nilgorithms
      |-- math
        |-- checkPrime_iterative
        |-- checkPrime_recursive
    ```
- Preferred intend size is 2 spaces (not 4 :wink:)
- File docstring
```nim
#[
  Problem: Describe your problem
  Method: Describe prominent approach
  Contributor(s): Name (@github_handle), Name (@github_handle)
  Nim Version: 1.x.y
  Example 1
    Input

    Output
  ...
  Example N
    Input

    Output
]#
``` 
- Finally make apt changes to [index](/index.md) files

## Epilogue

Thanks :heart: for contributing!