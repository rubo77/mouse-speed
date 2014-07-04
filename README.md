#mouse-speed

Bash script to increase or decrease the speed of your mouse and touchpad

### usage
decellerate the mouse for 50%:
> mouse-speed -d 50

accelerate the mouse for 50%
> mouse-speed -a 50

reset mouse speed to 100%
> mouse-speed -r 

set mouse speed to 30%
> mouse-speed -s 30


## Implementation in RSIBreak
In [RSIBreak](https://apps.ubuntu.com/cat/applications/precise/rsibreak/) this is especially useful:

you can set this program, to start, when a microbreak starts 
and with another option to reset to default speed only when a micro-break successfully ends.

if you disable the "skip" button in RSIBreak preferences, then the only solution for you to continue working without taking the break
would be to postpone the break, which would not trigger the end-event, that only fires, if the microbreak ends.

options for the start of a "micro-break":
> mouse-speed -d 50

Option to for when a "micro-break" ends:
> mouse-speed -r

## Installation
In case you use a touchpad without the string "touchpad" in its identifier string adapt the first few configuration lines:  
the variable TOUCHPAD_STRING should contain an unambiguous part of the Identifier string you will get if you enter
> xinput --list --short

## Author

**Ruben Barkow**

+ http://coffeeplusplus.z11.de

An ergonomic alternative keyboard-layout for typing with both hands and optional with only one (english and german)


## Copyright and license

This code is covered by the [GNU General Public License 3](http://www.gnu.org/copyleft/gpl.html).
