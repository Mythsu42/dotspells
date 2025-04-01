cclean() {
local intro=(
"🧼 Purification du répertoire... silence, ça nettoie."
"✨ Les artefacts temporaires ont été bannis du royaume."
"☠️ Les fichiers inutiles ont été effacés de l’existence."
"🎩 Mes serviteurs s’occupent du ménage, Sire."
"💣 Fichiers neutralisés. Terrain nettoyé, prêt pour le prochain round."
"🧃 Fichiers pressés, jus vidé."
"🧊 Fichiers fondus dans l'oubli numérique."
"🔥 Feu sacré invoqué. Les .o ont disparu."
"🌀 Éradication complète du code corrompu."
)
local outro=(
"🧙 Le mal a été purgé du répertoire."
"🌪️ e vent a tout emporté. Le calme est revenu."
"🧼 Aucun bit ne subsiste."
)

local random_intro="${intro[RANDOM % ${#intro[@]} + 1]}"
local random_outro="${outro[RANDOM % ${#outro[@]} + 1]}"

clear	
figlet -f slant "cleaning" | lolcat

echo -e "\n$random_intro\n" | lolcat
sleep 1

for i in {1..3}; do
	echo -n "invocation du sort "
	for dot in {1..3}; do
		echo -n "."
		sleep 0.3
	done
	echo -ne "\r\033[K"
done
clear
rm -f a.out *.o 
echo -e "\n$random_outro\n" | lolcat
}
