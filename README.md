#archling,  ArchLinux, with i3WM, dwb, ranger and much more


I called this project 'archling'
These files can be build into an ISO with Archiso  https://wiki.archlinux.org/index.php/Archiso.
Software from The Arch Linux project.

Builds are only pushed to GitHub if they're considered stable to me.
Test are done by converting these files with archiso into an ISO, and running the ISO on VirtualBox and bare hardware.
Great care has been taken creating these files, however, there could always be something, 
not working for you. Please mail me, or search the ArchLinux wiki  https://wiki.archlinux.org.
or use the ArchLinux forum  https://bbs.archlinux.org to find your answer. 
By any means, please do not open new treads on the Arch boards about this build. 
Read the Arch forum etiquette  https://wiki.archlinux.org/index.php/Forum_Etiquette, before you do, thanks.
Or use the thread I used to announce this build, address will be added late.

Email (qinohe)[add](g(mail)(com)


##The build


* These files are for x86_64 only at the moment.
* ArchLinux, a rolling distro
* archiso, profile used: releng
* i3WM, improved tilling window manager
* dwb, a webkit browser, mostly keyboard driven and vi like shortcuts, lightweight
* ranger, curses interface, minimalistic, vi key bindings driven file manager
* Geany is a small and lightweight Integrated Development Environment.(IDE)
* This build is not about ease of use , but all about usability, there is no menu, no clickable
   DE/WM.
* No filemanager with icon's, almost all is keyboard driven, quick & to the point
* There is dmenu a lightweight dynamic X menu.
* Available for panel lovers, xfce4-panel, but not started by default, dynamically created.
* Many programs are installed with a graphic interface
* Much more, checkout packages.x86_64


##Building the files


Install archiso[extra] or archiso-git[AUR], the latter is what I build with.
Download the zip from my GitHub page  https://qinohe.github.com/archling  to your dowmload folder.
Create a folder (as user) in you're $HOME, and name it something like 'archling', you can name it what you like...
As root copy/move the unzipped files to the folder you just created.
Run './build.sh -v' and if everything goes well, the ISO will be created for you by archiso.
You may see some WARNING, about skipping the target(a lot), just ignore that, it should build your ISO just fine.
Depending on your harware, this might take a while, from 4 min. up to ….. (tell me)
Be sure to visit https://wiki.archlinux.org/index.php/Archiso  archiso wiki page, that made   
this whole project possible.


##Using the ISO


If the ISO  you build is used with VirtualBox, log out of X ( 'mod4+e' or 'mod4+t' does the trick) and back in, 
to get a full sized screen, if  everything goes well you should not have to repeat this..
If you have never worked with programs on this ISO, man pages are available on the build.
You are directly logged in as user 'ali'.
Both, user 'ali' and 'root' are shipped without a password.
Checkout Geany, some configs are opened up on start, as is dwb and ranger.


##Installing from the ISO


The arch-install-scripts are available on this ISO.
If you, wish to install this ISO as it is now, you need to create your own install file, or think creative...


##After this all


Like the project? 
Go ahaed, create your own ISO with archiso  https://wiki.archlinux.org/index.php/Archiso ,
if you already got the hang of dealing with Arch, this is a very nice learning project to undertake.
Hence you can just try, directly from this build, all you need is in the build to try archiso directly from the ISO, 
I wouldn't try to actually build the ISO, unless you have enough resources of course.


##Why I did it


archling Is an attempt to view ArchLinux and it's processes from a different angle, 
and to learn and get a better understanding of the install process. .
Because I like to have my own rescue, install and multi-purpose ISO, tailored for my own needs.
There may be to much software on this build, but I had set a limit to 700Mib and I stay well under that.


##Does it stop here


There will probably be changes to the build, 
Software will be added and removed.
It's possible configs change.



##Thanks


Special thanks go to my pal Erwin, how had to bare with all my talks about this build, thanks man.

Thank you Michael (i3WM.org) for making i3WM possible and for allowing me to use the offline HTML  i3WM user guide on this build

Thank you devs, who crated all application used on this build.

Of course all developers from Arch Linux project who made this whole project possible in the first place, 
and all people on the Arch board that helped me with my questions.

Thank you all, 
qinohe


##Disclaimer


It should go without saying,   you should check everything before you use the files.
These files do not exist as ISO or image on the internet. You are not allowed to redistribute or sell these files, 
without exclusive permission of all owners of products available on this build.
I have taken great care, not to violate owners-rights.
However, if there are files on this build, that are in any way violating copyright, copyleft or whatever 'right' you 'have' on the files, 
please contact me at (qinohe)[add](g(mail)(com) and I will remove the files . Thanks, qinohe
