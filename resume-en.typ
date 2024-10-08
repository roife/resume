#import "chicv.typ": *

#show: chicv

= #redact(alter: "roife")[placeholder]

  #fa[#phone] #redact(mark: true)[00000000000] |
  #fa[#envelope] roifewu\@gmail.com |
  #fa[#github] #link("https://github.com/roife")[roife] |
  #fa[#globe] #link("https://roife.github.io")[roife.github.io] |
  #fa[#location-arrow] Hong Kong

  == Education

    #cventry(
        tl: [Nanjing University],
        tr: [2023.09 - 2026.06 (expected)],
        bl: [Master's Degree in #emph[Computer Science and Technology] | #link("https://pascal-lab.net")[Pascal Lab]. Tutor: #redact(mark: true)[Place] Li | Focus on PL, program analysis and HDL],
    )[]
    #cventry(
        tl: [Beihang University],
        tr: [2019.09 - 2023.06],
        bl: [Bachelor’s Degree in #emph[Computer Science and Technology] | GPA 3.84/4.00],
    )[]

  == Work Experience

    #cventry(
        tl: [Rust Foundation Fellowship Program],
        tl_comments: redact(alter: "")[ (10 recipients worldwide)],
        tr: [2024.09 - 2025.06 (expected)],
    )[
        - *Contributing to rust-analyzer* (the official Rust IDE)
          - Ranked *19/970* in contributors; resolved *over 50 issues* and contributing to multiple modules (e.g. *semantic analysis*, etc.), improving robustness of the project. Also introduced several new features (e.g. *control flow navigation*, etc.);
          - Implemented a *SIMD* version of the line-breaking algorithm, leading to a *6.5x* speedup for this module on ARM;
          - *Resolved a P0 incident in v0.3.1992*. 4 hours after the release, the community encountered a critical bug that drained resources and blocked processes. I identified the issue *in 3 hours* and designed a new algorithm as fix. This emergency fix mitigated the incident, preventing widespread disruptions for Rust users and improving project stability.
        - *Open-source community maintenance*: Including meeting discussions, bug fixes, PR reviews, and more.
    ]

  == Awards

  - 2022 *National Scholarship* (ranked 1/195 in the major), *Outstanding Graduate* of Beihang University
  - *First Prize* in the #link("https://compiler.educg.net")[NSCSCC Compilation System Design Competition] (Huawei Bisheng Cup) 2021, ranking 2nd overall.
  - Additionally awarded over ten provincial and university-level awards and scholarships
  
  == Projects

  #cventry(
      tl: [Vizsla],
      tl_comments: [, a modern Verilog/SV IDE for hardware development (Rust / SystemVerilog)],
      tr: [(In development)],
  )[
      - (*Independently Developed*) Designed the core architecture of the IDE, the incremental computation processes, intermediate representation, semantic analysis module, etc. Also implemented most of the IDE functionalities.
      - Aimed to equip chip design with modern IDE features (e.g. *code navigaiton*, *completion*, etc.) to enhance productivity.
      - Based on the LSP, built an *incremental semantic analysis framework*#redact(alter: "")[, achieving world-class performance and usability].
  ]

  #cventry(
      tl: [LLVM-Lite],
      tl_comments: [, a lightweight edge-side compiler for neural network operators (C++ / LLVM / ARM)],
      tr: ghrepo("roife/llvm-lite", icon: true),
  )[
      - (*Independently Developed*) Huawei research project, received an excellent evaluation as my undergraduate thesis. 
      - Utilizing shape information of neural networks to perform optimizations on operators, reducing its runtime cost.
      - Successfully *reduced runtime by 6%* and *target file size by 38%* of the neural network operators in test cases.
  ]

  #cventry(
    tl: "Ayame",
    tl_comments: [, project of the Huawei Bisheng Cup, a compiler of a C-subset (Java / LLVM / ARM)],
    tr: ghrepo("No-SF-Work/ayame", icon: true),
  )[
    - (*Co-author*) Implemented the graph-coloring register-allocation, arch-specific optimizations, the local evaluator and CI;
    - The project ranked *1st in nearly half of the testcases* and outperformed `gcc -O3` and `clang -O3` on 1/3 of the examples.
  ]

  #cventry(
        tl: [Open-source contributions],
    )[
        - *Rust-lang Member*, rust-analyzer contributors team. Mainly worked on #ghrepo("rust-lang/rust-analyzer", icon: false). Also contributed to #ghrepo("rust-lang/rust-clippy", icon: false), #ghrepo("rust-lang/rustup", icon: false), #ghrepo("rust-lang/rust-mode", icon: false);
        - #ghrepo("llvm/llvm-project", icon: false), #ghrepo("clangd/vscode-clangd", icon: false), #ghrepo("google/autocxx", icon: false), #ghrepo("yuin/goldmark", icon: false) and #link("https://github.com/roife")[more on my GitHub].
    ]

  == Skills

  - #emph[Programming Languages:] Not limited to specific language. Especially proficient in C, C++, Java, Rust, Python, Verilog/SystemVerilog. Comfortable with Ruby, Swift, JavaScript, OCaml, Coq, Haskell, etc.
  - #emph[PL Theory:] Familiar with *type systems*, formal semantics, formal verification and theory of computation.
  - #emph[Compilers / IDE:] *4 YoE*. Proficient in compilation optimizations and various IR (like SSA, CPS, etc.). Knowledgeable about LLVM. Familiar with IDE based on LSP and *incremental computation*.
  - #emph[Program Analysis:] *2 YoE*. Familiar with static analysis algorithms (e.g. dataflow analysis, pointer analysis, etc.).
  - #emph[System Programming:] Familiar with Arch and OS, capable of low-level development and debugging.
  - #emph[Tools:] Proficient in Emacs; comfortable working in macOS and Linux; skilled in leveraging AI.

  == Misc

  - *Languages*: Chinese (native), English (fluent)
  - *Teaching Assistant*: _Programming in Practice_ (Fall 2020), _Object-oriented Design and Construction_ (Fall 2021, Spring 2022), _Principles and Techniques of Compilers_ (Spring 2024).
