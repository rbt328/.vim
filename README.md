## .vim

```
yum update -y curl libcurl nss
```

## tags

```
ctags -R -L cscope.files --fields=+aiS --extra=+q --c-kinds=+p --c++-kinds=+p
ctags -R -L cscope.files --fields=+aiS --extra=+q --php-kinds=+j

ctags --options=ctags.opt -L ctags.inc
```
