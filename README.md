# V4Z Core — Modular Termux Dev Environment

One small CLI to install and manage a Termux development setup: languages, everyday tools, an editor, databases, AI coding assistants and the shell — module by module, with simple commands.

Built by **V4Z RASHD** — Telegram: [@rashdteem](https://t.me/rashdteem)

## Install (Termux)

```bash
git clone <this-repo> && cd <this-repo>
bash install.sh
v4zcore
```

## Commands

| Command | What it does |
|---|---|
| `v4zcore list` | List all modules |
| `v4zcore list <module>` | Tools inside a module, with installed/not-installed status |
| `v4zcore show <module>` | What a module contains and how each tool is installed |
| `v4zcore install <module>` | Install every tool in the module |
| `v4zcore install <module> --<tool>` | Install only the picked tools |
| `v4zcore uninstall <module> [--tool]` | Remove module tools |
| `v4zcore update` | `pkg update` + `pkg upgrade`, plus updates for installed npm AI tools |
| `v4zcore env set` | Add/update a shell variable (value typed hidden, stored in `.bashrc`/`.zshrc`) |
| `v4zcore env unset [NAME]` | Remove a v4zcore-managed variable |
| `v4zcore env ls` | List managed variable names (values never printed) |
| `v4zcore init python [dir]` | Create a small Python starter project |
| `v4zcore init node [dir]` | Create a small Node starter project |
| `v4zcore version` | Print version |

Add `--dry-run` anywhere to print the pkg/npm commands without running them:

```bash
v4zcore install lang --python --dry-run
```

## Modules

| Module | Contents |
|---|---|
| `lang` | python, nodejs, php, golang, rust |
| `dev` | git, curl, wget, jq, fzf, bat, lsd |
| `editor` | neovim |
| `db` | sqlite, postgresql, mariadb |
| `ai` | opencode, cline (installed globally via npm; needs Node.js first) |
| `shell` | zsh, plus a note on optional ZSH plugin packages |

## Notes

- Termux only: packages come from the Termux `pkg` repositories and global `npm`.
- `env` values are written only to your own rc file and are never printed back.
- The AI module needs Node.js: run `v4zcore install lang --nodejs` first.
- Installing a database package does not start any server; initialise and run it the usual Termux way for that database.

---

© V4Z RASHD — [@rashdteem](https://t.me/rashdteem)
