.PHONY: all
all: index.html tale-of-unity.html

index.html: index.md styles.css
	pandoc -f markdown -t html5 -o index.html -i index.md -c styles.css

tale-of-unity.html: tale-of-unity.md styles.css
	pandoc -f markdown -t html5 -o tale-of-unity.html -i tale-of-unity.md -c styles.css


