# TODO

I want a way to invoke brew so that it updates the soloistrc, or a way to invoke
soloist so that it updates soloistrc to include current taps/casks/formulae.

This is a general problem with chef that information only flows into the node
metadata one way. That is, this is the strategy we adopt with chef and similar
tools to prevent a set of other problems. I have the `update_soloist.rb` but I'm
not sure when I want to invoke it and when the changes should be committed and
pushed. Part of the concern is that stupid commit messages are a workflow smell.

I guess the trivial solution is to put more information about why I'm doing what
I'm doing in the commit messages.
