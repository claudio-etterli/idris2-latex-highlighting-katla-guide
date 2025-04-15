# Short Guide for Latex Reports with Katla-highlighted Idris2 code

This very short guide should help highlight idris2 code inside a latex project.
If latex and all needed packages are installed, the highlighting should work on all systems and programs.
To keep it simple, a minimalistic latex project is set up in `main.tex`

**Tested Systems / Programs:**

| **System** | **Program**          |
| -          | -                    |
| Ubuntu     | TexLive              |
| Windows    | VSC / Latex Workshop |
| (Windows)  | Firefox / Overleaf   |


## Prerequisites

- katla
    - install with the idris2-pack `pack install-app katla`

## Instructions

1. Generate the preamble and save it to a .tex file
    - `katla latex preamble > preamble.tex`
    - this will take the default color scheme from the katla library
    - for a more standard latex project, extract the packages `xcolor` and `fancyvrb` and insert it to the main.tex file
    - a preset can be found in this repository, the packages are already transferred
2. Typecheck the idris code to get the .ttm version of the code
    - inside the idris2 project run `pack typecheck codeExample.ipkg`
3. Convert the code (.idr and .ttm) to a .tex format
    - `katla latex codeExample/src/CodeExample.idr codeExample/build/ttc/2025021200/CodeExample.ttm > codeSnippets/convertedCode.tex`
4. Inside the generated codeSnippet, remove the preamble part, `\begin{document}` / `\end{document}` and `\begin{Verbatim}[commandchars=\\\{\}]` / `end{Verbatim}`
5. Include the generated latex code where the code should be displayed: `\Katla{codeSnippets/convertedCode}`
    - if Overleaf is used, create the necessary folders and files and insert the generated code
6. Start the latex complier and pdf generator

## Customising

It is possible to use other colors for the keywords, function names, etc. by modifying the preamble.tex's standard values.

Further, there is a second main and preamble file for generating code with lined numbers.
