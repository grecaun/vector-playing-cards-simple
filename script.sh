INPATH="cards-svg"
OUTPATH="cards-png"
WIDTH=100
DRY='false'
QUIET='false'

print_help () {
    echo -i INPUTDIR    Input directory of SVGs. Default is cards-svg
    echo -o OUTPUTDIR   Output directory for PNG files. Default is cards-png
    echo -w WIDTH       PNG output width. Default is 400
    echo -d, --dry      Show commands without running them. Cannot be quiet.
    echo -q, --quiet    Squelch output messages.
    echo -h, --help     Show this help message and exit.
    exit
}

while [[ $# -gt 0 ]]
do
    key="$1"
    case $key in
        -o) OUTPATH="$2";shift ;;
        -i) INPATH="$2";shift ;;
        -w) WIDTH="$2";shift ;;
        -d|--dry) DRY='true';echo Dry run coming up!; ;;
        -q|--quiet) QUIET='true'; ;;
        -h|--help) print_help; ;;
        *) ;;
    esac
    shift
done

INPATH=$(echo $INPATH | sed "s/^\.\///;s/\/$//")
OUTPATH=$(echo $OUTPATH | sed "s/^\.\///;s/\/$//")

if [ QUIET == 'false' ] ; then echo Creating output directory.; fi
if [ DRY == 'true' ]
then
    echo mkdir -p $OUTPATH
else
    mkdir -p $OUTPATH
fi
if [ QUIET == 'false' ] ; then echo Directory created.\nStarting image creation process.; fi
for FILE in "$INPATH/"*.svg
do
    OUTFILE="$(echo $FILE | sed 's@^'"$INPATH"'@@;s/.svg$//').png"
    if [ QUIET == 'false' ] ; then echo Creating $OUTFILE; fi
    if [ DRY == 'true' ]
    then
        echo svg2png "$FILE" -o "$OUTPATH/$OUTFILE" -w $WIDTH
    else
        svg2png "$FILE" -o "$OUTPATH/$OUTFILE" -w $WIDTH
    fi
done
if [ QUIET == 'false' ] ; then echo Image creation process finished.; fi