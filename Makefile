all: en cn

en:
	typst compile resume.typ

cn:
	typst compile resume-cn.typ

