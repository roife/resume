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
        - TA for _Principles and Techniques of Compilers_ (Spring 2024)
    ]
    #cventry(
        tl: [Beihang University],
        tr: [2019.09 - 2023.06],
        bl: [Bachelor’s Degree in Computer Science and Technology],
    )[
        - GPA 3.84/4.00. Awarded the *National Scholarship* 2022 (top 0.2% national-wide) and *Outstanding Graduate of BUAA*.
        - Won *the First Prize* in the #link("https://compiler.educg.net")[NSCSCC Compilation System Design Competition] 2021, ranking 2nd overall.
        - TA for _Programming in Practice_ (Fall 2020), _Object-oriented Design and Construction_ (S.T.A.R, Fall 2021, Spring 2022).
    ]

  == Projects

    #cventry(
        tl: [Vizsla],
        tl_comments: [, a modern Verilog/SV IDE for hardware development.],
        tr: [(In development)],
    )[
        - (_Lab Project_) *Project Leader* and *Primary Developer*, designed the architecture and IRs, and implemented most of features.
        - Enabling real-time parsing and program analysis through *incremental computation* to provide features like code navigation, refactoring, code completion, etc..
    ]

    #cventry(
        tl: [LLVM-Lite],
        tl_comments: [, a lightweight edge-side LLVM IR compiler for neural network operators.],
        tr: ghrepo("roife/llvm-lite", icon: true),
    )[
        - (_Lab project_, funded by Huawei) *Independently Designed and Developed* for my undergraduate thesis.
        - Utilizing shape information of neural network operators to perform secondary optimizations on offline-compiled LLVM IR, to reduce the temporal and spatial overhead during operator runtime.
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
        - Rust-lang: #ghrepo("rust-lang/rust-analyzer", icon: true), #ghrepo("rust-lang/rust-clippy", icon: true), #ghrepo("rust-lang/rustup", icon: true) ;
        - LLVM Foundation: #ghrepo("llvm/llvm-project", icon: true), #ghrepo("clangd/vscode-clangd", icon: true), #ghrepo("llvm/clangd-www", icon: true) ;
        - #ghrepo("moonbitlang/tree-sitter-moonbit", icon: true), #ghrepo("yuin/goldmark", icon: true), #ghrepo("doomemacs/doomemacs", icon: true) and #link("https://github.com/roife")[more on my GitHub].
    ]

  == Skills

    - *Programming Languages*: Not limited to specific language. Especially proficient in C, C++, Java, Rust, Python, Verilog/SystemVerilog. Comfortable with Ruby, Swift, JavaScript, OCaml, Coq, Haskell, etc.
    - *PL Theory*: Familiar with type system, formal semantics, formal verification and theory of computation.
    - *Compiler*: Proficient in compilation optimizations and various IR such as SSA, etc. Capable of independently designing and implementing a complete compiler and interpreter. Knowledgeable about LLVM.
    - *IDE*: Knowledgeable in IDE based on LSP and incremental computation, especially familiar with rust-analyzer and clangd.
    - *Program Analysis*: Familiar with static analysis such as dataflow analysis, pointer analysis, IFDS, etc.
    - *Web & Mobile*: Full-stack. Skilled in Vue, RoR, Docker, PostgreSQL, Redis; familiar with SwiftUI.
    - *Tools*: Proficient in Emacs; comfortable working in macOS and Linux; skilled in leveraging AI.

  == Misc

    - *Languages*: Chinese (native), English (fluent)
