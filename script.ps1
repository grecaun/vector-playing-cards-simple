param (
    [string]$i="cards-svg",
    [string]$o="cards-png",
    [int]$w=400,
    [switch]$dry=$false,
    [switch]$d=$false,
    [switch]$quiet=$false,
    [switch]$q=$false,
    [switch]$help=$false,
    [switch]$h=$false
)

if ($h -Or $help) {
    echo "-i INPUTDIR    Input directory of SVGs. Default is cards-svg"
    echo "-o OUTPUTDIR   Output directory for PNG files. Default is cards-png"
    echo "-w WIDTH       PNG output width. Default is 400"
    echo "-d, -dry       Show commands without running them. Cannot be quiet."
    echo "-q, -quiet     Squelch output messages."
    echo "-h, -help      Show this help message and exit."
    exit
}

$i=$i -replace "\\$", "" -replace "^\.\\", ""
$o=$o -replace "\\$", "" -replace "^\.\\", ""

if (-Not ($q -or $quiet)) { echo "Creating output directory." }
If (-Not (test-path $o)) {
    New-Item -ItemType Directory -Force -Path $o > $null
}
if (-Not ($q -or $quiet)) { echo "Directory created." "Starting to work on image files." }
$FILENAMES = Get-ChildItem $i
foreach ($FILENAME in $FILENAMES) {
    $OUTFILENAME=$FILENAME -replace ".svg$", ".png"
    if (-Not ($q -or $quiet)) { echo "Working on $FILENAME" }
    if ($d -Or $dry) {
        echo "svg2png $i\$FILENAME -o $o\$OUTFILENAME -w $w"
    } else {
        svg2png "$i\$FILENAME" -o "$o\$OUTFILENAME" -w $w
    }
}
if (-Not ($q -or $quiet)) { echo "Image files created." }