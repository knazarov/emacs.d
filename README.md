# Fully vendored Emacs configuration

There are a few key ideas behind this emacs configuration:

- Keep all configuration in one `init.el` file.
- Require minimum effort to understand.
- Use only plain `setq` where possible, and minimum wrapper functions.
- Don't depend on any external servers and repositories upon installation (ELPA, MELPA, etc).
- Freeze all third-party modules, and don't update unless new features are needed.
- Everything that is required contained in this repo.
- Startup times under a second.
- Be easily copy-pastable.

I used configuration bundles before, but I don't like when my editor
breaks on updates, or subtly changes behavior. In fact, I want the
exact opposite: maximum stability and predictability.

All third-party modules are "vendored" (committed) into the
`third-party/` directory. I don't use `package.el` or `use-package`,
and only rely on the `autoload` feature. So there are almost no
`require` calls in init.el, and modules are loaded implicitly on the
first call to any of their public functions.

I hope that the code in `init.el` is trivial and easily
understandable. So feel free to dive right in.

## Usage

```sh
git clone https://github.com/knazarov/emacs.d.git ~/.emacs.d

# (optional) byte-compile to speed up startup
cd ~/.emacs.d
make
```

Then start Emacs as usual.

## Contributing

You are very welcome to leave comments or reach out to me. But I won't
merge any PRs or accept feature requests, because this configuration
is highly personal and is not intended for reuse as-is. Instead, fork
it and make it your own.
