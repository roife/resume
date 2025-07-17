#import "fontawesome.typ": *

#let chiline() = {
    v(-8pt);
    line(length: 100%, stroke: gray);
    v(-8pt)
}

#let iconlink(
    uri, label: "", icon: link-icon
) = {
    if label != "" {
        link(uri)[#text[#fa[#icon]] #label]
    } else {
        link(uri)[#text[#fa[#icon]]]
    }
}

#let ghrepo(
    user_repo, add_link: true, icon: true
) = {
    if add_link {
        let (user, repo) = user_repo.split("/");
        let label = [#text(fill: rgb(70, 70, 70))[#user]/#text(weight: "semibold")[#repo]];
        if icon {
            iconlink("https://github.com/" + user_repo, label: label, icon: github)
        } else {
            link("https://github.com/" + user_repo)[#label]
        }
    } else {
        [#fa[#icon] #user_repo]
    }
}

#let cventry(
    tl: lorem(2),
    tr: "",
    bl: "",
    br: "",
    content
) = {
    block(
        inset: (bottom: 0.2em),
        text(weight: "bold", size: 1.16em)[#tl] +
        h(1fr) + tr +
        linebreak() +
        if bl != "" or br != "" {
            bl + h(1fr) + br + linebreak()
        } +
        content
    )
}

#let redact(alter: none, mark: false, color: black, body) = {
    let level = sys.inputs.at("level", default: none);
    if level == "submit" {
        body
    } else if level == "post" {
        if alter == none and mark {
            box(hide(body), fill: color)
        } else if alter == none and not mark {
            box(fill: color)[(missing)]
        } else {
            alter
        }
    } else {
        box(fill: color)[(missing)]
    }
}

#let chicv(body) = {
    let fonts = (
        "Palatino",
        "Source Han Serif SC",
    )
    show heading.where(
        level: 1
    ): set text(
        size: 28pt,
        font: fonts,
        weight: "regular",
    )

    show heading.where(
        level: 2
    ): it => text(
        size: 12pt,
        font: fonts,
        weight: "bold",
        block(
            v(0.2em) + chiline() + v(0.14em) + it + v(0.2em),
        )
    )
    set list(marker: ([•], [‣]), spacing: 0.95em)

    show link: it => underline(offset: 1.8pt, it)
    set page(margin: (x: 0.6cm, y: 1cm), numbering: "1 / 1")
    set par(justify: true, leading: 0.86em)
    set text(font: fonts, size: 9.8pt)

    body
}
