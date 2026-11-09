@echo off
cd /d "%~dp0"
echo Lancement du musee sur http://localhost:8000  (ferme cette fenetre pour arreter)
start "" http://localhost:8000
where python >nul 2>nul && (python -m http.server 8000 & goto :eof)
where npx >nul 2>nul && (npx --yes http-server -p 8000 -c-1 & goto :eof)
echo Installe Python ou Node.js pour lancer le serveur local.
pause
