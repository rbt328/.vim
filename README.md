## .vim

```
yum update -y curl libcurl nss

dnf -y install ctags cscope ripgrep python3-devel ncurses-devel
[global]# ./configure && make && make install

:PlugInstall
```

## tags

```
ctags -R -L cscope.files --fields=+aiS --extra=+q --c-kinds=+p --c++-kinds=+p
ctags -R -L cscope.files --fields=+aiS --extra=+q --php-kinds=+j

ctags --options=ctags.opt -L ctags.inc
```
