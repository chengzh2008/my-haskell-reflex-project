## haskell nix and reflex

### How to run

1. `nix-shell -A shells.ghc --run 'ghcid -W -c "cabal new-repl frontend" -T Main.main'`
2. `nix-shell -A shells.ghc` and then `code .`
3. fire up a repl `nix-shell -A shells.ghc --run "cabal new-repl frontend"`
4. start Hoogle `nix-shell -A shells.ghc --run --arg withHoogle true "hoogle server --local --port=8080"`
5. build frontend `nix-build -o frontend-result -A ghcjs.frontend`
6. deploy `rm -rf docs; cp -r frontend-result/bin/frontend.jsexe docs`
