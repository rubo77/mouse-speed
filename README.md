mouse-speed
===========

Bash script to increase or decrease the mouse and touchpas speed

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



## Copyright and license

Copyright 2012 Twitter, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this work except in compliance with the License.
You may obtain a copy of the License in the LICENSE file, or at:

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

