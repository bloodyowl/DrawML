all:
		rm -fr dist
		ocamlopt -c src/Draw.ml
		mkdir dist
		ocamlopt graphics.cmxa -o dist/Draw src/Draw.cmx
		open dist/Draw
