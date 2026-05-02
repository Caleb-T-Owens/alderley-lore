PAGES=index.html\
      historical-accuracy.html\
      tale-of-unity.html

.PHONY: all
all: $(PAGES)

%.html: %.md style.css
	pandoc --standalone -f markdown -t html5 -o $@ -i $< -c style.css

clean:
	rm $(PAGES)
