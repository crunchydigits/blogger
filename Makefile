tex:
	./build_all_tex.py

clean:
	rm content/pdf/*.pdf 2>/dev/null || true
	
clean_output:
	(cd ./output && (git ls-files | xargs git rm >2/dev/null || true) && (git commit -am cleaning 2>/dev/null || true))

blog: clean_output tex 
	pelican content -t ./themes/pelican-alchemy/alchemy


publish: blog
	(cd ./output && git add . && git commit -am publishing && git push)


all: publish



