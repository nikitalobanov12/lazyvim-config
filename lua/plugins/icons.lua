return {
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup({
        color_icons = true,
        default = true,
        strict = true,
        override = {
          lua = {
            icon = "",
            color = "#51a0cf",
            cterm_color = "74",
            name = "Lua"
          },
          js = {
            icon = "",
            color = "#ffd866",
            cterm_color = "185",
            name = "JavaScript"
          },
          ts = {
            icon = "",
            color = "#fc9867",
            cterm_color = "67",
            name = "TypeScript"
          },
          tsx = {
            icon = "",
            color = "#fc9867",
            cterm_color = "67",
            name = "TypeScriptReact"
          },
          jsx = {
            icon = "",
            color = "#ffd866",
            cterm_color = "185",
            name = "JavaScriptReact"
          },
          py = {
            icon = "",
            color = "#a9dc76",
            cterm_color = "113",
            name = "Python"
          },
          go = {
            icon = "",
            color = "#78dce8",
            cterm_color = "81",
            name = "Go"
          },
          rs = {
            icon = "",
            color = "#ff6188",
            cterm_color = "204",
            name = "Rust"
          },
          java = {
            icon = "",
            color = "#fc9867",
            cterm_color = "209",
            name = "Java"
          },
          cpp = {
            icon = "",
            color = "#ab9df2",
            cterm_color = "141",
            name = "Cpp"
          },
          c = {
            icon = "",
            color = "#ab9df2",
            cterm_color = "141",
            name = "C"
          },
          html = {
            icon = "",
            color = "#ff6188",
            cterm_color = "204",
            name = "Html"
          },
          css = {
            icon = "",
            color = "#78dce8",
            cterm_color = "81",
            name = "Css"
          },
          scss = {
            icon = "",
            color = "#ab9df2",
            cterm_color = "141",
            name = "Scss"
          },
          json = {
            icon = "",
            color = "#ffd866",
            cterm_color = "185",
            name = "Json"
          },
          md = {
            icon = "",
            color = "#fcfcfa",
            cterm_color = "255",
            name = "Markdown"
          },
          vim = {
            icon = "",
            color = "#a9dc76",
            cterm_color = "113",
            name = "Vim"
          },
          yaml = {
            icon = "",
            color = "#ab9df2",
            cterm_color = "141",
            name = "Yaml"
          },
          yml = {
            icon = "",
            color = "#ab9df2",
            cterm_color = "141",
            name = "Yml"
          },
          toml = {
            icon = "",
            color = "#ff6188",
            cterm_color = "204",
            name = "Toml"
          },
          dockerfile = {
            icon = "",
            color = "#78dce8",
            cterm_color = "81",
            name = "Dockerfile"
          },
          ["docker-compose.yml"] = {
            icon = "",
            color = "#78dce8",
            cterm_color = "81",
            name = "DockerCompose"
          },
          sh = {
            icon = "",
            color = "#a9dc76",
            cterm_color = "113",
            name = "Shell"
          },
          bash = {
            icon = "",
            color = "#a9dc76",
            cterm_color = "113",
            name = "Bash"
          },
          zsh = {
            icon = "",
            color = "#a9dc76",
            cterm_color = "113",
            name = "Zsh"
          },
          fish = {
            icon = "",
            color = "#a9dc76",
            cterm_color = "113",
            name = "Fish"
          },
          git = {
            icon = "",
            color = "#ff6188",
            cterm_color = "204",
            name = "Git"
          },
          ["gitignore"] = {
            icon = "",
            color = "#ff6188",
            cterm_color = "204",
            name = "GitIgnore"
          },
          ["gitconfig"] = {
            icon = "",
            color = "#ff6188",
            cterm_color = "204",
            name = "GitConfig"
          },
        },
        override_by_filename = {
          [".gitignore"] = {
            icon = "",
            color = "#ff6188",
            cterm_color = "204",
            name = "GitIgnore"
          },
          ["README.md"] = {
            icon = "",
            color = "#ffd866",
            cterm_color = "185",
            name = "Readme"
          },
          ["package.json"] = {
            icon = "",
            color = "#a9dc76",
            cterm_color = "113",
            name = "PackageJson"
          },
          ["tsconfig.json"] = {
            icon = "",
            color = "#fc9867",
            cterm_color = "209",
            name = "TsConfig"
          },
          [".env"] = {
            icon = "",
            color = "#ffd866",
            cterm_color = "185",
            name = "Env"
          },
          ["Dockerfile"] = {
            icon = "",
            color = "#78dce8",
            cterm_color = "81",
            name = "Dockerfile"
          },
        }
      })
    end,
  }
}