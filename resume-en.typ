#import "chicv.typ": *

#show: chicv
#set par(justify: true, leading: 0.7em)
#show heading.where(level: 2): set text(size: 12pt)
#set text(size: 9.5pt)

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
      Master's Degree in #emph[Computer Science and Technology] | #link("https://pascal-lab.net")[PASCAL Lab]. Tutor: #redact(mark: true)[Yue] Li | Focus on PL and Program Analysis. #linebreak()
      TA: *Principles and Techniques of Compilers* (Spring 2024)
    ]
    #cventry(
        tl: [Beihang University],
        tr: [2019.09 - 2023.06],
    )[
        Bachelor's Degree in #emph[Computer Science and Technology] | GPA 3.84/4.00, qualified for postgraduate recommendation. #linebreak()
        TA: *Programming in Practice* (Fall 2020), *Object-oriented Design and Construction* (Fall 2021, Spring 2022 | #link("https://scse.buaa.edu.cn/bkspy/bkspy/S_T_A_Rjftdbps_.htm")[S.T.A.R. team])
    ]

  == #fa[#briefcase] Work Experience

    #cventry(
        tl: [NVIDIA],
        bl: [OCG (Optimizing Code Generator) team, SW-GPU],
        br: [GPU Compiler LLVM Backend Intern],
        tr: [2025.02 - Present]
    )[
        - Participating in unifying the memory instruction vectorizer between NVIDIA GPU graphics compiler and NVVM, ensuring the graphics compiler's vectorizer aligns with LLVM upstream:
          - Designed an encoding scheme for *multi-address graphic memory instructions* based on the core algorithm of LLVM's memory vectorizer, implementing support for multiple GPU graphic memory instructions while minimizing divergence from upstream;
          - Added several GPU memory instruction vectorization optimizations, such as support for irregular memory instruction;
          - Contributed to a new pass for inferring memory access instruction offset alignment width, improving vectorizer performance.
    ]

    #cventry(
        tl: [#fa[#rust] #link("https://foundation.rust-lang.org/news/announcing-the-rust-foundation-s-2024-fellows/")[Rust Foundation Fellowship Program]],
        bl: [Rust Foudantion Fellowship (about 20 people globally)],
        br: [Project Fellow],
        tr: [2024.09 - 2025.09]
    )[
        - As one of the rust-analyzer (official Rust IDE) *maintainers*, ranked in the *top 1%* of contributors; participated in issues handling, PR reviews, and maintenance work across most project modules:
          - Implemented features like control flow highlighting, snapshot test updates, and participated in numerous bug fixes, enhancing IDE capabilities in code understanding and auto-generation;
          - Wrote a *SIMD* implementation for the unicode line breaking module for ARM NEON, achieving a *6.5x* speedup;
          - *Emergency incident response for v0.3.1992*: 4 hours after release, the community discovered a critical bug causing resource exhaustion. I identified the issue *in 3 hours* and designed a new algorithm as fix. This emergency fix controlled the incident's impact, preventing disruptions for global Rust developers.
        - Contributing to other projects in the Rust language community, such as rust-clippy;
    ]

  == #fa[#trophy] Awards

  - 2022 *National Scholarship* (ranked 1/195 in the major), *Outstanding Graduate* of Beihang University;
  - *First Prize* in the 2021 #link("https://compiler.educg.net")[NSCSCC Compilation System Design Competition] (Huawei Bisheng Cup), ranking 2nd overall;
  - *First Prize* in the Lanqiao Cup C++ Programming Contest (Beijing Division) and *Third Prize* in the National Finals;
  - Additionally awarded over ten provincial and university-level awards and scholarships.

  == #fa[#project-diagram] Projects

  #cventry(
      tl: [Vizsla],
      bl: [Modern IDE for Chip Frontend Design · Master's Thesis Project],
      br: [Rust / SystemVerilog],
      tr: [#ghrepo("roife/vizsla", icon: true) (WIP)],
  )[
      - Implemented a *semantic analysis framework* and IDE infra for SV, aiming to equip chip design with modern IDE features;
      - Based on an *incremental computation* architecture, designed and implemented an incremental analysis IR and specialized passes for efficient and accurate on-demand analysis;
      - Project achieves *industry-leading standards* in functionality, performance, and usability: completed *dozens of* modern IDE features for SystemVerilog including code navigation, semantic refactoring, completion, and diagnostics with *millisecond-level* latency;
      - Based on the Language Server Protocol, ensuring compatibility with VS Code, Emacs, NeoVim, and other mainstream editors.
  ]

  #cventry(
      tl: [Ailurus],
      bl: [Experimental Programming Language and Toolchain Design · Personal Interest Project],
      br: [Rust],
      tr: [#ghrepo("roife/ailurus", icon: true) (WIP)],
  )[
      - Based on *Martin-Löf type theory*, supporting *dependent types*, dependent pattern matching, and inductive datatypes. Implements propositional equality and uses Normalization by Evaluation for equivalence checking, enabling simple theorem proving;
      - Features *typeclass-based ad-hoc polymorphism* with *operator overloading* for flexible code reuse;
      - Implemented a *module system* for namespace management and encapsulation, addressing code organization in large projects;
      - Serves as an experimental platform to explore collaborative design architectures for modern programming language toolchains (compilers, IDEs), aiming to enhance development efficiency and maintainability.
  ]

  #cventry(
      tl: [Ayame],
      bl: [Compiler from SysY (C subset) to ARMv7 · Bisheng Cup Competition Project],
      br: [Java / LLVM-IR / ARM],
      tr: ghrepo("No-SF-Work/ayame", icon: true),
  )[
      - Collaborative project, primarily responsible for backend optimizations on Machine IR, including *iterative register coalescing*, *instruction scheduling*, dead code elimination, and peephole optimizations. Also contributed to syntax tree visitor;
      - Handled project testing and DevOps, setting up workflows with Docker and GitLab CI, and writing Python for automated testing;
      - The project, built from scratch, featured a complete compiler pipeline (parsing to code generation) with extensive SSA IR and Machine IR optimizations. It ranked *2nd overall* in the competition, achieving *1st place in nearly half of the testcases* and outperforming `gcc -O3` and `clang -O3` on 1/3 of the examples.
  ]

  #cventry(
      tl: [LLVM-Lite],
      bl: [Lightweight Edge-side Compiler for Neural Network Operators · Undergraduate Thesis Project],
      br: [C++ / LLVM-IR],
      tr: ghrepo("roife/llvm-lite", icon: true),
  )[
      - Aimed to utilize known *shape information* from edge inference devices for *secondary optimization* of deep learning operators, reducing runtime spatial and temporal overhead;
      - Included a *lightweight compiler* on inference devices and *trimming* work of the LLVM Codegen module. For target workloads, implemented optimizations such as *SCCP* and *DCE*, minimize overhead while maximizing results;
      - Received *excellent* evaluation for the thesis. Successfully reduced inference time by 6% and binary file size by 38% for convolution and softmax operators; implemented *parse-time optimizations* that reduced compilation time by 60% and memory usage by 60%.
  ]

  #cventry(
      tl: [#fa[#code.branch] Open Source Contributions],
  )[
      - *#fa[#rust] Rust Organization* (#link("https://www.rust-lang.org/governance/teams/compiler#team-rust-analyzer-contributors", [rust-analyzer contributors team])) member, primarily maintaining #ghrepo("rust-lang/rust-analyzer", icon: true);
      - Also contributed to #ghrepo("rust-lang/rust", icon: true), #ghrepo("rust-lang/rust-clippy", icon: true), #ghrepo("rust-lang/rustup", icon: true), #ghrepo("rust-lang/rust-mode", icon: true);
      - #ghrepo("llvm/llvm-project", icon: true), #ghrepo("clangd/vscode-clangd", icon: true), #ghrepo("MikePopoloski/slang", icon: true), #ghrepo("google/autocxx", icon: true), #ghrepo("yuin/goldmark", icon: true), #ghrepo("moonbitlang/tree-sitter-moonbit", icon: true), #link("https://github.com/roife")[more projects on GitHub].
  ]

  #cventry(
      tl: [Other Personal Projects],
  )[
      - #ghrepo("roife/firefly", icon: true) (Python) Neural network training and inference framework with an MNIST classifier implemented;\
      - #ghrepo("Caniformia/HangGai", icon: true) (RoR / SwiftUI, collaborative) Learning app for BUAA's course, available on the #link("https://apps.apple.com/us/app/%E8%88%AA%E6%A6%82-hanggai/id1570322898?l=zh-Hans-CN")[App Store];
  ]

  == #fa[#laptop.code] Skills

    - *Programming Languages*: Not tied to any specific language. Especially proficient in C, C++, Rust, Java, Python, JavaScript/TypeScript, and Verilog/SystemVerilog; have also worked with Ruby, Swift, OCaml, Haskell, Coq, Agda, etc.
    - *PL Theory*
      - Solid foundation in *type theory*, formal semantics, formal languages & automata, and the theory of computation; experienced with interactive theorem provers (e.g., Coq, Agda).
      - Knowledge of the theory and implementation of *type systems* (e.g., Hindley-Milner, System F, Dependent Types).
      - Familiar with common *static program analysis* algorithms (e.g., data-flow analysis, CFA, IFDS, pointer analysis with varying sensitivities).
    - *Compiler Design*: *3 YoE*, proficient in the full compiler pipeline from parsing to code generation, with an emphasis on *compiler optimizations*
      - Experience implementing language features across multiple paradigms, including bidirectional type checking and module systems.
      - Familiar with various *IRs* (e.g., SSA, MLIR, CPS) and optimizations across stages, such as Mem2Reg, SCEV, register allocation, etc.
      - In-depth knowledge of LLVM and LLVM-IR; have read significant portions of its codebase and authored several analysis and optimization passes.
    - *IDE Development*: *2 YoE*. Familiar with IDE architectures based on *incremental computation* (esp. rust-analyzer and clangd); versed in the LSP and plugin development for VS Code, Emacs, and other editors.
    - *Computer Architecture*: Familiar with ARM and x86 ISAs; understanding of out-of-order execution, multi-core communication, etc.; knowledgeable about NVIDIA GPU architecture.
    - *Development Environment*: Proficient in Emacs; comfortable working on macOS and Linux; adept at leveraging generative AI tools to enhance productivity.

  == #fa[#th.list] Misc

    - *Club*: Served as President of the Beihang OpenAtom Open Source Club, organizing multiple technical sharing and exchange events;
    - *Languages*: Chinese (native), English.
