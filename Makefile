
tex:
	./build_all_tex.py

clean_output:
	(cd ./output && (git ls-files | xargs git rm) && (git commit -am cleaning))

clean:
	rm content/pdf/*.pdf 2>/dev/null || true
	

blog: tex
	pelican content -t ./themes/pelican-alchemy/alchemy


