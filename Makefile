all: submit post

submit: en-submit cn-submit

post: en-post cn-post

en: en-submit en-post

cn: cn-submit cn-post

en-submit:
	typst compile resume-en.typ resume-en-submit.pdf --input level=submit

cn-submit:
	typst compile resume-cn.typ resume-cn-submit.pdf --input level=submit

en-post:
	typst compile resume-en.typ resume-en-post.pdf --input level=post

cn-post:
	typst compile resume-cn.typ resume-cn-post.pdf --input level=post
