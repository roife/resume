#import "chicv.typ": *

#show: chicv

= Roife

  #fa[#envelope] roifewu\@gmail.com |
  #fa[#github] #link("https://github.com/roife")[roife] |
  #fa[#globe] #link("https://roife.github.io")[roife.github.io]

  == 教育背景

    #cventry(
        tl: [南京大学],
        tr: [2023.09 - 2026.06（预计）],
        bl: [硕士，计算机科学与技术],
    )[
        - #link("https://pascal-lab.net")[Pascal 实验室]成员，主要研究方向为程序语言，程序分析和 IDE 开发
        - 助教：_编译原理与技术_（2024 春）
    ]
    #cventry(
        tl: [北京航空航天大学],
        tr: [2019.09 - 2023.06],
        bl: [本科，计算机科学与技术],
    )[
        - GPA 3.84/4.00，获 2022 年*国家奖学金*（全国仅 0.2%），北京航空航天大学*优秀毕业生*
        - 在 2021 年#link("https://compiler.educg.net")[全国大学生计算机系统能力大赛·编译系统设计竞赛（华为毕昇杯）]中获得*一等奖*，总排名第二
        - 助教：_程序设计基础_（2020 秋），_面向对象的设计与构建_（S.T.A.R 教辅团队，2021 秋，2022 春）
    ]

  == 项目开发

    #cventry(
        tl: [Vizsla],
        tl_comments: [，面向硬件开发的现代化 Verilog/SV IDE。],
        tr: [（开发中）],
    )[
        - （实验室项目）*项目主导*和*主要开发者*，设计了 IDE 的架构和 IR 并在上面实现了 Verilog/SV 的语义分析
        - 利用*增量计算*架构实现了实时的增量语法解析以及语义分析，并在此基础上实现了代码补全、跳转、重构等功能
    ]

    #cventry(
        tl: [LLVM-Lite],
        tl_comments: [，一个面向深度学习神经网络算子的轻量级端侧编译器。],
        tr: ghrepo("roife/llvm-lite", icon: true),
    )[
        - （实验室项目，华为横向）*独立设计并实现*，本科毕业设计项目
        - 利用端侧设备的算子形状信息对 LLVM-IR 格式神经网络操作符进行二次优化，以减少算子运行时的时间和空间开销
    ]
  
    #cventry(
        tl: [航概],
        tl_comments: [，为北航《航空航天概论》课程设计的教育应用。],
        tr: ghrepo("Caniformia", icon: true),
    )[
        - （合作项目）*合作开发*，参与了基于 SwiftUI 的 iOS 应用开发以及基于 Ruby on Rails 的 Web 后端开发
    ]

    #cventry(
        tl: [开源社区贡献],
    )[
        - Rust-lang: #ghrepo("rust-lang/rust-analyzer", icon: true)，#ghrepo("rust-lang/rust-clippy", icon: true)，#ghrepo("rust-lang/rustup", icon: true)；
        - LLVM Foundation: #ghrepo("llvm/llvm-project", icon: true)，#ghrepo("clangd/vscode-clangd", icon: true)，#ghrepo("llvm/clangd-www", icon: true)；
        - #ghrepo("moonbitlang/tree-sitter-moonbit", icon: true)，#ghrepo("yuin/goldmark", icon: true)，#ghrepo("doomemacs/doomemacs", icon: true)，#link("https://github.com/roife")[更多项目见我的 GitHub 主页]
    ]

  == 技能

    - *编程语言*：不限于特定语言。尤其了解 C, C++, Java, Rust, Python, Verilog/SystemVerilog；同时能写 Ruby, Swift, Javascript, OCaml, Coq, Haskell 等
    - *程序语言理论*：了解类型系统、形式语义、形式验证和计算理论的相关知识
    - *编译器*：熟悉编译优化以及多种 IR（如 SSA 等）；能独立完成一个完整的编译器和解释器的开发；对 LLVM 有一定了解
    - *IDE*：熟悉基于 LSP 的 IDE 开发，尤其熟悉 rust-analyzer 和 clangd；熟悉基于增量计算的 IDE 架构和 IDE 的相关数据结构
    - *程序分析*：熟悉静态分析算法（如数据流分析，指针分析，IFDS 等）
    - *Web 与移动开发*：全栈。能够熟练使用 Vue、Rails、Docker、PostgreSQL、Redis 等技术进行 web 开发；了解 SwiftUI
    - *开发环境*：熟悉 Emacs；习惯在 macOS 和 Linux 环境下工作；能熟练使用 AI 提高工作效率

  == 其他

    - *语言*：中文，英语
