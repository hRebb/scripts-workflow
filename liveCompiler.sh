if [$? -eq 0] 
then 

    echo 'File SASS/SCSS to compile to CSS : '
    read sassFile

    echo 'File CSS compiled : '
    read cssFile

    sass --watch "$sassFile" "$cssFile"

fi