using memo
using Documenter

DocMeta.setdocmeta!(memo, :DocTestSetup, :(using memo); recursive=true)

makedocs(;
    modules=[memo],
    authors="liuxu <liuxu89@mail.ustc.edu.cn> and contributors",
    repo="https://github.com/liuxu89/memo.jl/blob/{commit}{path}#{line}",
    sitename="memo.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://liuxu89.github.io/memo.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/liuxu89/memo.jl",
    devbranch="main",
)
