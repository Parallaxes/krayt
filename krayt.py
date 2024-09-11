import os
import argparse
from pytubefix import YouTube

def main():
    # Parse command line arguments
    parser = argparse.ArgumentParser(description='Download YouTube video.')
    parser.add_argument('url', type=str, help='The URL of the YouTube video')
    args = parser.parse_args()

    # Define the download directory based on the operating system
    if os.name == 'nt':  # Windows
        download_dir = os.path.join(os.environ['USERPROFILE'], 'Downloads', 'krayt')
    else:  # Unix-like (Linux, macOS, etc.)
        download_dir = os.path.join(os.path.expanduser('~'), 'Downloads', 'krayt')
    
    # Create the directory if it doesn't exist
    if not os.path.exists(download_dir):
        os.makedirs(download_dir)

    # Download the video
    try:
        yt = YouTube(args.url)
        streams = yt.streams.filter(file_extension='mp4')
        
        # List available streams
        print("Available streams:")
        for i, stream in enumerate(streams):
            print(f"{i}: {stream.resolution} - {stream.mime_type}")

        # Prompt user to select a stream
        choice = int(input("Enter the number of the stream you want to download: "))
        selected_stream = streams[choice]

        # Download the selected stream
        selected_stream.download(output_path=download_dir)
        print("Download complete.")
        print(f"Video downloaded to: {download_dir}")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    main()