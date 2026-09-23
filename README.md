# OldSchool

A collection of programs written in older programming languages: Commodore 64 BASIC, Fortran, and Pascal.

## Repository Layout

```
OldSchool/
├── C64/             Commodore 64 BASIC programs (.prg)
├── Fortran/         Fortran examples (fixed-form .f and free-form .f90)
└── PascalExamples/  Numbered Pascal tutorial programs (.pas)
```

## C64

These are tokenized Commodore 64 BASIC programs in `.prg` format. They include games and utilities:

| File | Description |
|------|-------------|
| `killercomet.prg` | *Killer Comet* game by Duane Later |
| `rocketcommand.prg` | *Rocket Command* game by Duane Later |
| `TANK.PRG` | *Tank vs. UFO* game |
| `balloon.prg` | "Up, Up, and Away!" balloon sprite demo |
| `BOUNCING.PRG`, `bounce.prg` | Bouncing ball demos |
| `ScreenSketch.prg` | Screen drawing program |
| `SampleSound.PRG`, `soundtest.prg` | SID sound chip experiments |
| `examsummary.prg` | Questionnaire/exam analyzer |
| `autosummary.prg` | Summary/tally utility |
| `Testing.PRG` | Test program |

### Running

Load them in a C64 emulator such as [VICE](https://vice-emu.sourceforge.io/):

```sh
x64sc C64/killercomet.prg
```

Or from within the emulator: `LOAD "KILLERCOMET",8` followed by `RUN`.

## Fortran

Each example comes in two versions: fixed-form (`.f`) and free-form (`.f90`).

| Program | Topic |
|---------|-------|
| `hello` | Hello World |
| `input` | Reading user input |
| `convert` | Input and arithmetic (pounds and pence to pence) |
| `average` | Computing an average |
| `evenodd` | Conditionals |
| `do` | `DO` loops |
| `while` | `DO WHILE` loops |
| `method` | Subroutines |
| `trig` | Trigonometric functions |
| `twoarray` | Two-dimensional arrays |
| `readdata` | Reading from a file (`mydata.txt`) |
| `writeFile` | Writing to a file (`myoutput.txt`) |

### Building

With [gfortran](https://gcc.gnu.org/fortran/):

```sh
cd Fortran
gfortran hello.f90 -o hello
./hello
```

Run `readdata` from the `Fortran/` directory so it can find `mydata.txt`.

## Pascal

A numbered series that introduces Pascal step by step:

1. `01_hello_world.pas`: Hello World
2. `02_variables_and_types.pas`: Variables and data types
3. `03_control_flow.pas`: Conditionals and loops
4. `04_procedures_and_functions.pas`: Procedures and functions
5. `05_arrays.pas`: Arrays
6. `06_strings.pas`: String handling
7. `07_records.pas`: Records
8. `08_pointers_linked_list.pas`: Pointers and a linked list
9. `09_file_io.pas`: Reading and writing text files
10. `10_sets_and_enums.pas`: Sets and enumerated types

### Building

With [Free Pascal](https://www.freepascal.org/):

```sh
cd PascalExamples
fpc 01_hello_world.pas
./01_hello_world
```
