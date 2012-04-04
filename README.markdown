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
- [ctrlp.vim](https://github.com/kien/ctrlp.vim)
- [molokai](https://github.com/vim-scripts/molokai)
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [pathogen](https://github.com/tpope/vim-pathogen)
- [snipmate-snippets](https://github.com/honza/snipmate-snippets)
- [tlib_vim](https://github.com/tomtom/tlib_vim)
- [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-git](https://github.com/tpope/vim-git)
- [vim-smartinput](https://github.com/kana/vim-smartinput)
- [vim-snipmate](https://github.com/garbas/vim-snipmate)
- [vim-surround](https://github.com/tpope/vim-surround)

## Language tools

To install plugins and tools for a language just do:

1. `cd ~/.vim`
2. `rake bundle:name`

where name is the one you want to install.

### Included bundles

- javascript: [jshint.vim](https://github.com/wookiehangover/jshint.vim) and [vim-javascript](https://github.com/pangloss/vim-javascript)
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

In `~/.vimrc.local` and `~/.gvimrc.local` you can put your own options.
