ifndef JOBS
  JOBS := $(shell nproc)
endif
MAKEFLAGS += -j$(JOBS)

.PHONY: all clean

all: roife-resume-cn.pdf roife-resume-en.pdf resume-cn-post.pdf resume-en-post.pdf

clean:
	rm roife-resume-cn.pdf roife-resume-en.pdf resume-cn-post.pdf resume-en-post.pdf

roife-resume-cn.pdf: resume-cn.typ
	typst compile resume-cn.typ roife-resume-cn.pdf --input level=submit

roife-resume-en.pdf: resume-en.typ
	typst compile resume-en.typ roife-resume-en.pdf --input level=submit

resume-cn-post.pdf: resume-cn.typ
	typst compile resume-cn.typ resume-cn-post.pdf --input level=post

resume-en-post.pdf: resume-en.typ
	typst compile resume-en.typ resume-en-post.pdf --input level=post
