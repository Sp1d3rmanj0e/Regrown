# A script to set up the game on other computers
cd $HOME/Documents
if [ ! -d "Regrown" ]; then
    git clone https://github.com/Sp1d3rmanj0e/Regrown.git
fi
cd Regrown
echo 'Succesfully cloned game! Starting GameMaker Studio...'
'C:\Program Files\GameMaker Studio 2\GameMakerStudio.exe' $HOME/Documents/Regrown/'Symbiosis 3.yyp'