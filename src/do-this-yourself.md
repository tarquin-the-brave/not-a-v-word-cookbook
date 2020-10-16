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

[`mdbook`][mddoc] is the main technology I've used here. It's a command
line[^cl] tool that takes markdown[^md] documents and generates a book that you
can see in your web browser. [Here's the download page][mdbin] to install it
for the type of computer you have. Check out [the documentation][mdbook] and
have a play around with it.

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

```
your-github-name.github.io/your-cookbook-name/
```

(where `your-github-name` & `your-cookbook-name` are replaced with their actual
names).

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


[pandoc]: https://pandoc.org/

[^cl]: "command line", a.k.a: "terminal", "command prompt", is the little box
  that lets you type in commands to a computer.  On Windows, I think it's
  called "command", or "command prompt".  If you're not familiar with it, you
  may want to do a bit of googling for how the terminal works on your computer.

[^md]: [Markdown][markdown] is a lightweight syntax that deals with all the
  formating of a document, so you don't have to.  Don't worry, you're not
  learning a programming language here.  There's very little to it, I promise.
