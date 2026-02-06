# Assembly is ass

Small NASM examples for practicing register moves, arithmetic, and memory access.

## Web-based playground

Open the lightweight playground to load any example `.asm` file from this repo or
upload your own file.

1. Start a local web server from the repo root (required so the browser can fetch the `.asm` files).
   ```bash
   python3 -m http.server 8000
   ```
2. Open the playground in your browser:
   `http://localhost:8000/playground/index.html`
3. Choose an example from the dropdown or upload your own `.asm` file.

## Examples

Each example links to the playground with the file pre-loaded.

| File | What it shows | Playground |
| --- | --- | --- |
| `test0.asm` | Move a 32-bit immediate into `eax`, split into byte registers, then exit. | [Open](playground/index.html?file=test0.asm) |
| `test1.asm` | Register shuffling between `eax`, `ah`, `al`, and `bx`, plus a left shift. | [Open](playground/index.html?file=test1.asm) |
| `test2.asm` | Swap byte registers (`al`, `ah`, `bl`, `bh`) to practice byte-level moves. | [Open](playground/index.html?file=test2.asm) |
| `test3.asm` | Build a 32-bit value by shifting and loading `ah`/`al`. | [Open](playground/index.html?file=test3.asm) |
| `test4.asm` | Basic arithmetic with 32-bit registers and carry wrap-around. | [Open](playground/index.html?file=test4.asm) |
| `test5.asm` | 64-bit arithmetic with `.data` loads and `syscall` exit. | [Open](playground/index.html?file=test5.asm) |
| `test6.asm` | 8-bit and 16-bit addition with overflow behavior. | [Open](playground/index.html?file=test6.asm) |
| `dword1.asm` | 32-bit addition and register reuse with a wrap-around example. | [Open](playground/index.html?file=dword1.asm) |
| `qword1.asm` | 16-bit/32-bit adds to show how partial-register math affects `edi`. | [Open](playground/index.html?file=qword1.asm) |
| `memadd1.asm` | Load a 32-bit value from `.data`, add an immediate, then exit. | [Open](playground/index.html?file=memadd1.asm) |
| `memadd2.asm` | 64-bit memory loads plus 16-bit register moves and shifts. | [Open](playground/index.html?file=memadd2.asm) |
