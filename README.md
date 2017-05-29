# mouse-speed

mouse-speed is a bash script to increase or decrease the speed of your mouse and touchpad.  
The main usage is to slow down the mouse as a penalty in the RSI-tool `typebreak` also installed by this package.
`typebreak` warns you every 10 minutes to focus some far objects. Eye breaks are essential to the typist. These entail simply looking away from the computer screen every so often (every 15 minutes) and focusing on a distant object or picture for about 30 seconds. Constantly looking at a computer screen impedes blinking, which in turn affects the amount of lubricant added to the eye. 

### usage
decellerate the mouse for 50%:
> mouse-speed -d 50

accelerate the mouse for 50%
> mouse-speed -a 50

reset mouse speed to 100%
> mouse-speed -r 

set mouse speed to 30%
> mouse-speed -s 30


## typebreak
 * Simply copy `mouse-speed` and `typebreak` into `/usr/bin/` and make it executable.
 * Add typebreak to your startup programs.

### Implementation in Workrave
Implementation is easy, see https://github.com/rcaelers/workrave/pull/47

### Implementation in RSIBreak
In [RSIBreak](https://apps.ubuntu.com/cat/applications/precise/rsibreak/) this is especially useful:

you can set this program, to start, when a microbreak starts 
and with another option to reset to default speed only when a micro-break successfully ends.

if you disable the "skip" button in RSIBreak preferences, then the only solution for you to continue working without taking the break
would be to postpone the break, which would not trigger the end-event, that only fires, if the microbreak ends.

options for the start of a "micro-break":
> mouse-speed -d 50

Option to for when a "micro-break" ends:
> mouse-speed -r

## Palm detection
I also created a script that auto detects your touchpad and sets the palm detection to a reasonable value, call this on the console for verbose output with
```
palm-decection-on -v
```
copy `palm-decection-on` to `/usr/bin/` and make it executable.
 * Add palm-decection-on to your startup programs.

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
