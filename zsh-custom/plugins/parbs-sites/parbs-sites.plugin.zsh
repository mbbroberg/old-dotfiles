site() {
    cd ~/Sites/www/$1/htdocs;
}
_site() {
    _files -W ~/Sites/www/ -/;
}
compdef _site site
