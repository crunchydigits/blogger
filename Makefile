
tex:
	./build_all_tex.py

clean:
	rm content/pdf/*.pdf 2>/dev/null || true

blog: tex
	pelican content -t ./themes/pelican-alchemy/alchemy


