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
| `v4zcore brain save <title>` | Save a note (body from stdin) into `~/.v4zcore/brain/` |
| `v4zcore brain search <word>` | Find notes containing a word |
| `v4zcore brain ls` / `show <slug>` | List notes / print one note |
| `v4zcore pg init` | Create the PostgreSQL data directory (once) |
| `v4zcore pg start` / `stop` / `status` | Manage the local PostgreSQL server |
| `v4zcore init python [dir]` | Create a small Python starter project |
| `v4zcore init node [dir]` | Create a small Node starter project |
| `v4zcore init react [dir]` | Create a React (Vite) starter: package.json, index.html, src/main.jsx |
| `v4zcore init express [dir]` | Create an Express starter: package.json, index.js |
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
- Installing a database package does not start any server; for PostgreSQL use the `v4zcore pg` helper, other databases are run the usual Termux way.
- Brain notes are plain markdown files in `~/.v4zcore/brain/` — yours to edit, copy or delete any time.

---

© V4Z RASHD — [@rashdteem](https://t.me/rashdteem)

## Credits

Feature benchmark and inspiration: **W8SOJIB** (W8Core-Termux-Modedd, MIT License).

V4Z Core itself is an original implementation, designed and written from scratch for **V4Z RASHD** ([@rashdteem](https://t.me/rashdteem)). The command set aims at the same goals, but no code is shared between the two projects.
