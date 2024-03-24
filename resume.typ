#import "chicv.typ": *

#show: chicv

= Roife

  #fa[#envelope] roifewu\@gmail.com |
  #fa[#github] #link("https://github.com/roife")[roife] |
  #fa[#globe] #link("https://roife.github.io")[roife.github.io]

  == Education

    #cventry(
        tl: [Nanjing University],
        tr: [2023.09 - 2026.06 (expected)],
        bl: [Master's Degree in Computer Science and Technology],
    )[
        - Member of #link("https://pascal-lab.net")[Pascal Research Group], focus on PL and program analysis.
        - Teaching Assistant for _Principles and Techniques of Compilers_ (Spring 2024)
    ]
    #cventry(
        tl: [Beihang University],
        tr: [2019.09 - 2023.06],
        bl: [Bachelor’s Degree in Computer Science and Technology],
    )[
        - GPA: 3.84/4.00. Awarded the *National Scholarship* 2022 and named *Outstanding Graduate of BUAA*.
        - Won *the First Prize* in the #link("https://compiler.educg.net")[NSCSCC Compilation System Design Competition] 2021, ranking 2nd overall.
        - Teaching Assistant for _Programming in Practice_ (Fall 2020), _Object-oriented Design and Construction_ (Fall 2021, Spring 2022).
    ]

  == Projects

    #cventry(
        tl: [Vizsla],
        tl_comments: [, a modern Verilog/SV IDE for hardware development.],
        tr: [(In development)],
    )[
        - (_Lab Project_) *Primary Developer*, designed the architecture of the IDE and implemented semantic analysis on Verilog/SV.
        - Enabling real-time low-latency parsing and semantic analysis through *incremental computation*.
        - Based on language server protocol to provide features like code navigation, refactoring, code completion, etc..
    ]

    #cventry(
        tl: [LLVM-Lite],
        tl_comments: [, a lightweight edge-side LLVM IR compiler for neural network operators.],
        tr: ghrepo("roife/llvm-lite", icon: true),
    )[
        - (_Lab project_, funded by Huawei) *Independently Developed* for my undergraduate thesis.
        - Utilizing shape information to perform secondary optimizations on offline-compiled LLVM IR format neural network operators, to reduce the temporal and spatial overhead during operator runtime.
    ]
  
    #cventry(
        tl: [Hanggai],
        tl_comments: [, an educational app for the course _Introduction to Aeronautics and Astronautics_.],
        tr: ghrepo("Caniformia", icon: true),
    )[
        - (_Collaborative Project_) *Collaborator*, participated in the development of #link("https://apps.apple.com/us/app/航概-hanggai/")[iOS app] using SwiftUI and web backend using RoR.
    ]

     #cventry(
        tl: [Open-source contributions],
    )[
        #ghrepo("rust-lang/rust-analyzer", icon: false) (active, 50+ commits), #ghrepo("moonbitlang/tree-sitter-moonbit", icon: false) (active, 20+ commits), #ghrepo("rust-lang/rust-clippy", icon: false), #ghrepo("yuin/goldmark", icon: false), #ghrepo("doomemacs/doomemacs", icon: false) and #link("https://github.com/roife")[more on GitHub]
    ]

  == Skills

    - *Programming Languages*: Not limited to specific language. Especially proficient in C, C++, Java, Rust, Python, Verilog/SV. Comfortable with Ruby, Swift, JavaScript, OCaml, Coq, Haskell, etc.
    - *PL Theory*: Familiar with type systems, formal semantics and formal verification.
    - *Compiler*: Proficient in compilation optimizations and various program representations such as SSA, etc. Familiar with parsers and interpreters development; knowledgeable about LLVM.
    - *IDE*: Knowledgeable in IDE based on incremental computation, especially familiar with rust-analyzer; proficient in LSP.
    - *Program Analysis*: Familiar with static analysis algorithm such as pointer analysis, IDFS, etc; proficient in analysis on Java.
    - *Web & Mobile*: Full-stack. Skilled in Vue, RoR, Docker, PostgreSQL, Redis; familiar with SwiftUI.
    - *Tools*: Proficient in Emacs; comfortable working in macOS and Linux; skilled in leveraging AI.

  == Misc

    - *Languages*: Chinese (native), English (fluent)
