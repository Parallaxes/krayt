#!/usr/bin/env python3

import argparse
import os
from pytubefix import YouTube

def main():
    # Parse command line arguments
    parser = argparse.ArgumentParser(description='Download YouTube video.')
    parser.add_argument('url', type=str, help='The URL of the YouTube video')
    args = parser.parse_args()

    # Define the download directory
    download_dir = os.path.join(os.path.expanduser('~'), 'Downloads', 'krayt')
    
    # Create the directory if it doesn't exist
    if not os.path.exists(download_dir):
        os.makedirs(download_dir)

    # Download the video
    try:
        yt = YouTube(args.url)
        stream = yt.streams.filter(file_extension='mp4').first()
        stream.download(output_path=download_dir)
        print(f"Video downloaded successfully to {download_dir}")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    main()