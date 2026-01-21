<a href="https://gitmoji.dev">
  <img
    src="https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg?style=flat-square"
    alt="Gitmoji"
  />
</a>

# Windows Utils
Welcome to my project "Windows Utils".
Here you will see a collection of scripts I find helpful when operating a Windows machine.
It is mainly repetitive tasks that save me time by automation

## I. Garbage disposal
The Garbagae Disposal script deletes all the items in the "Downloads" directory and empties out the Recycle Bin.
It runs in the background and triggers at 10AM. This way you start every day with a fresh trash can.

In order to not make the script use extra resources, I created a Basic Task in the Windows Task Scheduler. This Task triggers the 
Garbage Disposal script every day at 10AM.

!! Make sure to check the box saying "Run task as soon as possible after a scheduled start is missed
" in the Basic Task settings. Details of what this setting does exactly can be found here: https://web.archive.org/web/20230606232021/https://forsenergy.com/en-us/taskscheduler/html/d758ff5d-27d3-4090-b1c2-14ecaa83ff12.htm

### Next steps
1. Check how to handle a Downloads file being opened in another program