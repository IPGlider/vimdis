# vimdis
An easy way to start using vim, pre-configured and with some useful plugins installed by default. Also you can install language support and tools effortlessly.

## Why?
I wanted an easy way to share my vim configuration among different computers and colleagues.

## Install

Follow this steps:

1. `git clone git://github.com/IPGlider/vimdis.git ~/.vim`
2. `cd ~/.vim`
3. `rake install`
4. Profit

### Included plugins

- [ack.vim](https://github.com/mileszs/ack.vim)
- [Command-T](https://github.com/wincent/Command-T)
- [molokai](https://github.com/vim-scripts/molokai)
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [pathogen](https://github.com/tpope/vim-pathogen)
- [snipmate.vim](https://github.com/msanders/snipmate.vim)
- [vim-autoclose](https://github.com/Townk/vim-autoclose)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-git](https://github.com/tpope/vim-git)
- [vim-surround](https://github.com/tpope/vim-surround)

## Language tools

To install plugins and tools for a language just do:

1. `cd ~/.vim`
2. `rake bundle:name`

where name is the one you want to install.

### Included bundles

- javascript: [jslint.vim](https://github.com/hallettj/jslint.vim) and [vim-javascript](https://github.com/pangloss/vim-javascript)
- rails: [vim-rails](https://github.com/tpope/vim-rails) and [vim-ruby](https://github.com/vim-ruby/vim-ruby)

## Update

If you want to update vimdis and delfault plugins:

1. `cd ~/.vim`
2. `rake update`
3. `rake upgrade`
4. Install the bundles you want

## More

- `<Leader>` is mapped to `,`
- `<Leader> + i` indent code
- `<Leader> + n` toggle nerdtree
- `<Leader> + s` strip trailing whitespaces
- `<Leader> + t` show Command-T

In `~/.vimrc.local` and `~/.gvimrc.local` you can put your own options.