Welcome to PeerBlock!


Platform Support
-
PeerBlock currently supports Windows XP, 2003, Vista, 2008, 7, 8, 8.1 and 10 in 32-bit and 64-bit.


Source Code
-
PeerBlock is available freely under a zlib License (LICENSE.md).  Please
make sure you understand it well before messing with the included source.
Though not required, we would love to hear from you at the PeerBlock forums
if you use it.


Links
-
- http://www.peerblock.com                PeerBlock Website
- http://forums.peerblock.com             PeerBlock Forums
- http://code.google.com/p/peerblock/     PeerBlock Source Code


Open Source
-
PeerBlock makes use of a number of third-party libraries, see
thirdparty\readme.txt for more information.


PeerBlock Credits
-
- Mark Bulas (MarkSide)               /Lead Developer
- night_stalker_z                     /Core Team
- XhmikosR                            /Core Team
- Jason Casimir                       /Contributor
- A. Jesse Harper (DarC / DisCoStu)   /Contributor
- Ashus                               /Contributor

Test Team:
- 2Ceedz, brandonjm8, gip, Petri Nurmi (Keefa), KindOne (ineedalifetoday),
LANsquared, opus, Praeses (PraesesZA), RavenSoft, Tran Dinh Thien (Tippy/Thikku),
Uzerrr, ZeroCoolXP

Documentation:
- Nathan van der Velden (hoodadilly)  Documentation
- Martin Eilbeck (Freelandr)          Start with Windows Tutorial

Website:
- Brian Quinn (ss18)                  Site Admin
- Rob Robinson (RobrPatty)            Forum Moderator
- Jesse Hall (Jessay)                 Web Design
- LANsquared                          Hosting


PeerGuardian 2 Credits
-
PeerBlock is based upon the earlier PeerGuardian 2 work.  Many thanks to Cory
Nelson and his Phoenix Labs crew (http://www.phoenixlabs.org) for creating
PG2, and for making it open-source so that after they abandoned it we could
pick it up and resurrect it!


Current requirements
-
There is noone to buy an official certificate from Microsoft. Without it, in order to run this release, you need to lower system security a bit. 
As [this article](http://maxedtech.com/about-testmode/) correctly states, you have to use **Test Signing mode** forever or **Disable Driver Signature Enforcement** on each reboot.


Local bind interface configuration
-
After you run the PeerBlock for the first time, close it and open `peerblock.conf` from installation directory. There is an option `LocalBoundIpv4` where you can bind PeerBlock to a specific interface, respectively to an source IP address. If this value is filled with a valid IP, PeerBlock will only block requests to addresses from blocklists if they come from specific local address.

Use case of this feature is as follows:

####Preconditions
- you want to use uTorrent in background and protect yourself
- you want to be able to use unlimited legal traffic with IP addresses in blocklists (for example Steam to download content or use Skype)

####Requirements
- you have two ethernet connections to internet

####Procedure
- configure one of the interfaces as default using lowering IPv4 stack metric. Most applications will use this as TCP/IP stack will have this as default gateway.
- bind the other interface's IP to uTorrent - Settings - Advanced - net.bind_ip and net.outgoing_ip
- close PeerBlock, bind the other interface's IP to PeerBlock, start PeerBlock again
