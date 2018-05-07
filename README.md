# blogs.pingpoet.com
This is merely a static copy of the original http://blogs.pingpoet.com site hosted in github pages.



# Notes

## To mirror from live site

install httrack:

    brew install httrack

Command:

    # note the complex `-` exclude patterns are to only include archive directories for 2003-2007
    httrack http://blogs.pingpoet.com  -O "./httrack" -%v2 '-*/archive/200[0-2]/* -*/archive/200[8-9]*/' '-*/archive/20[1-9][0-9]/*' '-*/archive/2[1-9][0-9][0-9]/*' '-*/archive/[3-9][0-9][0-9][0-9]*/' '-*/archive/[0-1][0-9][0-9][0-9]/*'

That leaves a bunch of unnecessary archive directories still. So clean them up (again only 2003-2007 are needed):

    find ./httrack/blogs.pingpoet.com/ -path '*/archive/20[1-9][0-9]*' -delete
    find ./httrack/blogs.pingpoet.com/ -path '*/archive/200[0-2]*' -delete
    find ./httrack/blogs.pingpoet.com/ -path '*/archive/200[8-9]*' -delete
    find ./httrack/blogs.pingpoet.com/ -path '*/archive/[0-1][0-9][0-9]*' -delete
    find ./httrack/blogs.pingpoet.com/ -path '*/archive/[3-1][0-9][0-9]*' -delete

That downloads to `./httrack/blogs.pingpoet.com`. To copy those to the right place for github pages do:

    # works but does a full copy: rsync -a --stats --delete-excluded ./httrack/blogs.pingpoet.com/ ./docs --exclude *.tmp
    # links, git lndir from https://opensource.apple.com/source/X11/X11-0.46.4/lndir.sh.auto.html
    ./link.sh


## Error checking
To only check for errors:

    httrack http://blogs.pingpoet.com  -O "./httrack-error-check" -%v2 --testsite
