#import "chicv.typ": *

#show: chicv
#set par(justify: true, leading: 0.7em)
#set list(marker: ([•], [‣]), spacing: 0.65em)

#let private_info = json("resume-private/private_info.json")
#let resume_name = private_info.name_en
#let resume_phone = private_info.phone

= #redact(alter: "roife")[#resume_name]

  #fa[#phone] #redact(mark: true)[#resume_phone] |
  #fa[#envelope] roifewu\@gmail.com |
  #fa[#github] #link("https://github.com/roife")[roife] |
  #fa[#globe] #link("https://roife.github.io")[roife.github.io]

  == #fa[#graduation-cap] Education

    #cventry(
        tl: [Nanjing University],
        tr: [2023.09 - 2026.06 (expected)],
    )[
      M.S. in #emph[Computer Science and Technology] | #link("https://pascal-lab.net")[PASCAL Lab]. Advisor: #redact(mark: true)[Yue] Li | Research: *PL* and *program analysis*. #linebreak()
      Teaching Assistant: *Principles and Techniques of Compilers* (Spring 2024)
    ]
    #cventry(
        tl: [Beihang University],
        tr: [2019.09 - 2023.06],
    )[
        B.S. in #emph[Computer Science and Technology] | GPA: 3.84/4.00; awarded *National Scholarship*, *Outstanding Graduate*, and First Prize in the 2021 #link("https://compiler.educg.net")[NSCSCC Compilation System Design Competition]. #linebreak()
        Teaching Assistant: *Programming in Practice* (Fall 2020), *Object-Oriented Design and Construction* (Fall 2021, Spring 2022)
    ]

  == #fa[#briefcase] Work Experience

    #cventry(
        tl: [Tencent],
        bl: [Security Department III],
        br: [Security Technology (Qingyun Program)],
        tr: [2026.05 - Present],
    )[]

    #cventry(
        tl: [NVIDIA],
        bl: [OCG (Optimizing Code Generator) team],
        br: [GPU Compiler LLVM Backend Intern],
        tr: [2025.02 - 2025.10]
    )[
        - Merged NVIDIA GPU graphics and NVVM memory-instruction *vectorizers*, aligning with LLVM upstream:
          - Encoded *multi-address graphics memory instructions* to reuse LLVM memory-vectorizer logic;
          - Added graphics-instruction alias analysis by tracing BasicAA and SCEVAA behavior on new intrinsics;
          - Improved LLVM alignment inference by solving GCDs over SCEV expressions for loop induction variables;
          - Implemented *10+* graphics-memory vectorization optimizations, including *irregular access sequence padding*, raising vectorization success rate by *40%*;
        - Maintained the graphics compiler and fixed bugs in Vectorization, SCEV, and related optimizations;
    ]

    #cventry(
        tl: [#link("https://foundation.rust-lang.org/news/announcing-the-rust-foundation-s-2024-fellows/")[Rust Foundation Fellowship Program]],
        bl: [Rust Foundation Fellowship (approximately 20 fellows globally)],
        br: [Project Fellow],
        tr: [2024.09 - 2025.09]
    )[
        - #link("https://www.rust-lang.org/governance/teams/compiler#team-rust-analyzer-contributors", [#fa[#rust] *Rust-lang Organization*]) member (rust-analyzer-contributors-team) and *maintainer* of #ghrepo("rust-lang/rust-analyzer", icon: false), the official Rust IDE; ranked in the *top 1%* of contributors, triaged issues, reviewed PRs, and helped maintain rust-clippy;
        - Shipped control-flow highlighting, snapshot-test updates, and bug fixes across code understanding, code generation, and related IDE workflows;
        - Implemented a NEON *SIMD* version of the Unicode line-breaking module, achieving a *6.5x* speedup on ARM;
        - *v0.3.1992 incident response*: Within *3 hours*, replaced a flawed dependency-graph search algorithm and resolved a severe resource-exhaustion bug discovered four hours after release.
    ]

  == #fa[#project-diagram] Projects

    #cventry(
        tl: [VIDE],
        bl: [Modern IDE for Chip Frontend Design · Master's Thesis Project],
        br: [Rust / SystemVerilog],
        tr: [#link("https://vide.pascal-lab.net")[VIDE]],
    )[
        - Built a SystemVerilog *semantic analysis framework* and IDE infrastructure for modern chip-design workflows;
        - Designed an incremental analysis IR and pass pipeline on top of an *incremental computation* architecture, enabling accurate analysis without full recomputation;
        - Delivered *10+* SystemVerilog IDE features, including navigation, refactoring, and completion, with *millisecond-level* latency via incremental semantic analysis; supports VS Code, Emacs, and other LSP editors;
    ]

    #cventry(
        tl: [Ailurus],
        bl: [Programming Language and Toolchain Design Exploration · Personal Interest Project],
        br: [Rust],
        tr: [#ghrepo("roife/ailurus")],
    )[
        - Based on *Martin-Löf type theory*; supports *dependent types*, dependent pattern matching, inductive datatypes, equality proofs, and NbE;
        - Implements *typeclass-based* ad-hoc polymorphism, *operator overloading*, and a *module system* for namespaces;
        - Experimental platform for co-designing modern programming-language toolchains, including compilers and IDEs, for better efficiency and maintainability.
    ]

    #pagebreak()

    #cventry(
        tl: [#fa[#code.branch] Open Source Contributions],
    )[
        - *#fa[#rust]* Maintainer of #ghrepo("rust-lang/rust-analyzer", icon: false), the official Rust IDE / language server; contributed to the #link("https://github.com/rust-lang/rust")[Rust compiler], #link("https://github.com/rust-lang/rust-clippy")[clippy], #link("https://github.com/rust-lang/rustup")[rustup], and #link("https://github.com/rust-lang/rust-mode")[rust-mode];
        - Other OSS: #link("https://github.com/llvm/llvm-project")[LLVM], #link("https://github.com/clangd/vscode-clangd")[vscode-clangd], #link("https://github.com/LuaLS/lua-language-server")[lua-language-server], #link("https://github.com/google/autocxx")[autocxx], #link("https://github.com/yuin/goldmark")[goldmark], #link("https://github.com/moonbitlang/tree-sitter-moonbit")[tree-sitter-moonbit], and #link("https://github.com/roife")[more on GitHub].
    ]

  == #fa[#laptop.code] Skills

    - *Programming Languages*: Proficient in C, C++, Rust, Java, Python, JavaScript/TypeScript, Verilog/SystemVerilog, and EmacsLisp; also used Ruby, Swift, OCaml, Haskell, and Coq;
    - *Programming Language Theory*: Formal semantics, type theory, computation models, and automata; experience with proof assistants including Coq;
      - (*Type Systems*) Theory and implementation of Hindley-Milner, subtyping, System F, and dependent types;
      - (*Static Analysis*) *4 YoE* with theory and implementation of abstract interpretation, data-flow/control-flow/pointer analysis, and CodeQL/Datalog interpreters.
    - *Compiler Design*: *3 YoE*. End-to-end compiler development from parsing to codegen; familiar with *IRs* such as SSA, DBI;
      - (*Language Implementation*) Object-oriented/functional languages; bidirectional type checking and related features;
      - (*IDE Development*) *3 YoE* with rust-analyzer/clangd, *LSP*, and *incremental computation* architecture;
      - (*Compiler Optimization*) *3 YoE* with middle-end/backend optimization, including Mem2Reg, GVN, RegAlloc, and List Scheduling; familiar with *LLVM* internals, LLVM-IR, and MLIR;
    - *Application Development*: Ruby on Rails, Django, SwiftUI; PostgreSQL, Redis; Docker, CI/CD, and DevOps.
    - *Development Environment*: Proficient in Emacs / VS Code on macOS / Linux; skilled at using generative AI tools to improve efficiency.

  == #fa[#th.list] Misc

    - *Talks*: _Exploring rust-analyzer: from Incremental Computation to Modern IDE_ (RustChinaConf 2025)
