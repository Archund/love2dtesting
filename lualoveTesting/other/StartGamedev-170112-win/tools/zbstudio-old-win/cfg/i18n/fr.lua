return {
  [0] = function(c) return c == 1 and 1 or 2 end, -- plural
  ["%s event failed: %s"] = "L'événement %s a échoué : %s", -- src\editor\package.lua
  ["%s%% formatted..."] = "%s%% formattés...", -- src\editor\print.lua
  ["%s%% loaded..."] = "%s%% chargé", -- src\editor\commands.lua
  ["&About"] = "&À propos", -- src\editor\menu_help.lua
  ["&Add Watch"] = "&Ajouter une expression", -- src\editor\debugger.lua
  ["&Break"] = "&Interrompre", -- src\editor\menu_project.lua
  ["&Close Page"] = "&Fermer la page", -- src\editor\gui.lua, src\editor\menu_file.lua
  ["&Community"] = "&Communauté", -- src\editor\menu_help.lua
  ["&Compile"] = "&Compiler", -- src\editor\menu_project.lua
  ["&Copy Value"] = "Copier la &valeur", -- src\editor\debugger.lua
  ["&Copy"] = "Co&pier", -- src\editor\gui.lua, src\editor\editor.lua, src\editor\menu_edit.lua
  ["&Default Layout"] = "Affichage par &défaut", -- src\editor\menu_view.lua
  ["&Delete Watch"] = "&Supprimer une expression", -- src\editor\debugger.lua
  ["&Delete"] = "&Supprimer", -- src\editor\filetree.lua
  ["&Documentation"] = "&Documentation", -- src\editor\menu_help.lua
  ["&Edit Project Directory"] = "&Modifier le répertoire de projet", -- src\editor\filetree.lua
  ["&Edit Value"] = "&Modifier une valeur", -- src\editor\debugger.lua
  ["&Edit Watch"] = "&Modifier une expression", -- src\editor\debugger.lua
  ["&Edit"] = "É&dition", -- src\editor\menu_edit.lua
  ["&File"] = "&Fichier", -- src\editor\menu_file.lua
  ["&Find"] = "&Rechercher", -- src\editor\menu_search.lua
  ["&Fold/Unfold All"] = "Re&plier/Déplier tout", -- src\editor\menu_edit.lua
  ["&Frequently Asked Questions"] = "&Foire aux questions" , -- src\editor\menu_help.lua
  ["&Getting Started Guide"] = "&Guide de prise en main", -- src\editor\menu_help.lua
  ["&Help"] = "Aid&e", -- src\editor\menu_help.lua
  ["&New Directory"] = "&Nouveau répertoire", -- src\editor\filetree.lua
  ["&New"] = "&Nouveau", -- src\editor\menu_file.lua
  ["&Open..."] = "&Ouvrir...", -- src\editor\menu_file.lua
  ["&Output/Console Window"] = "&Sortie/Console", -- src\editor\menu_view.lua
  ["&Paste"] = "Co&ller", -- src\editor\gui.lua, src\editor\editor.lua, src\editor\menu_edit.lua
  ["&Print..."] = "&Imprimer", -- src\editor\print.lua
  ["&Project Page"] = "&Site web de ZeroBrane", -- src\editor\menu_help.lua
  ["&Project"] = "&Projet", -- src\editor\menu_project.lua
  ["&Redo"] = "&Rétablir", -- src\editor\gui.lua, src\editor\editor.lua, src\editor\menu_edit.lua
  ["&Rename"] = "&Renommer", -- src\editor\filetree.lua
  ["&Replace"] = "Re&mplacer", -- src\editor\menu_search.lua
  ["&Run"] = "&Exécuter", -- src\editor\menu_project.lua
  ["&Save"] = "&Enregistrer", -- src\editor\gui.lua, src\editor\menu_file.lua
  ["&Search"] = "&Recherche", -- src\editor\menu_search.lua
  ["&Select Command"] = "Selectionner la &Commande", -- src\editor\gui.lua
  ["&Sort"] = "&Trier", -- src\editor\menu_edit.lua
  ["&Stack Window"] = "&Pile d'exécution", -- src\editor\menu_view.lua
  ["&Start Debugger Server"] = "Lancer le &serveur de débogage", -- src\editor\menu_project.lua
  ["&Status Bar"] = "Barre d'&état", -- src\editor\menu_view.lua
  ["&Tool Bar"] = "Barre d'&outils", -- src\editor\menu_view.lua
  ["&Tutorials"] = "&Tutoriels", -- src\editor\menu_help.lua
  ["&Undo"] = "&Annuler", -- src\editor\gui.lua, src\editor\editor.lua, src\editor\menu_edit.lua
  ["&View"] = "&Affichage", -- src\editor\menu_view.lua
  ["&Watch Window"] = "E&xpressions espionnes", -- src\editor\menu_view.lua
  ["About %s"] = "À propos de %s", -- src\editor\menu_help.lua
  ["Add To Scratchpad"] = "Ajouter au brouillon", -- src\editor\editor.lua
  ["Add Watch Expression"] = "Ajouter une expression espionne", -- src\editor\editor.lua
  ["All files"] = "Tous les fichiers", -- src\editor\commands.lua
  ["Allow external process to start debugging"] = "Autorise les processus externes à lancer le débogage", -- src\editor\menu_project.lua
  ["Analyze the source code"] = "Analyse le code source", -- src\editor\inspect.lua
  ["Analyze"] = "Analyser", -- src\editor\inspect.lua
  ["Auto Complete Identifiers"] = "Auto-compléter les identifiants", -- src\editor\menu_edit.lua
  ["Auto complete while typing"] = "Auto-complète lors de la saisie", -- src\editor\menu_edit.lua
  ["Binary file is shown as read-only as it is only partially loaded."] = "Le fichier binaire est affiché en lecture seule parce qu'il a été chargé partiellement.", -- src\editor\commands.lua
  ["Bookmark"] = "Marque-pages", -- src\editor\menu_edit.lua
  ["Break execution at the next executed line of code"] = "Interrompt l'exécution à la ligne suivante", -- src\editor\toolbar.lua, src\editor\menu_project.lua
  ["Breakpoint"] = "Point d'arrêt", -- src\editor\menu_project.lua
  ["C&lear Console Window"] = "E&ffacer la fenêtre console", -- src\editor\gui.lua
  ["C&lear Output Window"] = "E&ffacer la fenêtre de sortie", -- src\editor\gui.lua, src\editor\menu_project.lua
  ["C&omment/Uncomment"] = "Co&mmenter/Décommenter", -- src\editor\menu_edit.lua
  ["Can't evaluate the expression while the application is running."] = "Impossible d'évaluer l'expression pendant que l'application est en cours d'exécution.", -- src\editor\debugger.lua
  ["Can't open file '%s': %s"] = "Impossible d'ouvrir le fichier '%s': %s", -- src\editor\findreplace.lua, src\editor\singleinstance.lua, src\editor\inspect.lua, src\editor\outline.lua
  ["Can't process auto-recovery record; invalid format: %s."] = "Impossible de lire la récupération automatique ; format invalide : %s.", -- src\editor\commands.lua
  ["Can't replace in read-only text."] = "Impossible de remplacer dans un texte en lecture seule.", -- src\editor\findreplace.lua
  ["Can't run the entry point script ('%s')."] = "Impossible d'exécuter le point d'entrée du script ('%s').", -- src\editor\debugger.lua
  ["Can't start debugger server at %s:%d: %s."] = "Impossible de lancer le serveur de débogage à %s:%d: %s." , -- src\editor\debugger.lua
  ["Can't start debugging for '%s'."] = "Impossible de lancer le débogage pour '%s'.", -- src\editor\debugger.lua
  ["Can't start debugging session due to internal error '%s'."] = "Impossible de lancer la session de débogage : erreur interne '%s'.", -- src\editor\debugger.lua
  ["Can't start debugging without an opened file or with the current file not being saved ('%s')."] = "Impossible de lancer le débogage si aucun fichier n'est ouvert ou si le fichier courant n'a pas été enregistré ('%s').", -- src\editor\debugger.lua
  ["Can't stop debugger server as it is not started."] = "Impossible d'arrêter le serveur de débogage car il n'a pas été démarré.", -- src\editor\debugger.lua
  ["Cancelled by the user."] = "Annulé par l'utilisateur.", -- src\editor\findreplace.lua
  ["Choose a directory to map"] = "Choisir un répertoire à mapper", -- src\editor\filetree.lua
  ["Choose a project directory"] = "Choisir un répertoire de projet", -- src\editor\toolbar.lua, src\editor\menu_project.lua, src\editor\filetree.lua
  ["Choose a search directory"] = "Choisir un répertoire dans lequel rechercher", -- src\editor\findreplace.lua
  ["Choose..."] = "Choisir...", -- src\editor\findreplace.lua, src\editor\menu_project.lua, src\editor\filetree.lua
  ["Clear Items"] = "Effacer les éléments", -- src\editor\findreplace.lua, src\editor\menu_file.lua
  ["Clear items from this list"] = "Efface les éléments de cette liste", -- src\editor\menu_file.lua
  ["Clear the output window before compiling or debugging"] = "Efface la fenêtre de sortie avant compilation ou débogage", -- src\editor\menu_project.lua
  ["Close &Other Pages"] = "Fermer les &autres pages", -- src\editor\gui.lua
  ["Close A&ll Pages"] = "Fermer &toutes les pages", -- src\editor\gui.lua
  ["Close the current editor window"] = "Ferme la fenêtre d'édition courante", -- src\editor\menu_file.lua
  ["Co&ntinue"] = "Co&ntinuer", -- src\editor\menu_project.lua
  ["Col: %d"] = "Col : %d", -- src\editor\editor.lua
  ["Command Line Parameters..."] = "Paramètres de ligne de commande...", -- src\editor\menu_project.lua
  ["Command line parameters"] = "Paramètres de ligne de commande", -- src\editor\menu_project.lua
  ["Comment or uncomment current or selected lines"] = "Commente ou décommente les lignes courantes ou sélectionnées", -- src\editor\menu_edit.lua
  ["Compilation error"] = "Erreur de compilation", -- src\editor\commands.lua, src\editor\debugger.lua
  ["Compilation successful; %.0f%% success rate (%d/%d)."] = "Compilation réussie ; taux de succès : %.0f%% (%d/%d).", -- src\editor\commands.lua
  ["Compile the current file"] = "Сompile le fichier courant", -- src\editor\menu_project.lua
  ["Complete &Identifier"] = "Compléter l'&identifiant", -- src\editor\menu_edit.lua
  ["Complete the current identifier"] = "Complète l'identifiant courant", -- src\editor\menu_edit.lua
  ["Consider removing backslash from escape sequence '%s'."] = "Essayez de supprimer les antislashs dans '%s'.", -- src\editor\commands.lua
  ["Copy Full Path"] = "Copier le chemin absolu", -- src\editor\gui.lua, src\editor\filetree.lua
  ["Copy selected text to clipboard"] = "Copie le texte sélectionné dans le presse-papiers", -- src\editor\menu_edit.lua
  ["Correct &Indentation"] = "Corriger l'&indentation", -- src\editor\menu_edit.lua
  ["Couldn't activate file '%s' for debugging; continuing without it."] = "Impossible d'activer le fichier '%s' pour débogage ; poursuite du processus en ignorant le fichier.", -- src\editor\debugger.lua
  ["Create an empty document"] = "Crée un document vierge", -- src\editor\toolbar.lua, src\editor\menu_file.lua
  ["Cu&t"] = "&Couper", -- src\editor\gui.lua, src\editor\editor.lua, src\editor\menu_edit.lua
  ["Cut selected text to clipboard"] = "Coupe le texte sélectionné et le copie dans le presse-papiers", -- src\editor\menu_edit.lua
  ["Debugger server started at %s:%d."] = "Serveur de débogage démarré à %s:%d.", -- src\editor\debugger.lua
  ["Debugger server stopped at %s:%d."] = "Serveur de débogage stoppé à %s:%d.", -- src\editor\debugger.lua
  ["Debugging session completed (%s)."] = "Session de débogage terminée (%s).", -- src\editor\debugger.lua
  ["Debugging session started in '%s'."] = "Session de débogage démarrée dans '%s'.", -- src\editor\debugger.lua
  ["Debugging suspended at '%s:%s' (couldn't activate the file)."] = "Débogage interrompu à '%s:%s' (impossible d'activer le fichier).", -- src\editor\debugger.lua
  ["Detach &Process"] = "Détacher le p&rocessus", -- src\editor\menu_project.lua
  ["Disable Indexing For '%s'"] = "Désactiver l'indexation pour '%s'", -- src\editor\outline.lua
  ["Do you want to delete '%s'?"] = "Voulez-vous effacer '%s' ?", -- src\editor\filetree.lua
  ["Do you want to overwrite it?"] = "Voulez-vous l'écraser ?", -- src\editor\commands.lua
  ["Do you want to reload it?"] = "Voulez-vous le recharger ?", -- src\editor\editor.lua
  ["Do you want to save the changes to '%s'?"] = "Voulez-vous enregistrer les modifications dans '%s' ?", -- src\editor\commands.lua
  ["E&xit"] = "&Quitter", -- src\editor\menu_file.lua
  ["Enable Indexing"] = "Activer l'indexation", -- src\editor\outline.lua
  ["Enter Lua code and press Enter to run it."] = "Saisissez du code Lua et appuyez sur <Entrée> pour l´exécuter.", -- src\editor\shellbox.lua
  ["Enter command line parameters (use Cancel to clear)"] = "Saisissez les paramètres de ligne de commande (cliquez sur Annuler pour effacer)", -- src\editor\menu_project.lua
  ["Enter replacement text"] = "Saisissez le texte de remplacement", -- src\editor\editor.lua
  ["Error while loading API file: %s"] = "Erreur lors du chargement du fichier d'API : %s", -- src\editor\autocomplete.lua
  ["Error while loading configuration file: %s"] = "Erreur lors du chargement du fichier de configuration : %s", -- src\editor\style.lua
  ["Error while processing API file: %s"] = "Erreur lors de la lecture du fichier d'API : %s", -- src\editor\autocomplete.lua
  ["Error while processing configuration file: %s"] = "Erreur lors de la lecture du fichier de configuration : %s", -- src\editor\style.lua
  ["Error"] = "Erreur", -- src\editor\commands.lua
  ["Evaluate In Console"] = "Évaluer dans la console", -- src\editor\editor.lua
  ["Execute the current project/file and keep updating the code to see immediate results"] = "Exécute le projet/fichier courant en prenant en compte à la volée les modifications de code", -- src\editor\menu_project.lua
  ["Execute the current project/file"] = "Exécute le projet/fichier courant", -- src\editor\toolbar.lua, src\editor\menu_project.lua
  ["Execution error"] = "Erreur d'exécution", -- src\editor\debugger.lua
  ["Exit program"] = "Quitte le programme", -- src\editor\menu_file.lua
  ["File '%s' has been modified on disk."] = "Le fichier '%s' a été modifié sur le disque.", -- src\editor\editor.lua
  ["File '%s' has more recent timestamp than restored '%s'; please review before saving."] = "Le fichier '%s' a un horodatage plus récent que celui restauré '%s' ; veuillez vérifier avant d'enregistrer.", -- src\editor\commands.lua
  ["File '%s' is missing and can't be recovered."] = "Le fichier '%s' est manquant et ne peut pas être récupéré.", -- src\editor\commands.lua
  ["File '%s' no longer exists."] = "Le fichier '%s' n'existe plus.", -- src\editor\menu_file.lua, src\editor\editor.lua
  ["File already exists."] = "Le fichier existe déjà.", -- src\editor\commands.lua
  ["File history"] = "Historique de fichier", -- src\editor\menu_file.lua
  ["Find &In Files"] = "Rec&hercher dans les fichiers", -- src\editor\menu_search.lua
  ["Find &Next"] = "Rechercher le &suivant", -- src\editor\menu_search.lua
  ["Find &Previous"] = "Rechercher le &précédent", -- src\editor\menu_search.lua
  ["Find and insert library function"] = "Recherche et insère une fonction d'une bibliothèque", -- src\editor\menu_search.lua
  ["Find and replace text in files"] = "Recherche et remplace le texte dans les fichiers", -- src\editor\menu_search.lua
  ["Find and replace text"] = "Recherche et remplace le texte", -- src\editor\toolbar.lua, src\editor\menu_search.lua
  ["Find in files"] = "Rechercher dans les fichiers", -- src\editor\toolbar.lua
  ["Find text in files"] = "Recherche le texte dans les fichiers", -- src\editor\menu_search.lua
  ["Find text"] = "Recherche le texte", -- src\editor\toolbar.lua, src\editor\menu_search.lua
  ["Find the earlier text occurence"] = "Recherche l'occurrence précédente du texte", -- src\editor\menu_search.lua
  ["Find the next text occurrence"] = "Recherche l'occurrence suivante du texte", -- src\editor\menu_search.lua
  ["Find"] = "Rechercher ", -- src\editor\toolbar.lua
  ["Fold or unfold all code folds"] = "Replie ou déplie tous les blocs de code", -- src\editor\menu_edit.lua
  ["Formatting page %d..."] = "Formattage de la page %d en cours...", -- src\editor\print.lua
  ["Found %d instance."] = {"%d occurence trouvée.", "%d occurences trouvées."}, -- src\editor\findreplace.lua
  ["Found auto-recovery record and restored saved session."] = "Une récupération automatique a été trouvée et la session a été restaurée.", -- src\editor\commands.lua
  ["Full &Screen"] = "Plein é&cran", -- src\editor\menu_view.lua
  ["Go To Definition"] = "Aller à la définition", -- src\editor\editor.lua
  ["Go To File..."] = "Aller au fichier...", -- src\editor\menu_search.lua
  ["Go To Line..."] = "Aller à la ligne...", -- src\editor\menu_search.lua
  ["Go To Next Bookmark"] = "Aller au marque-page suivant", -- src\editor\menu_edit.lua
  ["Go To Next Breakpoint"] = "Aller au prochain point d'arrêt", -- src\editor\menu_project.lua
  ["Go To Previous Bookmark"] = "Aller au marque-page précédent", -- src\editor\menu_edit.lua
  ["Go To Previous Breakpoint"] = "Aller au point d'arrêt précédent", -- src\editor\menu_project.lua
  ["Go To Symbol..."] = "Aller au symbole...", -- src\editor\menu_search.lua
  ["Go to file"] = "Permet d'accéder directement à un fichier", -- src\editor\menu_search.lua
  ["Go to line"] = "Permet d'accéder directement à une ligne", -- src\editor\menu_search.lua
  ["Go to symbol"] = "Permet d'accéder directement à un symbole", -- src\editor\menu_search.lua
  ["Hide '.%s' Files"] = "Masquer les fichiers '.%s'", -- src\editor\filetree.lua
  ["INS"] = "INS", -- src\editor\editor.lua
  ["Ignore and don't index symbols from files in the selected directory"] = "Ignorer et ne pas indexer les symboles dans les fichiers provenant du répertoire sélectionné", -- src\editor\outline.lua
  ["Ignored error in debugger initialization code: %s."] = "Une erreur dans le code d'initialisation du debogage a été ignorée: %s.", -- src\editor\debugger.lua
  ["Indexing %d files: '%s'..."] = "%d fichiers indexés: '%s'...", -- src\editor\outline.lua
  ["Indexing completed."] = "Indexation terminée.", -- src\editor\outline.lua
  ["Insert Library Function..."] = "Insérer une fonction d'une bibliothèque...", -- src\editor\menu_search.lua
  ["Known Files"] = "Fichiers connus", -- src\editor\commands.lua
  ["Ln: %d"] = "Lig : %d", -- src\editor\editor.lua
  ["Local console"] = "Console locale", -- src\editor\gui.lua, src\editor\shellbox.lua
  ["Lua &Interpreter"] = "Interpréteur L&ua", -- src\editor\menu_project.lua
  ["Map Directory..."] = "Mapper un répertoire...", -- src\editor\filetree.lua
  ["Mapped remote request for '%s' to '%s'."] = "La requête distante pour '%s' a été associée à '%s'.", -- src\editor\debugger.lua
  ["Markers Window"] = "Fenêtre des marqueurs", -- src\editor\menu_view.lua
  ["Markers"] = "Marqueurs", -- src\editor\markers.lua
  ["Match case"] = "Respecter la casse", -- src\editor\toolbar.lua
  ["Match whole word"] = "Mot entier uniquement", -- src\editor\toolbar.lua
  ["Mixed end-of-line encodings detected."] = "Plusieurs codages de fin de ligne ont été détectés.", -- src\editor\commands.lua
  ["Navigate"] = "Naviguer", -- src\editor\menu_search.lua
  ["New &File"] = "Nouveau &fichier", -- src\editor\filetree.lua
  ["OVR"] = "OVR", -- src\editor\editor.lua
  ["Open With Default Program"] = "Ouvrir avec le programme par défaut", -- src\editor\filetree.lua
  ["Open an existing document"] = "Ouvre un document existant", -- src\editor\toolbar.lua, src\editor\menu_file.lua
  ["Open file"] = "Ouvrir un fichier", -- src\editor\commands.lua
  ["Outline Window"] = "Structure", -- src\editor\menu_view.lua
  ["Outline"] = "Structure", -- src\editor\outline.lua
  ["Output (running)"] = "Sortie (en cours d'exécution)", -- src\editor\debugger.lua, src\editor\output.lua
  ["Output (suspended)"] = "Sortie (interrompu)", -- src\editor\debugger.lua
  ["Output"] = "Sortie", -- src\editor\debugger.lua, src\editor\output.lua, src\editor\gui.lua, src\editor\settings.lua
  ["Page Setup..."] = "Configuration de la page...", -- src\editor\print.lua
  ["Paste text from the clipboard"] = "Colle le texte depuis le presse-papiers", -- src\editor\menu_edit.lua
  ["Preferences"] = "Préférences", -- src\editor\menu_edit.lua
  ["Prepend '!' to force local execution."] = "Préfixez par '!' pour forcer une execution locale.", -- src\editor\shellbox.lua
  ["Prepend '=' to show complex values on multiple lines."] = "Préfixez par '=' pour afficher les valeurs complexes sur plusieurs lignes.", -- src\editor\shellbox.lua
  ["Press cancel to abort."] = "Cliquez sur Annuler pour annuler.", -- src\editor\commands.lua
  ["Print the current document"] = "Imprimer le document courant", -- src\editor\print.lua
  ["Program '%s' started in '%s' (pid: %d)."] = "Programme '%s' démarré dans '%s' (pid : %d).", -- src\editor\output.lua
  ["Program can't start because conflicting process is running as '%s'."] = "Le programme ne peut démarrer à cause d'un conflit de processus avec '%s' (en cours d'exécution).", -- src\editor\output.lua
  ["Program completed in %.2f seconds (pid: %d)."] = "Programme terminé en %.2f secondes (pid : %d).", -- src\editor\output.lua
  ["Program starting as '%s'."] = "Programme démarré en tant que '%s'.", -- src\editor\output.lua
  ["Program stopped (pid: %d)."] = "Programme stoppé (pid : %d).", -- src\editor\debugger.lua
  ["Program unable to run as '%s'."] = "Impossible d'exécuter le programme en tant que '%s'.", -- src\editor\output.lua
  ["Project Directory"] = "Répertoire de projet", -- src\editor\menu_project.lua, src\editor\filetree.lua
  ["Project history"] = "Historique de projet", -- src\editor\menu_file.lua
  ["Project"] = "Projet", -- src\editor\filetree.lua
  ["Project/&FileTree Window"] = "&Explorateur de projet", -- src\editor\menu_view.lua
  ["Provide command line parameters"] = "Définit les paramètres de ligne de commande", -- src\editor\menu_project.lua
  ["Queued %d files to index."] = "%d fichiers mis en attente pour l'indexation.", -- src\editor\menu_search.lua
  ["R/O"] = "R/O", -- src\editor\editor.lua
  ["R/W"] = "R/W", -- src\editor\editor.lua
  ["Re&place In Files"] = "Remp&lacer dans les fichiers", -- src\editor\menu_search.lua
  ["Re-indent selected lines"] = "Ré-indente les lignes sélectionnées", -- src\editor\menu_edit.lua
  ["Reached end of selection and wrapped around."] = "Fin de sélection atteinte et repositionnement en début de sélection.", -- src\editor\findreplace.lua
  ["Reached end of text and wrapped around."] = "Fin de texte atteinte et repositionnement en début de texte.", -- src\editor\findreplace.lua
  ["Recent Files"] = "Fichiers récents", -- src\editor\menu_file.lua
  ["Recent Projects"] = "Projets récents", -- src\editor\menu_file.lua
  ["Redo last edit undone"] = "Rétablit la dernière modification", -- src\editor\menu_edit.lua
  ["Refresh Index"] = "Actualiser l'index", -- src\editor\outline.lua
  ["Refresh indexed symbols from files in the selected directory"] = "Actualiser les symboles indexés à partir des fichiers du répertoire sélectionné", -- src\editor\outline.lua
  ["Refresh"] = "Rafraîchir", -- src\editor\filetree.lua
  ["Refused a request to start a new debugging session as there is one in progress already."] = "Une requête de lancement de débogage a été refusée car une session de débogage est déjà en cours.", -- src\editor\debugger.lua
  ["Regular expression"] = "Expression régulière", -- src\editor\toolbar.lua
  ["Remote console"] = "Console à distance", -- src\editor\shellbox.lua
  ["Rename All Instances"] = "Renommer toutes les occurrences", -- src\editor\editor.lua
  ["Replace All Selections"] = "Remplacer toutes les sélections", -- src\editor\editor.lua
  ["Replace all"] = "Remplacer tout", -- src\editor\toolbar.lua
  ["Replace next instance"] = "Remplacer l'occurence suivante", -- src\editor\toolbar.lua
  ["Replaced %d instance."] = {"%d occurence remplacée.","%d occurences remplacées."}, -- src\editor\findreplace.lua
  ["Replaced an invalid UTF8 character with %s."] = "Un caractère UTF8 invalide a été remplacé par %s.", -- src\editor\commands.lua
  ["Reset to default layout"] = "Restaure l'affichage par défaut", -- src\editor\menu_view.lua
  ["Run As Scratchpad"] = "Exécuter comme brouillon", -- src\editor\menu_project.lua
  ["Run To Cursor"] = "Exécuter jusqu'au curseur", -- src\editor\menu_project.lua, src\editor\editor.lua
  ["Run as Scratchpad"] = "Exécuter comme brouillon", -- src\editor\toolbar.lua
  ["Run to cursor"] = "Exécuter jusqu'au curseur", -- src\editor\toolbar.lua, src\editor\menu_project.lua
  ["S&top Debugging"] = "&Arrêter le débogage", -- src\editor\menu_project.lua
  ["S&top Process"] = "&Arrêter le processus", -- src\editor\menu_project.lua
  ["Save &As..."] = "Enregistrer &sous...", -- src\editor\gui.lua, src\editor\menu_file.lua
  ["Save A&ll"] = "Enregistrer &tout", -- src\editor\menu_file.lua
  ["Save Changes?"] = "Enregistrer les modifications ?", -- src\editor\commands.lua
  ["Save all open documents"] = "Enregistre tous les documents ouverts", -- src\editor\toolbar.lua, src\editor\menu_file.lua
  ["Save file as"] = "Enregistrer le fichier sous", -- src\editor\commands.lua
  ["Save file?"] = "Enregistrer le fichier ?", -- src\editor\commands.lua
  ["Save the current document to a file with a new name"] = "Enregistre le document courant sous un nouveau nom", -- src\editor\menu_file.lua
  ["Save the current document"] = "Enregistre le document courant", -- src\editor\toolbar.lua, src\editor\menu_file.lua
  ["Saved auto-recover at %s."] = "Récup. auto enregistrée à %s.", -- src\editor\commands.lua
  ["Scratchpad error"] = "Erreur dans le brouillon", -- src\editor\debugger.lua
  ["Search direction"] = "Direction de recherche", -- src\editor\toolbar.lua
  ["Search in selection"] = "Rechercher dans la sélection", -- src\editor\toolbar.lua
  ["Search in subdirectories"] = "Rechercher dans les sous-répertoires", -- src\editor\toolbar.lua
  ["Searching for '%s'."] = "Recherche de '%s'.", -- src\editor\findreplace.lua
  ["Sel: %d/%d"] = "Sel: %d/%d", -- src\editor\editor.lua
  ["Select &All"] = "Sélectionner &tout", -- src\editor\gui.lua, src\editor\editor.lua, src\editor\menu_edit.lua
  ["Select And Find Next"] = "Sélectionner et rechercher le suivant", -- src\editor\menu_search.lua
  ["Select And Find Previous"] = "Sélectionner et rerchercher le précédent", -- src\editor\menu_search.lua
  ["Select all text in the editor"] = "Sélectionne tout le texte dans l'éditeur", -- src\editor\menu_edit.lua
  ["Select the word under cursor and find its next occurrence"] = "Sélectionne le mot sous le curseur et recherche son occurence suivante", -- src\editor\menu_search.lua
  ["Select the word under cursor and find its previous occurrence"] = "Sélectionne le mot sous le curseur et recherche son occurence précédente", -- src\editor\menu_search.lua
  ["Set As Start File"] = "Définir le fichier en tant que point d'entrée", -- src\editor\filetree.lua
  ["Set From Current File"] = "Définir à partir du fichier courant", -- src\editor\menu_project.lua
  ["Set To Project Directory"] = "Utiliser le répertoire de projet", -- src\editor\findreplace.lua
  ["Set To Selected Directory"] = "Utiliser le répertoire sélectionné", -- src\editor\filetree.lua
  ["Set project directory from current file"] = "Définit le répertoire de projet à partir du chemin du fichier courant", -- src\editor\toolbar.lua, src\editor\menu_project.lua
  ["Set project directory to the selected one"] = "Faire du répertoire sélectionné le répertoire de projet", -- src\editor\filetree.lua
  ["Set search directory"] = "Définir le répertoire de recherche", -- src\editor\toolbar.lua
  ["Set the interpreter to be used"] = "Définit l'interpréteur à utiliser", -- src\editor\menu_project.lua
  ["Set the project directory to be used"] = "Définit le répertoire de projet à utiliser", -- src\editor\menu_project.lua, src\editor\filetree.lua
  ["Settings: System"] = "Paramètres : Système", -- src\editor\menu_edit.lua
  ["Settings: User"] = "Paramètres : Utilisateur", -- src\editor\menu_edit.lua
  ["Show &Tooltip"] = "Afficher l'info-&bulle", -- src\editor\menu_edit.lua
  ["Show All Files"] = "Afficher tous les fichiers", -- src\editor\filetree.lua
  ["Show Hidden Files"] = "Afficher les fichiers masqués", -- src\editor\filetree.lua
  ["Show Location"] = "Afficher l'emplacement", -- src\editor\gui.lua, src\editor\filetree.lua
  ["Show all files"] = "Affiche tous les fichiers", -- src\editor\filetree.lua
  ["Show context"] = "Affiche le contexte", -- src\editor\toolbar.lua
  ["Show files previously hidden"] = "Affiche les fichiers précédemment masqués", -- src\editor\filetree.lua
  ["Show multiple result windows"] = "Affiche les multiples fenêtres de résultat", -- src\editor\toolbar.lua
  ["Show tooltip for current position; place cursor after opening bracket of function"] = "Affiche l'info-bulle pour la position courante ; placez le curseur après la parenthèse ouvrante de la fonction", -- src\editor\menu_edit.lua
  ["Show/Hide the status bar"] = "Affiche/Masque la barre d'état", -- src\editor\menu_view.lua
  ["Show/Hide the toolbar"] = "Affiche/Masque la barre d'outils", -- src\editor\menu_view.lua
  ["Sort By Name"] = "Trie par nom", -- src\editor\outline.lua
  ["Sort selected lines"] = "Trie les lignes sélectionnées", -- src\editor\menu_edit.lua
  ["Source"] = "Code", -- src\editor\menu_edit.lua
  ["Stack"] = "Pile d'exécution", -- src\editor\debugger.lua
  ["Start &Debugging"] = "Lancer le &débogage", -- src\editor\menu_project.lua
  ["Start or continue debugging"] = "Démarre ou continue le debogage", -- src\editor\toolbar.lua, src\editor\menu_project.lua
  ["Step &Into"] = "Pas à pas détai&llé", -- src\editor\menu_project.lua
  ["Step &Over"] = "Pas à pas so&mmaire", -- src\editor\menu_project.lua
  ["Step O&ut"] = "Pas à pas so&rtant", -- src\editor\menu_project.lua
  ["Step into"] = "Rentre dans l'instruction suivante", -- src\editor\toolbar.lua, src\editor\menu_project.lua
  ["Step out of the current function"] = "Sort de la fonction courante", -- src\editor\toolbar.lua, src\editor\menu_project.lua
  ["Step over"] = "Enjambe l'instruction suivante", -- src\editor\toolbar.lua, src\editor\menu_project.lua
  ["Stop debugging and continue running the process"] = "Arrête le débogage et continue l'exécution du processus", -- src\editor\toolbar.lua, src\editor\menu_project.lua
  ["Stop the currently running process"] = "Arrête le processus en cours d'exécution", -- src\editor\toolbar.lua, src\editor\menu_project.lua
  ["Switch to or from full screen mode"] = "Active ou désactive le mode plein écran", -- src\editor\menu_view.lua
  ["Symbol Index"] = "Index des symboles", -- src\editor\outline.lua
  ["Text not found."] = "Texte non trouvé.", -- src\editor\findreplace.lua
  ["The API file must be located in a subdirectory of the API directory."] = "Le fichier d'API doit être placé dans un sous-répertoire du répertoire d'API.", -- src\editor\autocomplete.lua
  ["Toggle Bookmark"] = "Créer/Supprimer un marque-page", -- src\editor\markers.lua, src\editor\menu_edit.lua
  ["Toggle Breakpoint"] = "Créer/Supprimer un point d'arrêt", -- src\editor\markers.lua, src\editor\menu_project.lua
  ["Toggle bookmark"] = "Crée ou supprime un marque-page", -- src\editor\toolbar.lua, src\editor\menu_edit.lua, src\editor\markers.lua
  ["Toggle breakpoint"] = "Crée ou supprime un point d'arrêt", -- src\editor\markers.lua, src\editor\toolbar.lua
  ["Tr&ace"] = "&Tracer", -- src\editor\menu_project.lua
  ["Trace execution showing each executed line"] = "Trace l'exécution en affichant chaque ligne de code exécutée", -- src\editor\menu_project.lua
  ["Unable to create directory '%s'."] = "Impossible de créer le répertoire '%s'.", -- src\editor\filetree.lua
  ["Unable to create file '%s'."] = "Impossible de créer le fichier '%s'.", -- src\editor\filetree.lua
  ["Unable to delete directory '%s': %s"] = "Impossible de supprimer le répertoire '%s': %s", -- src\editor\filetree.lua
  ["Unable to delete file '%s': %s"] = "Impossible de supprimer le fichier '%s': %s", -- src\editor\filetree.lua
  ["Unable to load file '%s'."] = "Impossible de charger le le fichier '%s'.", -- src\editor\commands.lua
  ["Unable to rename file '%s'."] = "Impossible de renommer le fichier '%s'.", -- src\editor\filetree.lua
  ["Unable to save file '%s': %s"] = "Impossible d'enregistrer le fichier '%s' : %s", -- src\editor\commands.lua
  ["Unable to stop program (pid: %d), code %d."] = "Impossible d'arrêter le programme (pid : %d), code %d.", -- src\editor\debugger.lua
  ["Undo last edit"] = "Annule la dernière modification", -- src\editor\menu_edit.lua
  ["Unmap Directory"] = "Démapper le répertoire", -- src\editor\filetree.lua
  ["Unset '%s' As Start File"] = "Ne plus utiliser le fichier '%s' en tant que point d'entrée", -- src\editor\filetree.lua
  ["Updated %d file."] = {"%d fichier mis à jour.","%d fichiers mis à jour."}, -- src\editor\findreplace.lua
  ["Updating symbol index and settings..."] = "Mise à jour en cours de l'index des symboles et des paramètres...", -- src\editor\outline.lua
  ["Use %s to close."] = "Utiliser %s pour fermer.", -- src\editor\findreplace.lua
  ["Use '%s' to see full description."] = "Utilisez '%s' pour voir la description complète.", -- src\editor\editor.lua
  ["Use '%s' to show line endings and '%s' to convert them."] = "Utilisez '%s' pour afficher les fins de ligne et '%s' pour les convertir.", -- src\editor\commands.lua
  ["Use 'clear' to clear the shell output and the history."] = "Utilisez 'clear' pour effacer la sortie console et l´historique.", -- src\editor\shellbox.lua
  ["Use Shift-Enter for multiline code."] = "Appuyez sur <Shift-Entrée> pour du code multiligne.", -- src\editor\shellbox.lua
  ["View the markers window"] = "Afficher la fenêtre des marqueurs", -- src\editor\menu_view.lua
  ["View the outline window"] = "Affiche la fenêtre de structure", -- src\editor\menu_view.lua
  ["View the output/console window"] = "Affiche la fenêtre de sortie/console", -- src\editor\menu_view.lua
  ["View the project/filetree window"] = "Affiche la fenêtre d'explorateur de projet", -- src\editor\menu_view.lua
  ["View the stack window"] = "Affiche la fenêtre de pile d'exécution", -- src\editor\toolbar.lua, src\editor\menu_view.lua
  ["View the watch window"] = "Affiche la fenêtre d'expressions espionnes", -- src\editor\toolbar.lua, src\editor\menu_view.lua
  ["Watch"] = "Expressions espionnes", -- src\editor\debugger.lua
  ["Welcome to the interactive Lua interpreter."] = "Bienvenue dans l´interpréteur interactif Lua.", -- src\editor\shellbox.lua
  ["Wrap around"] = "Boucler", -- src\editor\toolbar.lua
  ["You must save the program first."] = "Vous devez d'abord enregistrer le programme.", -- src\editor\commands.lua
  ["Zoom In"] = "Zoomer", -- src\editor\menu_view.lua
  ["Zoom Out"] = "Dézoomer", -- src\editor\menu_view.lua
  ["Zoom to 100%"] = "Zoomer à 100%", -- src\editor\menu_view.lua
  ["Zoom"] = "Zoom", -- src\editor\menu_view.lua
  ["on line %d"] = "à la ligne %d", -- src\editor\debugger.lua, src\editor\editor.lua, src\editor\commands.lua
  ["traced %d instruction"] = {"%d instruction tracée", "%d instructions tracées"}, -- src\editor\debugger.lua
  ["unknown error"] = "erreur inconnue", -- src\editor\debugger.lua
}
