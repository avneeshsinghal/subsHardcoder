for %f in (*.mkv) do (ffmpeg -n -i %~nf.mkv -filter_complex "subtitles= %~nf.mkv:force_style='FontName=Baar Sophia,BorderStyle=2,BorderSize=3.5,Shadow=0.7,MarginV=20,FontSize=35'" -c:v libx265 -crf 28 -c:a copy "%~nf".mp4)
	
	