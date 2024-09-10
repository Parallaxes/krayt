# krayt
Tool to convert YouTube videos to locally downloadable files.
(Totally not just a wrapper of an already functioning library PyTube with a fancy CLI and PATH support)

## Set Up and Installation
> Make sure you have `python3` (should already be installed) and `pip`.
> You can install these using:
```console
sudo apt install python3 python3-pip
```

Run the setup script
```console
cd krayt/
./setup.sh
```
It will prompt to add to system PATH (support for running the standalone command). If you don't want to do this, just install pytube manually. You will not, however, be able to run it as a standalone command.


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
![Krayt Demo](https://github.com/Parallaxes/krayt/raw/main/kraytDemo.gif)
