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

* pip maintenance and pip installation of powerline etc
  * had to awkwardly fork python cookbook for mac_os_x
* patched font install for powerline
  * pretty easy, just cloning and installing in the recipe
* vim install flags and ruby version snafu
* solarized colors for iterm
  * actually handled already, just didn't apply without restarting iterm
* weird behavior in viminit.sh
* something dumb happened with google-earth
  * nature of underlying archive changed, patch accepted upstream
* run various linkin scripts
* persist config changes
  * karabiner
  * iterm
  * menumeters
* gdrive (add a homebrew formla?)
