# Do This Yourself

## An Online Book

Really this book is "a website".  So if you're already well versed in creating
websites you don't need this section, crack on doing what you do. For what it's
worth this is the lowest faff way I've encountered to date of creating a
website and the tools I've used have let me spend almost all of the developing
time on content and an extremely minimal amount of time on formatting and such
like. If you're keen to highly customise the formatting then other tools might
be better suited to your desires.  If, like me, you're happy with how this
looks and want to get something up and running fast: here's how you can do
that.

Everything I've used is totally free to use.

### Command Line

**Before you start**: Make sure you are comfortable running a program from
your computer's "command line".

"Command line": a.k.a: "terminal", "command prompt", is the little box that
lets you type in commands to a computer.  On Windows, I think it's called
"command", or "command prompt".  If you're not familiar with it, you may want
to do a bit of googling for how the terminal works on your computer.  and
practice running programs and moving files, etc.

There are also online tutorials that you can find to help get the basics.

### Mdbook and Markdown

[`mdbook`][mddoc] is the main technology I've used here. It's a command line
tool that takes "markdown" documents and generates a book that you can see in
your web browser. [Here's the download page][mdbin] to install it for the type
of computer you have. Check out [the documentation][mddoc] and have a play
around with it.

[Markdown][markdown] is a lightweight syntax that deals with all the formating
of a document, so you don't have to.  Don't worry, you're not learning a
programming language here.  There's very little to it, I promise.

Once you've installed `mdbook` and know how to run it, you can write up a few
pages of your book and see it taking shape in your web browser with `mdbook
watch -o`.

### Github and Travis

Once you've got a few pages, setup a [Github][github] account.  Github will
store the files you create your book from and, when you're ready will host the
website for you.

Github is pretty good at providing instructions for how to use it.  If you're
unfamiliar with `git`, it may be worth some searches online for how to do the
specific things you want, like push your work to your Github.

You'll want to create a Github "repository" for your cookbook.  Github will
take you through the steps.

`mdbook` writes the files it generates to a folder called `book`.  As these are
auto-generated, you won't need Github to look after them for you, and you can
tell `git` to ignore them by adding a `.gitignore` file to you repository with
the word `book` in it.  Feel free to [copy mine][mygitignore].

When you're ready to publish you can setup your Github repository to
automatically generate your website and publish it.  For this you can use
[Travis CI][travis].  There's instructions [here][travisgithub] for how to
"setup Travis with a Github account".

Travis can be setup to run any kind of build of software, so needs configuring
for this task.  I've done the work here already, so feel free to [copy
mine][mytravis].

Find the option in your Travis account web page to "Add a repository", then the
next time you "push" your files to your Github repository, a few minutes later,
you'll be able to see your cookbook online at:

```text
your-github-name.github.io/your-cookbook-name/
```

(where `your-github-name` & `your-cookbook-name` are replaced with their actual
names)

Hopefully this is enough information to get you started.  The documentation of
these tools is all quite thorough, and their all used by enough people that you
can generally search online "How do I do X with this tool".  If not there's all
sorts of friendly forums you can ask for help on like [Stack Overflow][so].

If you manage OK with `mdbook` and would like to have more control over
customising your theme, I can recommend [Hugo][hugo].  It's a tool for building
websites that's only a little bit more faff than `mdbook` (but you can do a lot
more with it), and has a huge community of people developing and maintaining
all sorts of themes.  So you don't even have to make your own theme, you can
pick one from the hundreds already available.

[so]: https://stackoverflow.com/
[travisgithub]: https://docs.travis-ci.com/user/tutorial/#to-get-started-with-travis-ci-using-github
[travis]: https://travis-ci.org/
[github]: https://github.com/
[mddoc]: https://rust-lang.github.io/mdBook/index.html
[mdgit]: https://github.com/rust-lang/mdBook
[mdbin]: https://github.com/rust-lang/mdBook/releases
[hugo]: https://gohugo.io/
[markdown]: https://learnxinyminutes.com/docs/markdown/
[mygithub]: https://github.com/tarquin-the-brave/not-a-v-word-cookbook
[mytravis]: https://github.com/tarquin-the-brave/not-a-v-word-cookbook/blob/master/.travis.yml
[mygitignore]: https://github.com/tarquin-the-brave/not-a-v-word-cookbook/blob/master/.gitignore

## An Actual Real Physical Book

Before publishing this book online, I made a physical copy of this book by hand
as a present for a couple of friends who got married.  Here's roughly what I
did.

I used [Pandoc][pandoc], a tool for converting documents between formats, to
convert these markdown files into a single `odt` format file that can be read
by [Libre Office][lo] (the free version of Microsoft office).  I don't know if
Microsoft Word can read `odt` format.  If not Pandoc can always convert to
`docx` format instead.

Once open in Libre Office I selected all the text, picked a font, size, and
line formatting and set that for the whole of the document.

I then went through and formatted the section headings and made sure each new
recipe started on a new page. The book was ready to print.

I found two great tutorials by this Youtuber called "Sea Lemon" for how to bind
a book by hand online:

[https://www.youtube.com/watch?v=9O4kFTOEh6k]

[https://www.youtube.com/watch?v=Av\_rU-yOPd4]

Sea Lemon has loads of tutorials on book binding and crafts.  Check out their
other videos for alternative approaches.

I then had to work out how to print the right pages on the right sides of the
right pieces of paper to create the "signatures" of pages that get sticked
together.  I did this by folding some normal printer paper, arranging them into
signatures, and writing the page numbers on.

I also found that the print we have at home wasn't printing "two pages per
side" centrally on the page, leaving a large blank space to the right. failing
to see how to amend this, I resorted to measuring the discrepancy and trimming
the pages down with a ruler and a scalpel (a guillotine would have been better
for this, I just didn't have one).

All credit to Sea Lemon for helping me to produce the physical book!

[lo]: https://www.libreoffice.org/
[pandoc]: https://pandoc.org/

