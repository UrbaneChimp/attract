﻿#
# General
#
Exit Attract-Mode;Quitter Attract-Mode
Exit Attract-Mode?;Quitter Attract-Mode?
Yes;Oui
No;Non

#
# Emulator Settings Configuration
#
Edit Artwork;Modifier l'Artwork
Artwork Label;Label de l'Artwork
Artwork Path;Chemin de l'Artwork
Edit Emulator;Modifier l'émulateur
Emulator Name;Nom de l'émulateur
Executable;Exécutable
Command Arguments;Ligne de commande
Rom Path;Chemin des ROM
Rom Extension(s);Extension(s) des ROM
Additional Import Files;Fichiers additionels
XML Mode;Mode XML
Movie Path;Chemin des vidéos
Movie Fallback Artwork;Artwork alternatif
Add Artwork;Ajouter Artwork
Generate Romlist;Générer la liste de ROM
Delete this Emulator;Supprimer cet émulateur
Generating Rom List: $1%;Génération de la liste de ROM: $1%
Rom path '$1' not found, proceed anyways?;Chemin des ROM '$1' introuvable, continuer?
Overwrite existing '$1' romlist?;Ecraser la liste de ROM '$1' existante?
Wrote $1 entries to romlist;Création de $1 entrées dans la liste de ROM
Delete emulator '$1'?;Supprimer l'émulateur '$1'?
Config / Emulators;Configuration / Emulateurs
Add Emulator;Ajouter un émulateur
Enter Emulator Name;Nom de l'émulateur?
Configure available emulators;Configurer les émulateurs disponibles

_help_art_label;Label identifiant cette ressource d'Artwork (utilisé par les themes)
_help_art_path;Répertoire contenant les Artworks
_help_art_add;Ajouter une nouvelle ressource à l'Artwork (marquee, photo ecran, etc.)
_help_emu_executable;Chemin et nom de l'executable de l'émulateur. $HOME sera remplace par le repertoire de l'utilisateur
_help_emu_args;Arguments de la ligne de commande de cet émulateur. Options de substitution: [name], [romext], [rompath], [emulator], [romfilename]
_help_emu_rompath;Chemin des ROM pour cet émulateur
_help_emu_romext;Extension des ROM pour cet émulateur (ex .zip).  Possibilité d'utiliser des extensions multiples separées par un point-virgule
_help_emu_movie_path;Chemin des vidéos attract-mode (si il y en a) pour cet emulateur
_help_emu_movie_artwork;Ressource d'Artwork utilisée pour afficher les films
_help_emu_import_extras;Fichiers additionels nécessitant d'être lus lors de la generation de la liste de ROM pour cet émulateur. Fichiers supportés: catver.ini (catégories) et nplayers.ini (nombre de joueur). Plusieurs fichiers peuvent etre saisis si separés par un point-virgule
_help_emu_listxml;Les valeurs valides pour le mode XML sont "mame" (si c'est une version récente de mame proposant l'option -listxml) ou "mess <system>" (si c'est une version récente de mess proposant l'option -listsoftware). Pour tout autre émulateur laisser vide
_help_emu_gen_romlist;Génére une liste de ROM en cherchant dans le chemin des ROM avec l'extension choisie, incorporant l'XML et les fichiers additionels d'information dans la liste générée (si disponible)
_help_emu_delete;Supprime l'entrée pour cet émulateur
_help_emu_sel;Configuration de l'émulateur
_help_emu_add;Ajouter un nouvel émulateur

#
# Filter Settings Configuration
#
Rule Edit;Editer les règles
Target;Cible
Comparison;Comparaison
Filter Value;Filtre de valeur
Delete this Rule;Supprimer cette règle
Filter Edit;Edition du filtre
Filter Name;Nom du filtre
Rule;Règle
Add Rule;Ajouter une règle
Delete this Filter;Supprimer ce filtre
Delete filter '$1'?;Supprimer le filtre '$1'?
All;Tous
Title;Titre
Emulator;Emulateur
CloneOf;Clone de
Year;Année
anufacturer;Fabriquant
Category;Catégorie
Players;Joueurs
Rotation;Rotation
Control;Contrôle
Status;Etat
equals;est égal à
does not equal;n'est pas égal à
contains;contient
does not contain;ne contient pas
The name for this filter;Nom du filtre
Configure filter rule;Configuration de la règle de filtrage
Add a rule to this filter;Ajouter une règle à ce filtre
Delete this filter;Supprimer ce filtre

_help_rule_target;L'attribut du jeux que vous souhaitez filtrer sur la base de
_help_rule_comp;Règle de comparaison pour le filtre
_help_rule_value;Valeur à filtrer.  Par exemple, si la cible de filtrage est "Année" et le comparateur "est égale à", une valeur de "1984" correspondra à l'année 1984, "198." correspondra à n'importe quelle année des années 1980, et "(198.)|(199.)" correspondra aux années comprises entre 1980 et 1999
_help_rule_delete;Supprimer cette règle de filtrage

#
# List Settings Configuration
#
List Edit;Edition de la liste
List Name;Nom de la liste
Layout;Thème
Rom List;Liste de ROM
Filter;Filtre
Add Filter;Ajouter un filtre
Delete this List;Supprimer cette liste
Delete list '$1'?;Supprimer la liste '$1'?
Configure / Lists;Configuration / Listes
Add New List;Ajouter une nouvelle liste
Enter List Name;Entrer le nom de la liste

_help_list_name;Titre de cette liste d'affichage
_help_list_layout;Thème à utiliser pour cette liste d'affichage
_help_list_romlist;Liste de ROM à utiliser pour cette liste d'affichage
_help_list_filter;Configurer le filtre
_help_list_add_filter;Ajouter un filtre à cette liste d'affichage
_help_list_delete;Suppression de la liste d'affichage
_help_list_sel;Configurer la liste d'affichage
_help_list_add;Ajouter une nouvelle liste d'affichage

#
# Input Settings Configuration
#
Edit Input;Editer le contrôle
Action;Action
Remove Input;Enlever le contrôle
Add Input;Ajouter un contrôle
Press Input;Appuyer sur le contrôle
This will overwrite an existing mapping ($1).  Proceed?;Ecrire par dessus le contrôle existant ($1). Confirmer?
Configure / Input;Configuration / Contrôles
OR;OU
Select;Select
Up;Haut
Down;Bas
Page Up;Page Suivante
Page Down;Page Précédente
Previous List;Liste précédent
Next List;Liste suivante
Lists Menu;Menu des listes
Previous Filter;Filtre précédent
Next Filter;Filtre suivant
Filters Menu;Menu des filtres
Toggle Layout;Basculer le thème
Toggle Movie;Basculer la vidéo
Toggle Mute;Basculer en mode silence
Toggle Rotate Right;Basculer Rotation droite
Toggle Flip;Basculer mode retourné
Toggle Rotate Left;Basculer Rotation gauche
Exit (Confirm);Sortie (Confirmer)
Exit to Desktop;Sortie vers le bureau
Screenshot;Photo écran
Configure;Configurer
Random Game;Jeux au hasard
Ambient Sounds;Son d'ambiance
Startup Sound;Son au démarrage
Game Return Sound;Son au retour du jeux

_help_input_delete;Enlever ce contrôle
_help_input_add;Ajouter un nouveau contrôle
_help_input_sel;Configurer les contrôles

#
# Sound Settings Configuration
#
Configure / Sound;Configuration / Son
Sound Volume;Volume général
Ambient Volume;Volume des sons d'ambiances
Movie Volume;Volume des vidéos
_help_volume;Les valeurs possibles pour le volume vont de 0 (silence) à 100
_help_sound;Assigner un son à cet événement/action

#
# Miscellaneous Settings Configuration
#
Configure / Miscellaneous;Configuration / Divers
Screen Saver Timeout;Décompte économiseur d'écran
Auto Rotate;Rotation automatique

None;Non
Right;Droite
Flip;Retourné
Left;Gauche
Exit Command;Commande de sortie
Default Font;Police par défaut
Font Path;Chemin de la police
Allow Exit from 'Lists Menu';Permettre la sortie des listes de menu 
Language;Language
en;Anglais
fr;Français

_help_autorot;Auto-rotation correspondant à la rotation du dernier jeux joué
_help_exit_command;Commande à executer en quittant (Confirmer) [exemple "sudo shutdown"]
_help_default_font;Le nom de la police par défaut à utiliser
_help_font_path;Répertoires contenant les polices (séparés par des points virgules)
_help_screen_saver_timeout;Temps total en seconde à attendre pour activer l'économiseur d'écran.  0 pour désactiver
_help_lists_menu_exit;Indiquer si une option de sortie doit être prévue dans le menu des listes
_help_language;Sélectionner le language

#
# Plug-in Configuration
#
Configure Plug-in;Configurer Plug-in
Name;Nom
Command;Commandes
Enabled;Activé
Configure / Plug-ins;Configuration / Plug-in

_help_plugin_command;Executable associé à ce plug-in
_help_plugin_enabled;Indiquer si ce plug-in est activé
_help_plugin_sel;Configurer le plug-in

#
# Configuration Main Menu
#
Configure;Configuration
Emulators;Emulateurs
Lists;Listes
Controls;Contrôles
Sound;Son
Plug-ins;Plug-in
General;Général
Back;Retour
_help_emulators;Configurer les émulateurs
_help_lists;Configurer les listes d'affichage
_help_controls;Configurer les contrôles
_help_sound;Configurer le volume et les affectations sonores
_help_plugins;Configurer les plug-ins
_help_misc;Configurations diverses
Exit menu;Quitter le menu