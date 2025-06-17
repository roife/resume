all:
	typst compile resume-en.typ roife-resume-en.pdf --input level=submit & \
	typst compile resume-cn.typ roife-resume-cn.pdf --input level=submit & \
	typst compile resume-en.typ resume-en-post.pdf --input level=post & \
	typst compile resume-cn.typ resume-cn-post.pdf --input level=post & \
	wait
