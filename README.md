# blogs.pingpoet.com
This is merely a static copy of the original http://blogs.pingpoet.com site hosted in github pages.



# Notes

## To mirror from live site

install httrack:

    brew install httrack

Command:

    httrack http://blogs.pingpoet.com  -O "./httrack" -%v2
    rsync -av --delete-excluded ./httrack/blogs.pingpoet.com/ ./docs --exclude *.tmp
    