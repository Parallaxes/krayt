# krayt
Tool to convert YouTube videos to locally downloadable files.
(Totally not just a wrapper of an already functioning library PyTube with a fancy CLI and PATH support)

## To-Do:
- Write libraries from scratch! Using a pre-built library to do everything here is perhaps a bit lame

## Set Up and Installation

### Clone the repo
```console
git clone https://github.com/Parallaxes/krayt.git
```

### Set Up
> Make sure you have `python3` (should already be installed) and `pip`.

**For Ubuntu/Debian:**
> You can install these using:
```console
sudo apt install python3 python3-pip
```

**For Windows:**
> Python and Pip usually come pre-installed, but if they aren't, you can always install them manually at https://www.python.org/downloads/
> Check versions using:
```console
python --version
pip --version
```

### Run the setup script

**For Ubuntu/Debian:**
```console
cd krayt/
./setup.sh
```
It will prompt to add to system PATH (support for running the standalone command). If you don't want to do this, just install pytube manually. You will not, however, be able to run it as a standalone command.

**For Windows:**
> You can run this from the command line
```console
C:\krayt> setup.bat
```
> Or from the file system (`setup.bat`)


## Usage

You can just run this command (if you allowed adding to PATH):
```console
krayt [URL]
```

Downloaded files can be found under `~/Downloads/krayt/`

### Example Usage

```console
parallaxis@ASOOS:~$ krayt https://www.youtube.com/watch?v=vNh1KBRluC0
Available streams:
0: 360p - video/mp4
1: 2160p - video/mp4
2: 1440p - video/mp4
3: 1080p - video/mp4
4: 1080p - video/mp4
5: 720p - video/mp4
6: 720p - video/mp4
7: 480p - video/mp4
8: 480p - video/mp4
9: 360p - video/mp4
10: 360p - video/mp4
11: 240p - video/mp4
12: 240p - video/mp4
13: 144p - video/mp4
14: 144p - video/mp4
15: None - audio/mp4
16: None - audio/mp4
Enter the number of the stream you want to download: 3
Video downloaded successfully to /home/parallaxis/Downloads/krayt
```

```console
C:\krayt> krayt https://www.youtube.com/watch?v=vNh1KBRluC0
Available streams:
0: 360p - video/mp4
1: 2160p - video/mp4
2: 1440p - video/mp4
3: 1080p - video/mp4
4: 1080p - video/mp4
5: 720p - video/mp4
6: 720p - video/mp4
7: 480p - video/mp4
8: 480p - video/mp4
9: 360p - video/mp4
10: 360p - video/mp4
11: 240p - video/mp4
12: 240p - video/mp4
13: 144p - video/mp4
14: 144p - video/mp4
15: None - audio/mp4
16: None - audio/mp4
Enter the number of the stream you want to download: 3
Download complete.
Video downloaded to: C:\Users\Parallaxis\Downloads\krayt
```
_Note: you will have to run the krayt command from the krayt directory. I have not found a fix for this, but hoping to add soon :)_

![Krayt Demo](https://github.com/Parallaxes/krayt/raw/main/kraytDemo.gif)


https://github.com/user-attachments/assets/4b0af28e-cff0-482a-9df8-8d88a593beb8


