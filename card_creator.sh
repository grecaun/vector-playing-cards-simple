CARDFACEVALS=("A" "2" "3" "4" "5" "6" "7" "8" "9" "10" "J" "Q" "K")
CARDSUITS=("Clubs" "Diamonds" "Spades" "Hearts")
OUTFOLDER="cards-svg-new"
PARTPATH="royalparts"
QUIET='false'

TEXTSIZE="50pt"
TOPLETTERX="8"
TOPLETTERY="52"
ICONSCALE="1.5"
BOTTOMLETTERX="-160"
BOTTOMLETTERY="-190"
FONT="Niagara Solid"

SUITSCALE="2.25"
ACESCALE="5"
ROYALSUITSCALE="1.5"
ROYALSUITX1="-19.5"
ROYALSUITX2="185.5"
ROYALSUITY1="7.5"
ROYALSUITY2="235.5"

print_help () {
    echo -o OUTPUTDIR   Directory where you want the new SVG files placed.
    echo -q, --$quiet   Squelch output messages.
    echo -h, --help     Show this help message and exit.
    exit
}

echoRoyalItems() {
    echo "<g style='fill:none;stroke:#000000;stroke-width:1.82777798;stroke-miterlimit:4;stroke-dasharray:none' transform='matrix(0.57316112,0,0,0.81584336,35,22.465901)'><path style='fill:none;stroke-width:1.82777798;stroke-miterlimit:4;stroke-dasharray:none' d='m 166.83691,235.54785 c 0,3.77735 -3.08691,6.86914 -6.87109,6.86914 H 7.1108398 C 3.3359375,242.41699 0.25,239.3252 0.25,235.54785 V 7.1201172 C 0.25,3.3427734 3.3359375,0.25 7.1108398,0.25 H 159.96582 c 3.78418,0 6.87109,3.0927734 6.87109,6.8701172 V 235.54785 z' /></g>"
    echo "<g transform='matrix($ROYALSUITSCALE,0,0,$ROYALSUITSCALE,$ROYALSUITX1,$ROYALSUITY1)'>$SUITPATH</g>"
    echo "<g transform='matrix(-$ROYALSUITSCALE,0,0,-$ROYALSUITSCALE,$ROYALSUITX2,$ROYALSUITY2)'>$SUITPATH</g>"
}

while [[ $# -gt 0 ]]
do
    key="$1"
    case $key in
        -o) OUTFOLDER="$2";shift ;;
        -q|--$quiet) QUIET='true'; ;;
        -h|--help) print_help; ;;
        *) ;;
    esac
    shift
done

OUTFOLDER=$(echo $OUTFOLDER | sed "s/^\.\///;s/\/$//")


if [ $QUIET == 'false' ] ; then echo --------------------------------------; echo Creating directory $OUTFOLDER; fi
mkdir -p $OUTFOLDER

for SUIT in ${CARDSUITS[@]}
do
    if [ $QUIET == 'false' ] ; then echo --------------------------------------; echo Working on $SUIT; echo --------------------------------------; fi
    case $SUIT in
        C*) SUITPATH="<path d='m 50.291466,22.698228 c 0,0 2.375,-1.9 2.375,-4.534 0,-1.542 -1.369,-4.102 -4.534,-4.102 -3.165,0 -4.534,2.561 -4.534,4.102 0,2.634 2.375,4.534 2.375,4.534 -2.638,-2.055 -7.341,-0.652 -7.341,3.455 0,2.056 1.68,4.318 4.318,4.318 3.165,0 4.534,-3.455 4.534,-3.455 0,0 0.402,3.938 -1.943,6.046 h 5.182 c -2.345,-2.107 -1.943,-6.046 -1.943,-6.046 0,0 1.369,3.455 4.534,3.455 2.639,0 4.318,-2.263 4.318,-4.318 0,-4.107 -4.703,-5.51 -7.341,-3.455 z' />"
            JACKPATH="$PARTPATH/JC.xml"
            JACKTRANS="<g transform='matrix(0.12444639,0,0,0.15944639,35.990133,22.096011)'>"
            QUEENPATH="$PARTPATH/QC.xml"
            QUEENTRANS="<g transform='matrix(0.12526076,0,0,0.15876549,35.556327,22.654879)'>"
            KINGPATH="$PARTPATH/KC.xml"
            KINGTRANS="<g transform='matrix(0.12431424,0,0,0.15845213,35.10577,22.52004)'>"
            FILLVAL="fill:#000000"
            TOPICONY="40"
            BOTTOMICONY="202"
            SUITX1="2.5"
            SUITX2="-24.5"
            SUITX3="-51.5"
            SUITX4="165"
            SUITX5="192"
            SUITX6="219"
            SUITY1="-25"
            SUITY2="10"
            SUITY3="20"
            SUITY4="45"
            SUITY5="70"
            SUITY6="200"
            SUITY7="225"
            SUITY8="235"
            SUITY9="270"
            ACEX="-157.5"
            ACEY="0"
            ROYALSUITX1="-19.5"
            ROYALSUITX2="185.5"
            ROYALSUITY1="7.5"
            ROYALSUITY2="235.5" ;;
        D*) SUITPATH="<path style='fill:#df0000' d='M 3.2433274,-4.7253274 C 1.1263274,-7.5893274 0,-10.5 0,-10.5 c 0,0 -1.1263274,2.9106726 -3.2433274,5.7746726 C -5.3613274,-1.8623274 -8,0 -8,0 -8,0 -5.3613274,1.8613274 -3.2433274,4.7263274 -1.1263274,7.5893274 0,10.5 0,10.5 0,10.5 1.1263274,7.5893274 3.2433274,4.7263274 5.3613274,1.8613274 8,0 8,0 8,0 5.3613274,-1.8623274 3.2433274,-4.7253274 z' />"
            JACKPATH="$PARTPATH/JD.xml"
            JACKTRANS="<g transform='matrix(0.1251849,0,0,0.15832555,35.52677,22.738761)'>"
            QUEENPATH="$PARTPATH/QD.xml"
            QUEENTRANS="<g transform='matrix(0.12577261,0,0,0.15893276,35.108017,22.761321)'>"
            KINGPATH="$PARTPATH/KD.xml"
            KINGTRANS="<g transform='matrix(0.12596152,0,0,0.15923411,35.932788,22.427926)'>"
            FILLVAL="fill:#df0000"
            TOPICONY="74.5"
            BOTTOMICONY="167.5"
            SUITX1="55"
            SUITX2="82.5"
            SUITX3="110"
            SUITX4="55"
            SUITX5="82.5"
            SUITX6="110"
            SUITY1="26.5"
            SUITY2="61.5"
            SUITY3="74"
            SUITY4="96.5"
            SUITY5="121.5"
            SUITY6="146.5"
            SUITY7="169"
            SUITY8="181.5"
            SUITY9="216.5"
            ACEX="82.5"
            ACEY="115"
            ROYALSUITX1="52"
            ROYALSUITX2="115"
            ROYALSUITY1="48"
            ROYALSUITY2="195" ;;
        S*) SUITPATH="<path d='M 7.989,3.103 C 7.747,-0.954 0.242,-8.59 0,-10.5 c -0.242,1.909 -7.747,9.545 -7.989,13.603 -0.169,2.868 1.695,4.057 3.39,4.057 1.8351685,-0.021581 3.3508701,-2.8006944 3.873,-3.341 0.242,0.716 -1.603,6.682 -2.179,6.682 l 5.811,0 C 2.33,10.501 0.485,4.535 0.727,3.819 1.1841472,4.3152961 2.5241276,7.0768295 4.601,7.16 6.295,7.159 8.158,5.971 7.989,3.103 z' />"
            JACKPATH="$PARTPATH/JS.xml"
            JACKTRANS="<g transform='matrix(0.1255151,0,0,0.15790631,35.655157,23.26643)'>"
            QUEENPATH="$PARTPATH/QS.xml"
            QUEENTRANS="<g transform='matrix(0.1239962,0,0,0.1589962,35.778357,22.579478)'>"
            KINGPATH="$PARTPATH/KS.xml"
            KINGTRANS="<g transform='matrix(0.12357779,0,0,0.15857779,35.434813,23.098744)'>"
            FILLVAL="fill:#000000"
            TOPICONY="74.5"
            BOTTOMICONY="167.5"
            SUITX1="55"
            SUITX2="82.5"
            SUITX3="110"
            SUITX4="55"
            SUITX5="82.5"
            SUITX6="110"
            SUITY1="26.5"
            SUITY2="61.5"
            SUITY3="74"
            SUITY4="96.5"
            SUITY5="121.5"
            SUITY6="146.5"
            SUITY7="169"
            SUITY8="181.5"
            SUITY9="216.5"
            ACEX="82.5"
            ACEY="115"
            ROYALSUITX1="52"
            ROYALSUITX2="115"
            ROYALSUITY1="48"
            ROYALSUITY2="195" ;;
        H*) SUITPATH="<path style='fill:#df0000' d='M 3.676,-9 C 0.433,-9 0,-5.523 0,-5.523 0,-5.523 -0.433,-9 -3.676,-9 -5.946,-9 -8,-7.441 -8,-4.5 -8,-0.614 -1.4208493,3.2938141 0,9 1.35201,3.2985969 8,-0.614 8,-4.5 8,-7.441 5.946,-9 3.676,-9 z' />"
            JACKPATH="$PARTPATH/JH.xml"
            JACKTRANS="<g transform='matrix(0.12294715,0,0,0.15794715,35.333056,22.924098)'>"
            QUEENPATH="$PARTPATH/QH.xml"
            QUEENTRANS="<g transform='matrix(0.12359919,0,0,0.15859919,35.744758,22.737512)'>"
            KINGPATH="$PARTPATH/KH.xml"
            KINGTRANS="<g transform='matrix(0.12226123,0,0,0.15726123,35.729824,23.222816)'>"
            FILLVAL="fill:#df0000"
            TOPICONY="74.5"
            BOTTOMICONY="167.5"
            SUITX1="55"
            SUITX2="82.5"
            SUITX3="110"
            SUITX4="55"
            SUITX5="82.5"
            SUITX6="110"
            SUITY1="26.5"
            SUITY2="61.5"
            SUITY3="74"
            SUITY4="96.5"
            SUITY5="121.5"
            SUITY6="146.5"
            SUITY7="169"
            SUITY8="181.5"
            SUITY9="216.5"
            ACEX="82.5"
            ACEY="115"
            ROYALSUITX1="52"
            ROYALSUITX2="115"
            ROYALSUITY1="48"
            ROYALSUITY2="195" ;;
    esac
    for FACEVAL in ${CARDFACEVALS[@]}
    do
        if [ $QUIET == 'false' ] ; then echo Creating $FACEVAL of $SUIT; fi
        OUTFILE="$OUTFOLDER/$FACEVAL${SUIT:0:1}.svg"
        cat "$PARTPATH/start.svg" > "$OUTFILE"
        case $FACEVAL in
            2*) echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX2,$SUITY2)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX5,$SUITY8)'>$SUITPATH</g>" >> "$OUTFILE" ;;
            3*) echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX2,$SUITY2)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX2,$SUITY5)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX5,$SUITY8)'>$SUITPATH</g>" >> "$OUTFILE" ;;
            4*) echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY2)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY2)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX4,$SUITY8)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX6,$SUITY8)'>$SUITPATH</g>" >> "$OUTFILE" ;;
            5*) echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY2)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY2)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX2,$SUITY5)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX4,$SUITY8)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX6,$SUITY8)'>$SUITPATH</g>" >> "$OUTFILE" ;;
            6*) echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY2)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY2)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY5)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY5)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX4,$SUITY8)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX6,$SUITY8)'>$SUITPATH</g>" >> "$OUTFILE" ;;
            7*) echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY1)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY1)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX2,$SUITY3)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY5)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY5)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX4,$SUITY9)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX6,$SUITY9)'>$SUITPATH</g>" >> "$OUTFILE" ;;
            8*) echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY1)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY1)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX2,$SUITY3)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY5)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY5)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX5,$SUITY7)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX4,$SUITY9)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX6,$SUITY9)'>$SUITPATH</g>" >> "$OUTFILE" ;;
            9*) echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY1)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY1)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX2,$SUITY2)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY4)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY4)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX4,$SUITY6)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX6,$SUITY6)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX4,$SUITY9)'>$SUITPATH</g>" >> "$OUTFILE"
                echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX6,$SUITY9)'>$SUITPATH</g>" >> "$OUTFILE" ;;
            10*) echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY1)'>$SUITPATH</g>" >> "$OUTFILE"
                 echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY1)'>$SUITPATH</g>" >> "$OUTFILE"
                 echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX2,$SUITY2)'>$SUITPATH</g>" >> "$OUTFILE"
                 echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX1,$SUITY4)'>$SUITPATH</g>" >> "$OUTFILE"
                 echo "<g transform='matrix($SUITSCALE,0,0,$SUITSCALE,$SUITX3,$SUITY4)'>$SUITPATH</g>" >> "$OUTFILE"
                 echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX4,$SUITY6)'>$SUITPATH</g>" >> "$OUTFILE"
                 echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX6,$SUITY6)'>$SUITPATH</g>" >> "$OUTFILE"
                 echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX5,$SUITY8)'>$SUITPATH</g>" >> "$OUTFILE"
                 echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX4,$SUITY9)'>$SUITPATH</g>" >> "$OUTFILE"
                 echo "<g transform='matrix(-$SUITSCALE,0,0,-$SUITSCALE,$SUITX6,$SUITY9)'>$SUITPATH</g>" >> "$OUTFILE" ;;
            A*) echo "<g transform='matrix($ACESCALE,0,0,$ACESCALE,$ACEX,$ACEY)'>$SUITPATH</g>" >> "$OUTFILE" ;;
            J*) echoRoyalItems >> "$OUTFILE"
                echo "$JACKTRANS" >> "$OUTFILE"
                cat $JACKPATH >> "$OUTFILE"
                echo "</g>" >> "$OUTFILE" ;;
            Q*) echoRoyalItems >> "$OUTFILE"
                echo "$QUEENTRANS" >> "$OUTFILE"
                cat $QUEENPATH >> "$OUTFILE"
                echo "</g>" >> "$OUTFILE" ;;
            K*) echoRoyalItems >> "$OUTFILE"
                echo "$KINGTRANS" >> "$OUTFILE"
                cat $KINGPATH >> "$OUTFILE"
                echo "</g>" >> "$OUTFILE" ;;
        esac
        if [ $FACEVAL != "10" ]
        then
            case $SUIT in
                C*) TOPICONX="-54.5"; BOTTOMICONX="221.5" ;;
                D*) TOPICONX="18.2";  BOTTOMICONX="149.8" ;;
                S*) TOPICONX="18.5";  BOTTOMICONX="149.5" ;;
                H*) TOPICONX="17.7";  BOTTOMICONX="149.3" ;;
            esac
            echo "<!-- Top Number --><text style='font-size:$TEXTSIZE;letter-spacing:0px;$FILLVAL;font-family:$FONT' x='$TOPLETTERX' y='$TOPLETTERY'>$FACEVAL</text>" >> "$OUTFILE"
            echo "<!-- Top Icon --><g transform='matrix($ICONSCALE,0,0,$ICONSCALE,$TOPICONX,$TOPICONY)'>$SUITPATH</g>" >> "$OUTFILE"
            echo "<!-- Bottom Number --><text style='font-size:$TEXTSIZE;letter-spacing:0px;$FILLVAL;font-family:$FONT' x='$BOTTOMLETTERX' y='$BOTTOMLETTERY' transform='scale(-1)'>$FACEVAL</text>" >> "$OUTFILE"
            echo "<!-- Bottom Icon --><g transform='matrix(-$ICONSCALE,0,0,-$ICONSCALE,$BOTTOMICONX,$BOTTOMICONY)'>$SUITPATH</g>" >> "$OUTFILE"
        else
            case $SUIT in
                C*) TOPICONX="-51.5"; BOTTOMICONX="218.5" ;;
                D*) TOPICONX="20.7";  BOTTOMICONX="147.3" ;;
                S*) TOPICONX="20";    BOTTOMICONX="147" ;;
                H*) TOPICONX="19.2";  BOTTOMICONX="146.8" ;;
            esac
            echo "<!-- Top Number --><text style='font-size:50pt;letter-spacing:0px;$FILLVAL;font-family:$FONT' x='5' y='$TOPLETTERY'>1</text><text style='font-size:50pt;letter-spacing:0px;$FILLVAL;font-family:$FONT' x='15' y='$TOPLETTERY'>0</text>" >> "$OUTFILE"
            echo "<!-- Top Icon --><g transform='matrix(1.5,0,0,1.5,$TOPICONX,$TOPICONY)'>$SUITPATH</g>'" >> "$OUTFILE"
            echo "<!-- Bottom Number --><text style='font-size:50pt;letter-spacing:0px;$FILLVAL;font-family:$FONT' x='-162' y='$BOTTOMLETTERY' transform='scale(-1)'>1</text><text style='font-size:50pt;letter-spacing:0px;$FILLVAL;font-family:$FONT' x='-152' y='$BOTTOMLETTERY' transform='scale(-1)'>0</text>" >> "$OUTFILE"
            echo "<!-- Bottom Icon --><g transform='matrix(-1.5,0,0,-1.5,$BOTTOMICONX,$BOTTOMICONY)'>$SUITPATH</g>" >> "$OUTFILE"
        fi
        echo "</svg>" >> "$OUTFILE"
    done
    if [ $QUIET == 'false' ] ; then echo --------------------------------------; echo Done with $SUIT; fi
done
if [ $QUIET == 'false' ] ; then echo --------------------------------------; echo All finished - Enjoy; echo --------------------------------------; fi