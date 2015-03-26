all: paper_final.pdf

paper_final.pdf: paper.pdf attachment.pdf
	pdftk paper.pdf attachment.pdf cat output paper_final.pdf

paper.pdf: paper.docx
	lowriter --convert-to pdf paper.docx

attachment.pdf: attachment.tex
	pdflatex attachment.tex

attachment.tex: figures/image1.png	

figures/image1.png: figures/image1.R
	cd figures/ && R CMD BATCH image1.R

clean:
	rm -f figures/*.png figures/Rplots.* figures/*.Rout
	rm -f *.pdf *.log *.aux
