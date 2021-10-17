# XTerm Control Sequences
# Select Graphic Rendition (SGR)
# For Bash Compatible shells
#
# Sources :
#     https://www.gnu.org/software/screen/manual/html_node/Control-Sequences.html
#     https://invisible-island.net/xterm/ctlseqs/ctlseqs.html
#         Search for <CSI Pm m  Character Attributes (SGR).>
#    https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797
#    https://en.wikipedia.org/wiki/ANSI_escape_code


# Utils
XTCS_ESC="\e"
XTCS_CSI="${XTCS_ESC}["
XTCS_SGR="m"

xtcs-sgr-mkcode () {
    echo "${XTCS_CSI}${1}${XTCS_SGR}"
}

# All Codes
XTCS_SGR_RST="$(        xtcs-sgr-mkcode 0)"         # Reset All attributes
XTCS_SGR_BOL="$(        xtcs-sgr-mkcode 1)"         # Bold
XTCS_SGR_DIM="$(        xtcs-sgr-mkcode 2)"         # Dim
XTCS_SGR_ITA="$(        xtcs-sgr-mkcode 3)"         # Italic
XTCS_SGR_UND="$(        xtcs-sgr-mkcode 4)"         # Underline
XTCS_SGR_SBL="$(        xtcs-sgr-mkcode 5)"         # Slow Blink
XTCS_SGR_RBL="$(        xtcs-sgr-mkcode 6)"         # Rapid Blink
XTCS_SGR_REV="$(        xtcs-sgr-mkcode 7)"         # Reverse Foreground/Background
XTCS_SGR_HID="$(        xtcs-sgr-mkcode 8)"         # Hide
XTCS_SGR_STR="$(        xtcs-sgr-mkcode 9)"         # Strikethrough

XTCS_SGR_PRIFT="$(      xtcs-sgr-mkcode 10)"        # Primary Font
XTCS_SGR_ALFT1="$(      xtcs-sgr-mkcode 11)"        # Alternative Font 1
XTCS_SGR_ALFT2="$(      xtcs-sgr-mkcode 12)"        # Alternative Font 2
XTCS_SGR_ALFT3="$(      xtcs-sgr-mkcode 13)"        # Alternative Font 3
XTCS_SGR_ALFT4="$(      xtcs-sgr-mkcode 14)"        # Alternative Font 4
XTCS_SGR_ALFT5="$(      xtcs-sgr-mkcode 15)"        # Alternative Font 5
XTCS_SGR_ALFT6="$(      xtcs-sgr-mkcode 16)"        # Alternative Font 6
XTCS_SGR_ALFT7="$(      xtcs-sgr-mkcode 17)"        # Alternative Font 7
XTCS_SGR_ALFT8="$(      xtcs-sgr-mkcode 18)"        # Alternative Font 8
XTCS_SGR_ALFT9="$(      xtcs-sgr-mkcode 19)"        # Alternative Font 9
XTCS_SGR_FRAKT="$(      xtcs-sgr-mkcode 20)"        # Fraktur

XTCS_SGR_DBLUND="$(     xtcs-sgr-mkcode 21)"        # Double Underline OR Reset Bold
XTCS_SGR_RSTDIM="$(     xtcs-sgr-mkcode 22)"        # Reset Dim AND Bold
XTCS_SGR_RSTITA="$(     xtcs-sgr-mkcode 23)"        # Reset Italic AND Fraktur
XTCS_SGR_RSTUND="$(     xtcs-sgr-mkcode 24)"        # Reset Underline AND Double Underline
XTCS_SGR_RSTSBL="$(     xtcs-sgr-mkcode 25)"        # Reset Slow Blink
XTCS_SGR_RSTRBL="$(     xtcs-sgr-mkcode 26)"        # Reset Rapid Blink
XTCS_SGR_RSTREV="$(     xtcs-sgr-mkcode 27)"        # Reset Reverse Foreground/Background
XTCS_SGR_RSTHID="$(     xtcs-sgr-mkcode 28)"        # Reset Hide
XTCS_SGR_RSTSTR="$(     xtcs-sgr-mkcode 29)"        # Reset Strikethrough

XTCS_SGR_FGBLA="$(      xtcs-sgr-mkcode 30)"        # Foreground color (Black)
XTCS_SGR_FGRED="$(      xtcs-sgr-mkcode 31)"        # Foreground color (Red)
XTCS_SGR_FGGRE="$(      xtcs-sgr-mkcode 32)"        # Foreground color (Green)
XTCS_SGR_FGYEL="$(      xtcs-sgr-mkcode 33)"        # Foreground color (Yellow)
XTCS_SGR_FGBLU="$(      xtcs-sgr-mkcode 34)"        # Foreground color (Blue)
XTCS_SGR_FGMAG="$(      xtcs-sgr-mkcode 35)"        # Foreground color (Magenta)
XTCS_SGR_FGCYA="$(      xtcs-sgr-mkcode 36)"        # Foreground color (Cyan)
XTCS_SGR_FGWHI="$(      xtcs-sgr-mkcode 37)"        # Foreground color (White)
XTCS_SGR_FG256="$(      xtcs-sgr-mkcode 38)"        # Foreground 256 color      # DO NOT USE AS IT # Need more arguments
XTCS_SGR_RSTFG="$(      xtcs-sgr-mkcode 39)"        # Reset Foreground color

XTCS_SGR_BGBLA="$(      xtcs-sgr-mkcode 40)"        # Background color (Black)
XTCS_SGR_BGRED="$(      xtcs-sgr-mkcode 41)"        # Background color (Red)
XTCS_SGR_BGGRE="$(      xtcs-sgr-mkcode 42)"        # Background color (Green)
XTCS_SGR_BGYEL="$(      xtcs-sgr-mkcode 43)"        # Background color (Yellow)
XTCS_SGR_BGBLU="$(      xtcs-sgr-mkcode 44)"        # Background color (Blue)
XTCS_SGR_BGMAG="$(      xtcs-sgr-mkcode 45)"        # Background color (Magenta)
XTCS_SGR_BGCYA="$(      xtcs-sgr-mkcode 46)"        # Background color (Cyan)
XTCS_SGR_BGWHI="$(      xtcs-sgr-mkcode 47)"        # Background color (White)
XTCS_SGR_BG256="$(      xtcs-sgr-mkcode 48)"        # Background 256 color      # DO NOT USE AS IT # Need more arguments
XTCS_SGR_RSTBG="$(      xtcs-sgr-mkcode 49)"        # Reset Background color

XTCS_SGR_DISSPA="$(     xtcs-sgr-mkcode 50)"        # Disable proportionnal Spacing
XTCS_SGR_FRAMED="$(     xtcs-sgr-mkcode 51)"        # Framed
XTCS_SGR_ENCIRC="$(     xtcs-sgr-mkcode 52)"        # Encircled
XTCS_SGR_OVERLI="$(     xtcs-sgr-mkcode 53)"        # Overlined
XTCS_SGR_RSTFREC="$(    xtcs-sgr-mkcode 54)"        # Reset Framed AND Encircled
XTCS_SGR_RSTOVE="$(     xtcs-sgr-mkcode 55)"        # Reset Overlined

XTCS_SGR_UND256="$(     xtcs-sgr-mkcode 58)"        # Underline 256 color       # DO NOT USE AS IT # Need more arguments
XTCS_SGR_RSTUND256="$(  xtcs-sgr-mkcode 59)"        # Reset Underline color
XTCS_SGR_IDGUNDRSL="$(  xtcs-sgr-mkcode 60)"        # Ideogram Underline OR Right side line
XTCS_SGR_DBLUNDRSL="$(  xtcs-sgr-mkcode 61)"        # Ideogram Double Underline OR Double Right side line
XTCS_SGR_IDGOVRLSL="$(  xtcs-sgr-mkcode 62)"        # Ideogram Overline OR Left side line
XTCS_SGR_DBLOVRLSL="$(  xtcs-sgr-mkcode 63)"        # Ideogram Double Overline OR Double Left side line
XTCS_SGR_IDESTRMRK="$(  xtcs-sgr-mkcode 64)"        # Ideogram Stress Marking
XTCS_SGR_RSTIDE="$(     xtcs-sgr-mkcode 65)"        # Reset Ideogram attributes

XTCS_SGR_SUP="$(        xtcs-sgr-mkcode 73)"        # Superscript
XTCS_SGR_SUB="$(        xtcs-sgr-mkcode 74)"        # Subscript

XTCS_SGR_FGBBLA="$(     xtcs-sgr-mkcode 90)"        # Bright Foreground color (Black)
XTCS_SGR_FGBRED="$(     xtcs-sgr-mkcode 91)"        # Bright Foreground color (Red)
XTCS_SGR_FGBGRE="$(     xtcs-sgr-mkcode 92)"        # Bright Foreground color (Green)
XTCS_SGR_FGBYEL="$(     xtcs-sgr-mkcode 93)"        # Bright Foreground color (Yellow)
XTCS_SGR_FGBBLU="$(     xtcs-sgr-mkcode 94)"        # Bright Foreground color (Blue)
XTCS_SGR_FGBMAG="$(     xtcs-sgr-mkcode 95)"        # Bright Foreground color (Magenta)
XTCS_SGR_FGBCYA="$(     xtcs-sgr-mkcode 96)"        # Bright Foreground color (Cyan)
XTCS_SGR_FGBWHI="$(     xtcs-sgr-mkcode 97)"        # Bright Foreground color (White)

XTCS_SGR_BGBBLA="$(     xtcs-sgr-mkcode 100)"       # Bright Background color (Black)
XTCS_SGR_BGBRED="$(     xtcs-sgr-mkcode 101)"       # Bright Background color (Red)
XTCS_SGR_BGBGRE="$(     xtcs-sgr-mkcode 102)"       # Bright Background color (Green)
XTCS_SGR_BGBYEL="$(     xtcs-sgr-mkcode 103)"       # Bright Background color (Yellow)
XTCS_SGR_BGBBLU="$(     xtcs-sgr-mkcode 104)"       # Bright Background color (Blue)
XTCS_SGR_BGBMAG="$(     xtcs-sgr-mkcode 105)"       # Bright Background color (Magenta)
XTCS_SGR_BGBCYA="$(     xtcs-sgr-mkcode 106)"       # Bright Background color (Cyan)
XTCS_SGR_BGBWHI="$(     xtcs-sgr-mkcode 107)"       # Bright Background color (White)



# Shortcuts
## These shortcuts MUST be combined with a color code or shortcut
CLR_FGN="${XTCS_CSI}3"                              # Normal Foreground color
CLR_BGN="${XTCS_CSI}4"                              # Normal Background color
CLR_FGB="${XTCS_CSI}9"                              # Bright Foreground color
CLR_BGB="${XTCS_CSI}10"                             # Bright Background color
CLR_FG8="${XTCS_CSI}38"                             # Foreground 256 color
CLR_BG8="${XTCS_CSI}48"                             # Background 256 color

CLR_BLA="0${XTCS_SGR}"                              # Black
CLR_RED="1${XTCS_SGR}"                              # Red
CLR_GRE="2${XTCS_SGR}"                              # Green
CLR_YEL="3${XTCS_SGR}"                              # Yellow
CLR_BLU="4${XTCS_SGR}"                              # Blue
CLR_MAG="5${XTCS_SGR}"                              # Magenta
CLR_CYA="6${XTCS_SGR}"                              # Cyan
CLR_WHI="7${XTCS_SGR}"                              # White
