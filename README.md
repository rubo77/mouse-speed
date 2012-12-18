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
In RSIBreak this has a special effect:
http://packages.ubuntu.com/search?keywords=rsibreak

you can set this program, to start, when a microbreak starts 
and with another option when a micro-break ends.

if you disable the "skip" button in RSIBreak, then the only solution for you to continue working 
is to postpone the break, which does not trigger the event, that only fires, if the microbreak ends.

options for start of a "micro-break":
> mouse-speed -d 50

Option to define when a "micro-break" ends:
> mouse-speed -r


## Author

**Ruben Barkow**

+ http://coffeeplusplus.z11.de

An ergonomic alternative keyboard-layout for typing with both hands and optional with only one (english and german)


## Copyright and license

This code is covered by the [GNU General Public License 3](http://www.gnu.org/copyleft/gpl.html).
