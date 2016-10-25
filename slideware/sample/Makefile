filename=presentation_1

pdf: out
	pdflatex --shell-escape --output-directory=out ${filename}.tex

out:
	mkdir out

clean:
	rm -r out
	rm *.pdf
	rm *.pdf_tex

view: pdf
	xdg-open out/${filename}.pdf
