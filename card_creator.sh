CARDFACEVALS=("A" "2" "3" "4" "5" "6" "7" "8" "9" "10" "J" "Q" "K")
CARDSUITS=("Clubs" "Diamonds" "Spades" "Hearts")
OUTFOLDER="cards-svg-new-simple"

TEXTSIZE="50pt"
TOPLETTERX="5"
TOPLETTERY="55"
ICONSCALE="1.5"
BOTTOMLETTERX="-163"
BOTTOMLETTERY="-187"
BOTTOMICONX="216.5"
BOTTOMICONY="202"

echo Creating directory $OUTFOLDER
mkdir -p $OUTFOLDER

for SUIT in ${CARDSUITS[@]}
do
echo --------------------------------------
echo Working on $SUIT
echo --------------------------------------
case $SUIT in
    C*) SUITPATH="<path d='m 50.291466,22.698228 c 0,0 2.375,-1.9 2.375,-4.534 0,-1.542 -1.369,-4.102 -4.534,-4.102 -3.165,0 -4.534,2.561 -4.534,4.102 0,2.634 2.375,4.534 2.375,4.534 -2.638,-2.055 -7.341,-0.652 -7.341,3.455 0,2.056 1.68,4.318 4.318,4.318 3.165,0 4.534,-3.455 4.534,-3.455 0,0 0.402,3.938 -1.943,6.046 h 5.182 c -2.345,-2.107 -1.943,-6.046 -1.943,-6.046 0,0 1.369,3.455 4.534,3.455 2.639,0 4.318,-2.263 4.318,-4.318 0,-4.107 -4.703,-5.51 -7.341,-3.455 z' style='fill:#000000' />"; FILLVAL="fill:#000000;"; TOPICONX="-49.5"; TOPICONY="40"; BOTTOMICONX="216.5"; BOTTOMICONY="202" ;;
    D*) SUITPATH="<path style='fill:#df0000' d='M 3.2433274,-4.7253274 C 1.1263274,-7.5893274 0,-10.5 0,-10.5 c 0,0 -1.1263274,2.9106726 -3.2433274,5.7746726 C -5.3613274,-1.8623274 -8,0 -8,0 -8,0 -5.3613274,1.8613274 -3.2433274,4.7263274 -1.1263274,7.5893274 0,10.5 0,10.5 0,10.5 1.1263274,7.5893274 3.2433274,4.7263274 5.3613274,1.8613274 8,0 8,0 8,0 5.3613274,-1.8623274 3.2433274,-4.7253274 z' />"; FILLVAL="fill:#df0000"; TOPICONX="23.2"; TOPICONY="75.2"; BOTTOMICONX="145.8"; BOTTOMICONY="167.8" ;;
    S*) SUITPATH="<path d='M 7.989,3.103 C 7.747,-0.954 0.242,-8.59 0,-10.5 c -0.242,1.909 -7.747,9.545 -7.989,13.603 -0.169,2.868 1.695,4.057 3.39,4.057 1.8351685,-0.021581 3.3508701,-2.8006944 3.873,-3.341 0.242,0.716 -1.603,6.682 -2.179,6.682 l 5.811,0 C 2.33,10.501 0.485,4.535 0.727,3.819 1.1841472,4.3152961 2.5241276,7.0768295 4.601,7.16 6.295,7.159 8.158,5.971 7.989,3.103 z' style='fill:#000000' />"; FILLVAL="fill:#000000;"; TOPICONX="23.5"; TOPICONY="74.5"; BOTTOMICONX="145.5"; BOTTOMICONY="167.5" ;;
    H*) SUITPATH="<path style='fill:#df0000' d='M 3.676,-9 C 0.433,-9 0,-5.523 0,-5.523 0,-5.523 -0.433,-9 -3.676,-9 -5.946,-9 -8,-7.441 -8,-4.5 -8,-0.614 -1.4208493,3.2938141 0,9 1.35201,3.2985969 8,-0.614 8,-4.5 8,-7.441 5.946,-9 3.676,-9 z' />"; FILLVAL="fill:#df0000"; TOPICONX="22.7"; TOPICONY="74.4"; BOTTOMICONX="145.3"; BOTTOMICONY="167.6" ;;
esac
    for FACEVAL in ${CARDFACEVALS[@]}
    do
        echo Creating $FACEVAL of $SUIT.
        OUTFILE="$OUTFOLDER/$FACEVAL${SUIT:0:1}.svg"
        cat start.svg > "$OUTFILE"
        if [ $FACEVAL != "10" ]
        then
            echo "<!-- Top Number --><text style='font-size:$TEXTSIZE;letter-spacing:0px;$FILLVAL;font-family:Arial' x='$TOPLETTERX' y='$TOPLETTERY'>$FACEVAL</text>" >> "$OUTFILE"
            echo "<!-- Top Icon --><g transform='matrix($ICONSCALE,0,0,$ICONSCALE,$TOPICONX,$TOPICONY)'>$SUITPATH</g>" >> "$OUTFILE"
            echo "<!-- Bottom Number --><text style='font-size:$TEXTSIZE;letter-spacing:0px;$FILLVAL;font-family:Arial' x='$BOTTOMLETTERX' y='$BOTTOMLETTERY' transform='scale(-1)'>$FACEVAL</text>" >> "$OUTFILE"
            echo "<!-- Bottom Icon --><g transform='matrix(-$ICONSCALE,0,0,-$ICONSCALE,$BOTTOMICONX,$BOTTOMICONY)'>$SUITPATH</g>" >> "$OUTFILE"
        else
            case $SUIT in
                C*) TOPICONX="-42.5"; BOTTOMICONX="209.5" ;;
                D*) TOPICONX="28.2"; BOTTOMICONX="135.8" ;;
                S*) TOPICONX="28.5"; BOTTOMICONX="135.5" ;;
                H*) TOPICONX="27.7"; BOTTOMICONX="135.3" ;;
            esac

            echo "<!-- Top Number --><text style='font-size:50pt;letter-spacing:0px;$FILLVAL;font-family:Arial' x='-5' y='55'>1</text><text style='font-size:50pt;letter-spacing:0px;$FILLVAL;font-family:Arial' x='20' y='55'>0</text>" >> "$OUTFILE"
            echo "<!-- Top Icon --><g transform='matrix(1.5,0,0,1.5,$TOPICONX,$TOPICONY)'>$SUITPATH</g>'" >> "$OUTFILE"
            echo "<!-- Bottom Number --><text style='font-size:50pt;letter-spacing:0px;$FILLVAL;font-family:Arial' x='-172' y='-187' transform='scale(-1)'>1</text><text style='font-size:50pt;letter-spacing:0px;$FILLVAL;font-family:Arial' x='-147' y='-187' transform='scale(-1)'>0</text>" >> "$OUTFILE"
            echo "<!-- Bottom Icon --><g transform='matrix(-1.5,0,0,-1.5,$BOTTOMICONX,$BOTTOMICONY)'>$SUITPATH</g>" >> "$OUTFILE"
        fi

        echo "</svg>" >> "$OUTFILE"
    done
done