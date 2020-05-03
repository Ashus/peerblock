# Compiling

So you'd like to compile PeerBlock, and maybe help out with our development efforts?  Great!  This page will help you get started.  Yes it's rather long, but that's just because we're trying to cover all the bases for you.
 

Prerequisites
-------------

There are a few things you'll need to have installed on your machine in order to get PeerBlock to build.

### MS Visual Studio

First off, you'll need a version of Visual Studio, or at least the Visual C++ component of it. Additionally, you'll need to install a few dependencies to be able to compile PeerBlock.


-   Get it Here:  [MS Visual Studio 2019 Community edition](https://visualstudio.microsoft.com/downloads/)

### MS Windows SDK

It is highly recommended that you download a new version of the Microsoft Windows SDK. When installing the SDK, make sure it is connected to your Visual Studio version. 

This is a free download from Microsoft, and includes just about everything you'd need to compile any sort of Windows program.  Because of this, it's rather large - somewhere around 1.5 GB.

-   Get it Here:  [MS Windows SDK](https://developer.microsoft.com/windows/downloads/windows-10-sdk/)

### MS Windows WDK (older version)

Similar to the above Windows SDK, the WDK is required in order to build drivers like the `pbfilter.sys` PeerBlock uses to filter network connections.  This is another free download from Microsoft, and should be somewhere around 500 MB.

Please note that you should download a slightly older version of the WDK, as we have not yet officially moved on to the newer one since it removes support for Windows 2000.

-   Get it Here:  [Windows Driver Kit Version 7.1.0](https://www.microsoft.com/en-us/download/details.aspx?id=11800)

### Installer (InnoSetup)

If you'd like to build the Installer package, you'll also need to download the InnoSetup "QuickStart Pack" (ispack).

-   Get it Here:  [InnoSetup 5.6.1 unicode](http://files.jrsoftware.org/is/5/innosetup-5.6.1-unicode.exe) (last version supporting Windows XP through latest)



Initial Configuration
---------------------

Before you can compile PeerBlock, there are a few more things you'll need to set up on your machine.

### Environment Variable

In order to get Visual Studio to use the WDK you've installed, you'll need to set up an environment variable to point to the directory into which you've installed the WDK.  Right-click on "My Computer", and select Properties.  Then select to "Advanced" tab if you're on Windows XP, or select "Advanced system settings" if you're using Windows Vista/7.  Now click the "Environment Variables" button.  Under "User variables" click "New...", and enter a Name of `PB_DDK_DIR` (without the quotes, of course) and a Value of wherever you installed the WDK, eg. `C:\WinDDK\7600.16385.1`  Then click OK, and then OK again, to close these windows.

### Download Source Code

Create a directory on your system to hold the PeerBlock source code. Clone the repository inside using your favourite Git tool (maybe TortoiseGit?).



Build It!
---------

You're almost there!

Double-click on the `peerblock.sln` file to open it in Visual Studio.  Select the appropriate Build and Platform type ("Release" for Windows 2000/XP, "Release (Vista)" for Windows Vista/7/8/10; "Win32" for 32-bit, "x64" for 64-bit), and then Build -\> Build Solution and watch it compile!

If you intend to pack it into an installer, please build all 4 combinations.

Please note that some of the Debug variants don't currently work yet, so probably aren't worth bothering with.



Sign It!
--------

If you're running more recent Windows versions, things are going to be a bit more annoying...  The problem is, those versions of Windows will not let you load a driver unless that driver's been signed.

Regarding self-signed certificates and Windows 10 as of build 1909: It doesn't matter here if the certificate is signed by a certificate added as trusted CA or added into local system trusted Publisher store, once the driver is not signed by certificate directly by Microsoft, your options are limited:

In order to use **Test Signing mode** or **Disable Driver Signature Enforcement**, both procedures require you to have the `pbfilter.sys` file signed with any certificate and timestamped. You can use `sign_pb.cmd` to sign the compiled binaries.  

Unfortunately this version already requires modified `pbfilter.sys`, so replacing `pbfilter.sys` from the latest official PeerBlock wouldn't work anymore.

It's a pain, sure, but there's just no good way around it.
 

Pack It!
--------
To pack it, double-click the setup.iss and click compile or run.


What Next?
----------

Now that you have PeerBlock building successfully for you, why not get in contact with us to let us know?  Just [send us an email](http://tinymailto.com/peerblock) and we can talk more about what you'd be interested in working on, submitting patches, getting you in-sync with our Dev Team, and all the rest of that.  Please also contact us if you have any problems getting PeerBlock to compile, or if you have any feedback on this page.

Note that our source-code is open-source (hosted at [Google Code](http://code.google.com/p/peerblock/)) and licensed under the [zlib/libpng](http://opensource.org/licenses/zlib-license.php) license.  If you're planning on doing anything interesting with our code make sure you understand that license.  And make sure to let us know, too - we'd love to hear about it!
