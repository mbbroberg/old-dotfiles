site() {
    cd ~/Sites/www/$1;
}
_site() {
    _files -W ~/Sites/www/ -/;
}
compdef _site site
