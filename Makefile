all:
	typst compile resume-private/resume-en.typ resume-en-submit.pdf --input level=submit & \
	typst compile resume-private/resume-cn.typ resume-cn-submit.pdf --input level=submit & \
	typst compile resume-private/resume-en.typ resume-en-post.pdf --input level=post & \
	typst compile resume-private/resume-cn.typ resume-cn-post.pdf --input level=post & \
	wait
