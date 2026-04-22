# Noctalia + Niri dotfiles

This is a bare repo containing the dotfiles for my [Noctalia](https://github.com/noctalia-dev/noctalia-shell) + [Niri](https://github.com/niri-wm/niri) rice.

---

## ⚠️ Warning

This setup **will overwrite existing files in your `$HOME` directory**.

If you have existing configs you don't want to lose, make sure to back them up first.

---

## Assumptions

This setup of course assumes that you have both [Noctalia](https://github.com/noctalia-dev/noctalia-shell) and [Niri](https://github.com/niri-wm/niri) installed on your system.

---

## Installation and Setup

One-liner to install the bare repo (overrides existing config files):
```bash
git clone --bare https://github.com/Maelkiz/noctalia-niri-dots.git "$HOME/.dotfiles" && \
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" checkout -f && \
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" config --local status.showUntrackedFiles no
```

Convenient alias:
```bash
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
```

It lets you use interact with bare repo like this:
```bash
dotfiles status
dotfiles add .config/niri/config.kdl
dotfiles commit -m "Update niri config"
dotfiles push
```

Instead of like this:
```bash
git --git-dir=$HOME/.dotfiles --work-tree=$HOME status
git --git-dir=$HOME/.dotfiles --work-tree=$HOME add .config/niri/config.kdl
git --git-dir=$HOME/.dotfiles --work-tree=$HOME commit -m "Update niri config"
git --git-dir=$HOME/.dotfiles --work-tree=$HOME push
```

---

> See https://github.com/Maelkiz/sddm-theme for a matching sddm theme.
