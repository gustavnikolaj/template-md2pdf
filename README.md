# Markdown to PDF template

[degit](https://github.com/Rich-Harris/degit) template for markdown based pdf
generation.

Install with:

```
$ degit gustavnikolaj/template-md2pdf
```

## Usage

Put your markdown files in the `content` folder. They will be sorted before
being built into the pdf file, so to control the order you should name your
files with leading numbers. E.g. `00-title.md`, `01-project-description.md`.

This projects uses `make` as a task runner.

Running make with no arguments will build the markdown files in the `content`
directory into a pdf file that will be saved as `output.pdf`.

```
$ make
```

If you want to remove temporary files from your working directory you can run
the clean target:

```
$ make clean
```

## Dependencies

You need to have `pandoc` and `texlive` installed. On Ubuntu linux the
following should be enough:

```
$ sudo apt-get install pandoc texlive
```
