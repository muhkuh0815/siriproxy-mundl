# -*- encoding: utf-8 -*-
require 'cora'
require 'siri_objects'

########
#
# This is just a simple Mundl Plugin, with Answers from the famous Austrian TV Series 
# "Ein echter Wiener geht nicht unter" from 1975.
#
#####   Remember to put this plugins into the "config.yml" file 
#
# Das ist ein einfaches Mundl Plugin, mit Antworten aus der beruehmten, oesterreichischen
# TV Serie "Ein echter Wiener geht nicht unter" aus dem Jahe 1975.
#
#####   ladet das Plugin in der "config.yml" datei !
#####
## ##  WIE ES FUNKTIONIERT 
#
# sagt einfach "Hallo Mundl" oder "Servus Karli" dann kommen Antworten aus der
# jeweiligen Kategorie
#
## ##  SYNTAX
#
# Hallo/Servus/Serwas/Dere  +  
#
# + Mundl/Sackbauer
# + Karli/Fetznschaedl
# + Franzi/Nudlaug
# + Toni
# + Hanni
# + Kurti
# + Fini
# + Werner
# + Irmi
#
#
# in v0.1.289 von meinem Plugin sind die meisten Sprueche ueber Hallo + Name verfuegbar
# detailierte Abfragen gibt es wenige - mal schaun ob ich weitere hinzufuege
#
#
## ##  PROBLEME
#
## Dialekt-Spracherkennung
#
# Nachdem Siri viele Oesterreichische Wort nicht kennt, kann ich es nur auf meine Stimme  
# "kalibrieren"
#
# Sprecht ganz einfach  zb "Mundl, Dere Mundl, Serwas Mundl"  einige male, und schaut was
# Siri bei eurer Aussprache erkennt, bzw Siriproxy ausgibt.
#
# bei mir erkennt er Mundl als recht sicher als  "munter" oder "Mundo"
# Sackbauer erkennt er meist immer als  "sagt Bauer"
# Serwas kann man gut mit "sehr war's" abfragen
#
## Dialekt Aussprache
#
# da man noch keine Lautsprache/Dialekt ausgeben kann ist es recht schwer Siri wienerisch reden
# zu lassen. Manche Worte, wie Oide, Fetznschaedl, etc kommen gut rueber, die meisten aber nicht.
# Deshalb sind viele Sachen in Deutsch und nicht in tief Wiener Dialekt.
#
#
## ##   SIRIPROXY EINSCHAENKUNGEN
#
# Derzeit werden noch keine Umlaute unterstuetzt !!!
# also AE, UE, OE bzw SS fuer schafes S verwenden !!!
# das Problem ist bekannt und wird hoffentlich gefixt
#
#
## ##  KONTAKT
#
# bei Fragen Twitter: @Muhkuh0815
#
#######

class SiriProxy::Plugin::Mundl < SiriProxy::Plugin
        
    def initialize(config)
        #if you have custom configuration options, process them here!
    end
    

# detailierte Abfragen
    
listen_for /(hau|haue).*(gut|hut|huat)/i do
    say "Auf was du Pippn den Hut haust, bestimm ich!"
    request_completed 
end

listen_for /(gut|hut|huat).*(draufhauen|hauen)/i do
    say "Auf was du Pippn den Hut haust, bestimm ich!"
    request_completed 
end

listen_for /(mama|ist|tut|durchs).*(tratschen)/i do
    say "Wannst noch einmal sagst, dass die Mama a Tratschn is, kannst dir gleich an Krankenschein besorgen."
    request_completed 
end

listen_for /(wo|machen|wohin).*(Urlaub)/i do
    say "Ich hab mir dacht, wir koennten auch einmal nach Italien runterfahren. Wenn eh schon jedes Orschloch in Jesolo und in Caorle war."
    request_completed 
end

#listen_for /Test/i do
    #say "deppat, deppad, deppert, deppart, depperd, deppard. deppade, depparde, depperte, depperde, "
#   say "Spa"
#   request_completed 
#end

# HANNI

listen_for /(Hallo|Servus|Erst|Scherst|dere|werde|D.R.E.|servers|generell|der|sehr wars|sehr was|sehr war's|s'r).*(Hanni)/i do
    a = 1 + rand(16)
    if a == 1
        say "Am bestn bindst da deine Hammerl umman Hois, dann hastes immer bei da Hand"
        elsif a == 2
        say "Sei ned so bleed. Die hat kana gfragt!"
        elsif a == 2
        say "Na pass doch auf auf dein Gschlamp."
        elsif a == 3
        say "Na dann soll er uns halt am Orsch lecken. Wir brauchen ihn doch nicht, Gell Hanni?"
        elsif a == 4
        say "Sie kummt eh schon, Pfeifenstierer, bleda. Oder soll sie sich wegen dir a Raketn in den Hintern stecken?"
        elsif a == 5
        say "Ich bin ja eh allerweil freundlich zum Franzi. Ich lass mich nur net gern von so einem Bettbrunzer am Schmeh halten."
        elsif a == 6
        say "Stehst immernoch auf den Trottl. Den Herrn Dichter, das Nudlaug."
        elsif a == 7
        say "Kannst nicht verlieren Papa?"
        say "Was heist kannst nicht verlieren, verlier ja eh dauernd!"
        elsif a == 8
        say "Ich glaub ich traeum! Rennt die wieder mit dem Dichter. Als wenns nur den Trottel gaebe. Kannst dir keinen vernuenftigen Menschen aufreissen?"
        elsif a == 9
        say "Spinnt die? Oder hat die nen neuen Hawara?"
        elsif a == 10
        say "Na mach auf die Pappn, wenn die Mama was fragt! Antwort!"
        elsif a == 11
        say "An Klopfa hats, in Karli seine Schwester. Redet immer so gscheit und depperd daher, aber ist ja wurscht!"
        elsif a == 12
        say "Geh, lass doch die Trutschn, die weis ja nicht was sie redet. Sitzt dort und redet gscheit umanander, die ist ja noch nass hinter den Ohren! Lass die in Ruh!"
        elsif a == 13
        say "Du sagst garnichts ?"
        say "Was soll ich denn sagen? Ich krieg ja kein Kind!"
        say "Ist eh besser, mit deinen depperten Ansichten!"
        elsif a == 14     
        say "Frueher hab ich geglaubt, nur der Karli hat einen Klopfer. Verstehst du das was die da redet? Wieso will sie denn jetzt auf einmal nicht Heiraten?"
        say "Das weis ich doch nicht."
        elsif a == 15
        say "Es tut mir leid, das die Hanni nicht gekommen ist, eingeladen haben wir sie. Naja, hat auch einen Klescha!"
        else     
        say "Wennst mir ein kleines Nudlaug zamdrehst, wird gheirat!"
             
             
             end
        request_completed
    end

# - Hanni
             
# TONI             
        
listen_for /(Hallo|Servus|Erst|Scherst|dere|werde|D.R.E.|servers|generell|der|sehr wars|sehr was|sehr war's|s'r).*(Toni)/i do
    a = 1 + rand(24)
        if a == 1
        say "Des hast du davon, von deiner depperten anti, ti, autoritaeren Erziehung. Waun I amoi mit mein Vatern so gredt haedt, der haett ma a Watschn geben das mir 14 Tag lang der Schaedl wackelt"
        elsif a == 2
        say "Musst du ollawei so loosplaerren?"
        elsif a == 3
        say "Das darf einfach nicht wahr sein!"
        elsif a == 4
        say "Dann ists eh gut wenn eh nix ist."
        say "Du sei ganz ruhig. Du hast heut keinen Grund das du zu andere Leut laestig bist."
        say "Ich sag ja eh nix mehr."
        elsif a == 5
        say "Jetzt muessen wir einmal ausnahmsweise vernuenftig sein, Mundi."
        say "Was heist denn das, Ich bin doch eh immer vernuenftig."
        elsif a == 6
        say "Einen guten Eindruck hast du heute nicht gemacht."
        say "Geh scheiss auf nen guten Eindruck."
        elsif a == 7
        say "Hast du gehoert Toni. Dein Bub hat Probleme. In deinem Alter weis man noch garnicht was Probleme sind!"
        elsif a == 8
        say "Schlafst schon?"
        say "Nein Mundi."
        say "Servas Toni."
        elsif a == 9
        say "Edmund! schrei ned so, mitten in der Nacht!"
        say "I kann schrein wann es mir passt in meiner Wohnung, und wenns mitten in der Nacht ist!"
        say "Nein Mundi."
        say "Was Mundi?"
        elsif a == 10
        say "Weist, ich glaub dein Bub ist deppert geworden!"
        elsif a == 11
        say "Was ist denn? Wo gehst denn hin Mundi?"
        say "Darf ich vielleicht ein bisserl Lulu gehen, Mama!"
        elsif a == 12
        say "Jetzt hoer mir mal zu!"
        say "Geh Irmi bring mir ein Bier!"
        say "Du sollst zuhoeren!"
        say "Dann red!"
        elsif a == 13
        say "Du Mundi, der Karli meint es waere ganz nett wenn wir die Eltern von der Irmi zu Weihnachten einladen wuerden."
        say "Was sich der Trottl denkt ist mir doch Wurscht! Lass mir doch nicht den ganzen Heiligen Abend versauen. Wenigstens einmal im Jahr will ich keine depperten Gsichter schauen!"
        elsif a == 14
        say "Tu ned Querolieren, wie ein kleines Kind!"
        say "Ich Quedrolier ja ned!"
        elsif a == 15
        say "Willst ein Bier?"
        say "Nein Edmund, jetzt noch nicht!"
        say "Warum nicht, ist eh ein Weihnachtsbock!"
        elsif a == 16
        say "Eh Kloa, weis ich eh. Immer steh ich dir im Weg herum. Bin ich ned da, sagst ich bin ned da. Bin ich aber da, sagst ich bin da!"
        say "Was ?"
        say "Na eh. Da bin ich, Bin eh da, Da sagst immer ich bin ned da, ned ?"
        elsif a == 17
        say "Wennst das Bier suchst, Edmund! Das hast du in der Hand."
        elsif a == 18
        say "Ueber Kinder kann man mit dir ned reden. Hat selber zwei und versteht nichts davon."
        say "Was soll ich denn noch alles verstehen? Bin ich ein Kindergaertner? Kinder sind Weiba sache, ihr kriegt sie ja auch!"
        elsif a == 19    
        say "Na eh Kloa. Sag ich ja die ganze Zeit. Aber ihr hoert ja nicht zu."
        say "Wir hoeren dir schon zu. Was hast denn gesagt, Mundi?"
        say "Nix. hoert ja nicht auf mich. Ich muss ja nichts sagen! Muss ich vielleicht was sagen? Wurscht! Wir sind ja niemand wir zwei, gell Schurli!"
        elsif a == 20
        say "So ein lieber Gschropp. Schau wie sich der bewegt."
        say "In der Luft umananderfliegen kann er auch nicht!"
        elsif a == 21    
        say "Wer sagt euch denn, das es ein Bub wird?"
        say "Na eh klar, das es ein Bub wird. Glaubst der Karli pfuscht."
        elsif a == 22
        say "Sind ja eh herzig, die kleinen Fratzen. Aber auf eins zwei drei werden sie so Bissgurn, wie die alte Quapil. Als kleiner, da sind sie noch herzig. Aber sobald sie erwachsen sind, ist es nichtmehr auszuhalten mit ihnen."
        say "Wie man an dir sieht!"
        elsif a == 23
        say "Na, was hast heute gekocht, Weibal"
        else
        say "Ich hab dir schon hundertmal gesagt, das ich, sollang ich leb und zwei gesunde Haende hab, sollang machst du mir fuer einen anderen keinen Trottel, verstehst. Kommt nicht in die Frage!"
        end
    request_completed 
    end

# - TONI

# WERNER

listen_for /(Hallo|Servus|Erst|Scherst|dere|werde|D.R.E.|servers|generell|der|sehr wars|sehr was|sehr war's|s'r).*(Werner)/i do
    a = 1 + rand(9)
       if a == 1
             say "Mich aergert ja nur, das wir ausgerechnet dann hingehen sollen, wenns denen Herrschaften passt, dem Herrn und der Gnaedigen Frau Strickwarentandler."
            elsif a == 2
             say "Sie ham glaubt, dir Irma ist mit dem Jungfernbund unterwegs, daweil ist sie mit dem Karli auf die Kanarischen Inseln geflogen."
            elsif a == 3
             say "Also ich sage nichts gegen die Frau, die ist in Ordnung. Also die tut mir ja direkt leid  mit ihrem Mundl, wie sie ihn nennt. Der Mensch ist ja direkt ein Monstrum."
            elsif a == 4
             say "Orschloecher sind sie, das kannst du deinen Eltern sagen, Orschloecher, bloede."
            elsif a == 5
             say "Ich reg mich doch ned auf! Wer ned kommt braucht nicht fortgehen! Was heist das , sie kommen nicht, Wieso kommen die ned. Die muessen doch kommen!"
            elsif a == 6
            say "Is ja typisch. Typisch ist das! Zuerst sind sie beleidigt weil man sie ned einladet, und dann ladet man sie ein, verstehst, weil man ein guter Mensch ist. Und dann wollen sie nicht!"
            elsif a == 7
             say "Die duerfen sie nicht ernst nehmen, das ist meine Frau. Die will mich eine reiten. Die hat was gegen mich!"
            elsif a == 8
             say "Geh scheiss dich ned an wegen deiner Oiden. Die ist ja auch ein Mensch, und wenn nicht, dann wird sie heut Nacht einer!"
            else
             say "Wenn er alt genug ist, kann er das Geschaeft uebernehmen!"
             say "Du glaubst das? Du glaubst das der Rene so deppert ist, und euer Quetschn uebernimmt?"
             
             
             end
        request_completed 
end

# - Werner
             
# KURTI             
             
listen_for /(Hallo|Servus|Erst|Scherst|dere|werde|D.R.E.|servers|generell|der|sehr wars|sehr was|sehr war's|s'r).*(Kurt|Kurti)/i do
    a = 1 + rand(20)
       if a == 1
        say "Die Quapil erzaehlt doch nix als lauter Luegen, weil sie eine Wut auf mich hat. Weil ich gesagt hab, wenn ihr Hund noch einmal zum Haustor hinbrunzt, ist er ausbandlt."
        elsif a == 2
        say "Fuer mich bist du in dem Moment deppert gewesen wie du nicht zu uns zum Wachkorps gekommen bist. Weil wer nicht zu uns zum Wachkorps kommen will ist in meine Augen a Hirnschissler oder ein Feigling."
       elsif a == 3
        say "Geh hoer doch auf, die Schluesselwaechter sind doch alles Trotteln oder Altersrentner, Anwesende ausgenommen, eh kloa!"
       elsif a == 4
        say "Und das sag ich Dir, der Kurti Blahovetz sagt das!"
       elsif a == 5
        say "Weisst du was du bist? deppert bist du und besoffen, und mit Besoffenen tu ich nicht debattieren."
       elsif a == 6
        say "Der Tro, Der Tiroler hat zu mir gsagt, ob ich ein Bolschewist bin, Kurti. Schau ich so aus?"
        say "Nein, du schaust eher wie ein Trottel aus."
        say "Na Eh, was?"
      elsif a == 7
        say "Weist du ueberhaupt was ein Bolschewist ist, heast"
        say "Ein Bolschewist, war das nicht der, das waren die, Du kannst einem mit deiner bloeden Fragerei am Orsch gehen. Woher soll den ich wissen was ein Bolschewist ist?"
       elsif a == 8
        say "Du wohnst eh da!"
        say "Heast, du bist doch ein Trottel. Ich bin doch dein Hausmeister, ich wohn doch bei DIR."
       elsif a == 9
        say "Sei einmal ehrlich, was willst du von soeinem Hirnhappler. Was willst du ueberhaupt von einem Tiroler?"
       elsif a == 10
        say "Red ned so laut! Meine Oide schlaft. Die brauch ich um die Zeit noch nicht sehen!"
        elsif a == 11
        say "Und wegen so einem Scheiss ruckt die Polizei aus? Und gleich Zwei Mann!"
        elsif a == 12
        say " Heast du hau dich ueber die Haeuser und zu dein Herrn, du geiles Individium!"
        elsif a == 13       
        say "Ich bin froh, das sie mir nicht so ins Hirn gschissen haben wie dir, Kurti!"
        say "Wieso?"
        elsif a == 14           
        say "Leiwand wie du den jetzt runtergeschuettet hast, das ist ja direkt kuenstlerisch. "
        elsif a == 15
        say "Bleib da jetzt. Setz dich nieder. Trink noch nen Obstler!"
       elsif a == 16
        say "Der Mensch lebt nicht von Brot allein, Mundl. Und ein leerer Sack steht nicht, gell Fini!"
        say "Ein voller aber auch nicht!"
        say "Gusch Fini!"
        elsif a == 17   
        say "Oiso, was ist oida Grossvater, gemma!"
        say "Was heist hier oida Grossvater, sei ned so deppert!"
        elsif a == 18   
        say "Wachorgan, Kurt Blahowetz, nebst Gattin und Marschverpflegung zum Besuch angetreten!"
       elsif a == 19
        say "Schau Baerli, da Schurli!"
        say "Du kannst doch den Hund ned auf den Schurli hetzen!"
        say "Der tut ihm ja nichts, ich hab schon Viecher gehabt, da hast du noch nichteinmal gewusst was ein Tier ist. Ich bin ein Ornologe!"
        else
        say "Nein keine Milch! Wenn ich schon Kaffee trinken muss, dann einen Schwarzen, Ich bin ja kein Saeugling!"
       end
        request_completed 
    end

# - Kurti

# FINNI

listen_for /(Hallo|Servus|Erst|Scherst|dere|werde|D.R.E.|servers|generell|der|sehr wars|sehr was|sehr war's|s'r).*(Finni|Fini|finde ich|Finlay|Vreni|finden)/i do
    a = 1 + rand(8)
    if a == 1
        say "Mein Gott, Toni. Die Mannsbilder saufen doch alle. Einer wie der andere. Die sind doch alle gleich, die Gfrasta."
        elsif a == 2
             
        say "Weils fuer ein kleines Kind, das groesste ist, wenns die Fahne vom Grossvater riecht. Weil es dann sagen kann 'Mein Grossvater ist zwar sonst nichts, aber er sauft wenigstens wie ein Loch!'"
        elsif a == 3
        say "Na und, macht das was? Nach uns kann sie eh aussterben, die Orschwelt!"
        say "Gusch Fini!"
        elsif a == 4
        say "Ein leerer Sack steht nicht, gell Fini!"
        say "Ein voller aber auch nicht!"
        elsif a == 5
        say "Mir gibt es jedesmal einen Stich, wenn der Kurti in Dienst geht, Gell mein voller Sack!"
        elsif a == 6
        say "Scheiss auf die Fini, scheiss auf Alle. Von mir aus kann ganz Wien zuhoeren!"
        elsif a == 7
        say "Du kannst deinen Zettel gleich wieder einpacken, Fini, nichtmal einen Groschn kriegst!"
        else
        say "Und weist du was du bist? A Schaas im Wald, aber nur ein ganz ein leiser!"
    
        end
        request_completed
    
end

# - Finni
             
# KARLI

listen_for /(Hallo|Servus|Erst|Scherst|dere|werde|D.R.E.|servers|generell|der|sehr wars|sehr was|sehr war's|s'r).*(Karl|Karli|Fetzen Shigo|Fetzen schildern|Fetzenschilder|setzen Schilder|letzten Schilder)/i do
    a = 1 + rand(44)
        if a == 1
            say "Dreh ned durch, wir sind eh schon da."
            say "Was heisst, Drah ned durch, Training ist Training."
            elsif a == 2
            say "Geh, Dummel dich. Wir muessen zum Training. Dummeln sollst Dich."
            elsif a == 3
            say "Da Karli. Dem leg ich eine auf das ihm 14 Tag der Schaedl wackelt."
             elsif a == 4
            say "Ich hau den Hut heut aufs Training. Fuer den Pimperlverein bin ich eh gut genug"
            elsif a == 5
            say "Auf was du Pippn den Hut haust, bestimm ich!"
            elsif a == 6
            say "Ich werd ja noch grinsen duerfen."
            elsif a == 7
            say "Nett, das du auch schon da bist."
            elsif a == 8
            say "Gut das ich mein sicheren Posten beim Konsum hab, weil gfressn wird immer!"
            elsif a == 9
            say "Bitte sagen sie nicht Herr Sohn zu meinem Buben. Das ist ja kein Herr sondern ein Trottel."
            elsif a == 10
            say "Da geht man ganz einfach hin, reist einen Servas runter, isst ein bisserl was, trinkt ein bisserl was, gibt die Haende und dann haut man sich wieder ueber die Haeuser."
            elsif a == 11
            say "Ja aber da muessen sie 30 Kinder haben, oder seit der Geburt bei der Partei eingeschrieben sein, sonst koennen sie sich schon brausen."
            elsif a == 12
            say "Aber eine gewisse Verantwortung hab ich schon, weil ich arbeite jetzt mit einer Menge Tschuschn zusammen. Wissen sie, da muss man schon achtgeben, weil da sind eine Menge Pfosten dabei."
            elsif a == 13
            say "Komm Karli, gehen wir, sonst haut sich der Trampel noch ueber die Haeuser bevor wir dort sind."
            elsif a == 14
            say "Wenn ich sag wir gehen, dann wird gegangen. Mit mir spielt so ein Adressenbuero kein Indianer. Mit mir nicht. Die werden den Mundl schon kennenlernen. Die brauchen heute kein Fernsehen oder Hoerspiel. Das kriegen sie Live, von mir. Komm gemma"
            elsif a == 15
            say "Und der Trottel dort, ist der Karli!"
            elsif a == 16
            say "Wahrscheinlich hast Halluzinazionen vor lauter herumrennen."
            say "Ich hab keine Halluzion."
            elsif a == 17
            say "Wer nicht da ist, der macht auch keine Tuer nicht auf."
            elsif a == 18
            say "Du wirst gleich eine Watschen kriegen!"
            elsif a == 19
            say "Gut das Ihr noch auf seit."
            say "Gute Nacht!"
            elsif a == 20           
            say "Was heist das, du glaubst? Zum Glauben sind wir da, denn wir haben die Jahre, wir haben die Erfahrung. Stimmts oder hab ich recht."
            elsif a == 21
            say "Gar so gut hat es mir eigentlich nicht gefallen."
            say "Weilst einen Bascha hast, du verstehst nix von einem Haus!"
            elsif a == 22
            say "Heast, geh scheiss auf das was ueblich ist, du Rotzpippn du!"
            elsif a == 23
            say "Dass er ein Trottl ist, hab ich schon gesehen als er auf die Welt gekommen ist!"
            elsif a == 24
            say "Den Hurenhund kauf ich mir wenn er deppert wird!"
            elsif a == 25
            say "Die Hauptsache ist, das du einsiehst Karli, das du ein Trottel bist"
            elsif a == 26
            say "Wenn er goschert wird, hau ihn deppert!"
            elsif a == 27
            say "Aber ned mit den Piefke, denen muss man mit dem Orsch ins Gsicht fahren. Die stehen ja auf der Leitung!"
            elsif a == 28
            say "Siehst? Das ist das was mich bei den Alten anfeut. Kaum schiesst man sie an, reden sie vom fressen"
            say "Was dich anfeut ist mir Wurscht! Wenn ich vom essen reden will, red ich vom essen, du Trottl du!"
            elsif a == 29
            say "Wenn ned bald eine Wohnung daher kommt, dreh ich durch! Die alte Holzer, ned und ned gehts ins Altersheim, der Krampn!"
            elsif a == 30
            say "Du bist auch satt, oder ?"
            say "Warum soll ich denn satt sein?"
            say "Weilst aussiehst wie ein Puch 500 nach einem Frontalbusera!"
            elsif a == 31
            say "Scheiss auf das ganze Weihnachten!"
            elsif a == 32
            say "Typisch, typisch. Kauf halt ein paar Kilo Fisch, das er sich anfressen kann, der Trottl. Bis ihm die Graeten rauswachsen"
            say "Fuer mich brauchst garnichts kaufen, weil ich bin schon angfressen wenn ich dir zu Weihnachten ins Gsicht schau!"
            elsif a == 33
            say "Habts ihr schon einen Namen? Wie werdet ihr ihn Taufen? Edmund ?"
            say "Wer heist den Mundl, Mundl ist ja kein Name!"
            elsif a == 34
            say "Einen anderen Namen? Georg? Na wuerde euch Schurli nicht gefallen?"
            say "Heast, mein Kind ist kein Wellensittich. Schurli heist die Schwanztrompete da hinten!"
            elsif a == 35     
            say "Trinkst auch noch ein Bier?"
            say "Na geh, frag ned so bloed, Karli!"
            elsif a == 36
            say "Na, was sagst du jetzt Grossvater?"
            say "Du Trottl, werd nicht frech!"
            elsif a == 37
            say "Typisch Karli, mein Enkerl ist ihm wurscht. Den will er da reinhauen, in einen Gebrauchtwaagen. Zwanzig andere Kinder haben da schon hundertmal reingeschissen!"
            elsif a == 38
            say "Wer laeutet denn da schon wieder? Sind wir ein Durchhaus? Geh raus Karli und schau"
            say "Immer ich, bin ja ned euer Hausknecht!"
            elsif a == 39
            say "Was sagt ihr jetzt, jetzt schaut ihr wie die Autos, da Karli, ein Bomber, gell Irmi!"
            elsif a == 40
            say "Was hat denn der Renne? Der schaut ja so steif!"
            say "Nix hat er, angeschissen wird er sich haben!"
            elsif a == 41
            say "Wennst ein Kind hast, musst eine Menschenwuerdige Wohnung haben, ned so ein Loch wie in der Hasengasse!"
            elsif a == 42
            say "Servus Kleiner. Hast brav in die Windeln gschissen, damit du eine gute Farbe kriegst?"
            elsif a == 43
            say "Unser kleiner Rene hat keinen Hunger? Vielleicht will er einen Kaffee."
            say "Ja, aber er trinkt nur einen Melange mit viel Muttermilch!"
            else
            say "Wie kann ein Elektriker in den Strohkreis reinkommen. Das ein Erwachsener Mensch so deppert sein kann, das versteh ich nicht!"
            
            
        end
        request_completed 
    end

# - Karli

# IRMI            
            
listen_for /(Hallo|Servus|Erst|Scherst|dere|werde|D.R.E.|servers|generell|der|sehr wars|sehr was|sehr war's|s'r).*(Ihr my|ihr mich|irgendwie|ihr nie|irma|ihr miet)/i do
             a = 1 + rand(2)
        if a == 1
             say "Geh Irmi, leg a gscheite Plattn auf."
        else
             say "Wer laeutet denn da, Irmi?"
             say "Woher soll ich das Wissen?"
             say "Na dann geh raus schauen. Wenn einer draussen laeutet, ist einer draussen!"
        end
        request_completed 
end

# - Irmi             
             
# FRANZI

listen_for /(Hallo|Servus|Erst|Scherst|dere|werde|D.R.E.|servers|generell|der|sehr wars|sehr was|sehr war's|s'r).*(Franz|Franzi|Franze|Nudel Aug|nun du aug|nun du auge|nudel auge|nudel aug|nudelaug|nudlaug|nun du Rock)/i do
    a = 1 + rand(12)
     if a == 1
        say "Schnapsen lernt er nie, weil da braucht man ein Hirn. Aber dichten kann er, alle Achtung, Franzi. In ein paar Jahren wird er Professor, weil das wird ja bei uns jeder Trottel."
         elsif a == 2
        say "Sie kummt eh schon, Pfeifenstierer, bleda. Oder soll sie sich wegen dir a Raketn in den Hintern stecken?"
        elsif a == 3
        say "Ah Figur hat der, wie a Pfeifnreadl. Und Mordstruemmer Augenglaeser mit an Haufn Dioptrin, der Herr Buchhalter, der"
       elsif a == 4
        say "Ich bin ja eh allerweil freundlich zum Franzi. Ich lass mich nur net gern von so einem Bettbrunzer am Schmeh halten."
       elsif a == 5
        say "Was der Franzi weis, hab ich schon lang wieder vergessen. Der kann mir nix erzaehlen. A Besserwisser is er, sonst garnix."
        elsif a == 6
        say "Ich hab dir schon hundert und hundert mal gsagt das ich nicht will das in meiner Gegenwart von diesem Fetzenschaedel gredet wird. "
       elsif a == 7
        say "Koennen sie, Herr Franzi, vielleicht per Zufall einen urdentlichen Bauernschnapser?"
       elsif a == 8            
        say "Der will nicht mitfahren? Ich glaub ich traeum oder spinn ich? Sind wir dem Herrn Buchhalter nicht fein genug, dem Rauschkind dem. Dem sind wir vielleicht zu deppert, oder was?"
        say "Jetzt reg dich nicht so auf Mundl, wir fahren ja auch nicht nach Jesolo."
        say "Ist ja wurscht"   
       elsif a == 9     
        say "Ich hab doch nix gegen Sie. Ich bin ja eh froh das wenigstens einer aus der Familie ein Leiberl reisst."
       elsif a == 10 
        say "Ja ja, ich vergoenne ihm ja eh alles. Von mir aus kann er Weltmeister im Dichten werden."
         elsif a == 11
        say "Was glaubst du denn, wer von unseren Kindern zuerst was Kleines zusammenbringt."
        say "Der Karli natuerlich, oder glaubst das der Dichter, der Dioptrinotto was zusammenbringt. Der soll froh sein wenn ers aufschreiben kann."
        else
        say "Der Franzi hat ja einen kleinen Descha, die Brillen, die Dioptrien, aber das ist ja Wurscht. Der wird quasi mein Schwiegersohn, und die Hanni hat auch nen Pascha!"
     
     end
    request_completed 
end

# - Franzi

# MUNDL            
            
listen_for /(Hallo|Servus|Erst|Scherst|dere|werde|D.R.E.|servers|generell|der|sehr wars|sehr was|sehr war's|s'r).*(Munro|munter|Mono|Monroe|Edmund|Redmond|Mungo|Munde|Mundo|Mondo|Mundi|alte|Revolver|schuldene|sag Bauer|sag Bahr|sagt Bauer|Faktor)/i do
    a = 1 + rand(154)
    if a == 1 
        say "Hau dich doch ueber die Haeuser, du Schneebrunzer, wer red denn mit dir?"
        elsif a == 2
        say "Wenn du Zniachtl nicht gleich eine Wolkn bist, kriegst a Fotzn."
        elsif a == 3
        say "Was glauben Sie denn ueberhaupt, mit wem Sie reden? Bei mir reissens mit so einer Goschn ka Leiberl!"
        elsif a == 4
        say "Glaubst, der Sackbauer Mundl lasst sich am Schaedl scheissen und sagt noch dankeschoen?"
        elsif a == 5
        say "Du bist wieder angsoffen wie a Haeusltschick."
        elsif a == 6
        say "Mundl, schrei nicht so, die Leut schaun schon!"
        say "Ich scheiss auf die Leut!"
        elsif a == 7
        say "Halt die Goschn, heast. Wenn ich red, hast du Pause."
        elsif a == 8
        say "Heut is a Scheisstag. Das hab ich schon im Urin gschpuert beim Aufstehn."
        elsif a == 9
        say "Schau, Papa, mein neuer Puch 500!"
        say "Tus nur putzen, die Puderdosn!"
        elsif a == 10
        say "Mit den Piefkes kann man nicht reden, denen muss man mit dem Orsch ins Gsicht fahren."
        elsif a == 11
        say "Du brauchst mir ueberhaupt nicht ins Gsicht schauen, gehst halt in Park, setzt dich auf ein Bankerl und glurst die Spatzen an, du Rauschkind, du."
        elsif a == 12
        say "Derre, du Rauschkind, du."
        elsif a == 13
        say "Jetzt kauf ich dir eine Haube, damit du es warm hast, du Eierschaedel."
        elsif a == 14
        say "Nur ned hudeln. Mit Hudeln macht man Kinder."
        elsif a == 15
        say "Naja, haun wir uns was in die Wampn. Schauen wir, was sie heute wieder kocht hat. A hinige Hendlhaxn! Na, braten wir uns halt den Gummiadler."
        elsif a == 16
        say "Gell Schurli, wir machen uns alles selber. Wir brauchen keine Weiber mehr. Schade, dass ihr Sittich kein Bier saufts."
        elsif a == 17
        say "Mundfaul ist der, wennst zu dem was sagst, ist es, wie wennst im Wald einen Schass lasst"
        elsif a == 18
        say "Was ist denn mit der Mama los? Red einmal mit ihr, bist doch der Boss."
        say "Eh klar, ich bin ja der Boss. Weisst, was ich bin? Ein Orsch mit Ohren!"
        elsif a == 19
        say "Macht eh nichts, wenn kein Bier mehr da ist. Wer nichts isst, braucht auch nichts saufen."
        elsif a == 20
        say "Der Bub hat ja alles, wenn der ein Bier wollt, taetst es ihm ja gleich hinten reinschieben."
        elsif a == 21
        say "Heast, ihr habts ein Mitgefuehl wie die Fleischhackerhund. Bei euch ist einer erst krank, wenn er aufbahrt ist."
        elsif a == 22
        say "Heast, der Schurli will doch nicht runter zu die Hausmeister, die sind ja Bsuff! Da kommt der Schurli zurueck und hat eine Leberzirrhose."
        elsif a == 23
        say "Lesen ist der groesste Scheiss. Das macht die Leut nur deppert."
        elsif a == 24
        say "Alles, was kein Wiener ist, ist praktisch ein Tschusch. Wurscht, ob er aus Sankt Poelten, Buxtehude, Japan oder aus dem Urwald kommt."
        elsif a == 25
        say "Lass es laeuten. Das ist eh nur irgendein Vertreter oder ein Hirnhappler von den Zeugen Jehovas."
        elsif a == 26
        say "Aber geh, ich hab ihm ka Goschn anghaengt. Ich hab ihn nur gfragt, obs ihm ins Hirn gschissen haben."
        elsif a == 27
        say "Ich weis eh das der Bub Rene heist. Aber Rene ist kein Name nicht!"     
        elsif a == 28
        say "Wir trinken den Schnaps gleich aus der Flaschn, dann brauchens das Stamperl net waschen."
        elsif a == 29
        say "Wennst diesen Schnaps trinkst, dann darfst eine halbe Stund net rauchen, sonst explodierst."
        elsif a == 30
        say "Ich trink kein Wasser. Ich will doch nicht inwendig verrosten."
        elsif a == 31
        say "Ich bin ja nur froh, dass mir net so ins Hirn gschissen haben wie dir."
        elsif a == 32
        say "Herst, da Karli mei Bua, is deppert!"
        elsif a == 33
        say "Gschissana, bist deppert worden?"
        elsif a == 34
        say "Heast, hupf in Gatsch, du Oasch mit Ohrn."
        elsif a == 35
        say "Kannst da glei den Schaedl faschen, weil du kriegst a Watschn!"
        elsif a == 36
        say "Der Off der bloede."
        elsif a == 37
        say "Die Kreatur die Verdammte."
        elsif a == 38
        say "Der Trottel weis doch nicht was er redet. Der hat doch nicht die Ahnung."
        elsif a == 39
        say "Passens doch auf, sie Trottel sie bloeder. Koennens nicht woanders gehen. orschloch, Depperts"
        elsif a == 40
        say "Ich bin ja nicht der Professor Koenig vom Fernsehen. Mir sind die Vogal wurscht."
        elsif a == 41
        say "Na du brauchst dei Bappn eh nicht aufmachen. Geh lass mich in Ruh!"
        
        elsif a == 42
        say "Bist du so deppert, oder stellst dich nur so? Nana der ist schon so deppert. Manchesmal frag ich mich ob den wirklich ich gmacht hab."
        elsif a == 43
        say "Das koennt ihr doch mit uns nicht machen. Mit uns ned. Mit dem Karli vielleicht. Aber nicht mit mir dem Mundl."
        elsif a == 44
        say "Ich pick ihnen an die Mauer, das ihr Chef sie mit der Spachtel von der Mauer kratzen kann."
        elsif a == 45
        say "Arbeiten gehst du mir nicht. Der Mann im Haus bin ich. Sollang ich leb erhalt ich die Familie, Eh klar."
        elsif a == 46
        say "Pfostn, wissens, sind wie man sagt quasi Trottel, nicht direkte, aber immerhin Leute mit einem gewissen Klescher."
        elsif a == 47
        say "Schauen sie sich meine zwei Haende an. Mit denen zerreiss ich ihnen einen Ochsen, wenns sein muss."
        elsif a == 48
        say "Oistan, Sie brennen oder sie lernen mich kennen!"
        elsif a == 49
        say "Was gibts denn da zu lachen, du depperte Gurke?"
        elsif a == 50
        say "Ich geh jetzt Schlafen, Gute Nacht. Hauts euch am Bauch!"
        elsif a == 51
        say "Im Fernsehen ist heut auch nix. Aber die Hauptsache die Leute kaufen sich einen Farbfernseher, damit sie den Scheiss auch noch in Farbe sehen."
        elsif a == 52
        say "Scheiss dich an bis uebers Kreuz, Eh kloa."
        elsif a == 53
        say "Was? Bier darf ich jetzt auch keins mehr trinken?"
        elsif a == 54
        say "Was bilden die sich ueberhaupt ein. Was glauben die denn wer sie sind. So koennen sie doch nicht mit uns umspringen. Na denen werd ichs zeigen. Die glauben vielleicht wir sind Trottel."
        say "MUNDI, das ist dem Karli seine Sache, da hast du dich nicht einzumischen!"
        say "Wieso nicht?"
        elsif a == 55
        say "Zwei so alte Scheisser. Der Schani ist ja deppert geworden. Das geht doch nicht, das ist eine Tirolerin. Und ueberhaupt, die hat ja schon einen Mann hamdraht."
        elsif a == 56
        say "Ueberhaupt, die haben ja keine Kultur da unten, die Bemsteln, nix."
        say "Aber du hast eine, gell!"
        elsif a == 57
        say "Die haben so einen Fitnessraum, nicht. Da haben sie so Radln, da kann man tretten und ned fahren. Orschloecher!"
        elsif a == 58
        say "Ich kenn doch die Tiroler, die ham doch alle nen Hammer."
        elsif a == 59
        say "Jetzt hauen wir uns ein gepflegtes Bier in die Venen, damit wir munter werden."
        elsif a == 60
        say "Wer ist den das? Wer laeutet denn da so deppert?"
        elsif a == 61
        say "Den hau ich so, das er nicht weis wo links und rechts ist!"
        elsif a == 62
        say "Man wird ja nicht juenger."
        say "Ja eh klar, nichtmal ich, stellen sie sich vor!"
        elsif a == 63
        say "Aber wenn ich den morgen seh, dann hau ich ihn durch eine zugmachte Glastuer raus auf den Gang!"
        elsif a == 64
        say "Red doch nicht allaweu dazwischen!"
        elsif a == 65
        say "Wenn du nochmal sagst, das meine Wohnung ein Scheisshaus ist, dann kannst da gleich ausziehen. G Gle Glei Glei rutscht mir mei Hand aus, und wenn du zehn mal verheirat bist, kriegst a Watschen das dir 14 Tag der Schaedel wackelt."
        elsif a == 66
        say "Scheisshuebeln sind das!"
        elsif a == 67
        say "Und du kriegst so eine Watschen, das du mit dem Orsch auf die Uhr schaust!"
        elsif a == 68
        say "Wer hat euch den gefragt? Hat euch wer gefragt? Euch hat doch niemand gefragt! Was redets denn, wenn euch niemand fragt!"
        elsif a == 69
        say "Was heist denn zufrieden? Bin doch eh nicht unzufrieden. Oder?"
        elsif a == 70
        say "Das sind ja Trottln! Das ist ja eine Frechheit was sich die da erlauben. Die glauben nur weil wir Proleten sind, koennen sie mit uns machen was sie wollen. Klagen werd ich die Trottln!"
        elsif a == 71
        say "Die halten uns alle fuer Volltrottel!"
        elsif a == 72
        say "Wieso nicht? Wir zahlen doch Steuer. Das sind unsere Angestellten. Sind doch fuer uns da, die Polizei, die Kibara heast!"
        elsif a == 73
        say "Was ist den dass?"
        say "Ein Hundertwasser."
        say "Na, der Scheissdreck kommt da wieder weg, das koennts euch aufs Haeusel haengen!"
        elsif a == 74
        say "Red mich ned so deppert an, du Trottl du!"
        elsif a == 75
        say "RENOVIERT WIRD! Sind ja keine Hund, will ja auch schoener wohnen!"
        elsif a == 76
        say "Scheiss Tapeten! Runter damit!"
        elsif a == 77
        say "Wissen Sie wer ein Glueck braucht? der Blade, der Piefkineser der mich da reingeritten hat. Wenn ich den erwisch. Der braucht ein Glueck! Ich nicht! Ich nicht!"
        elsif a == 78
        say "Was heist mit Gewalt?, mit Gewalt. Mit dem Hammer koennt man draufhauen auf das Krueppelgspiel"
        elsif a == 79
        say "Bitte, wennst willst pack deine sieben Zwetschken zam, und zieh ab mit der Schnalle!"
        elsif a == 80
        say "Dem gehoert jetzt so eine Watschen, das er bis nach Zuhause beschleunigt, der Trottl!"
        elsif a == 81
        say "Geh misch dich da nicht ein! Du Milchkind du, du weist ja noch garnicht was auf der Welt alles passiert. Du bist ja noch nass hinter den Ohren, du Kinderl!"
        elsif a == 82
        say "Gut! Bitte! Soll er halt reden. red, red jetzt!"
        elsif a == 83
        say "Bist du deppert geworden! Der kann doch nicht mir seiner Strichkatz nicht in unsere Wohnung ziehen! Da sind wir doch gleich im ganzen Bezirk verschrieen. Da glauben doch die Leute wir wollen ein Puff aufmachen."
        elsif a == 84
        say "Wenn er ned zahlt, kriegt er von mir a Watschen das er 14 Tag im Kreis geht!"
        elsif a == 85
        say "Ich hab eh alles was ich brauch! Hab eh eine Familie."
        say "Ja, am Hals!"
        elsif a == 86
        say "So a Scheisshittn!"
        elsif a == 87
        say "Das koennens doch mit mir nicht machen! Da Renovierst so a Wohnung, da steckst dein ganzes Geld rein! Schaus dir an. Und auf einmal kommt so ein ein scheiss Auslaender, so ein verdammter und reisst dir die Huette unterm Orsch weg!"
        elsif a == 88
        say "Das regt mich so sehr auf! Da muss ich ruhig bleiben! Sonst Prack ich dem eine das er sich Anscheisst!"
        elsif a == 89
        say "Wenn da so ein Germane bei meiner Tuer reinschaut mit seiner Blonden, fliegt er gleich die Stiegen runter, bis zu dir in die Kueche!"
        elsif a == 90
        say "Da kann doch kein Deutscher unser Haus kaufen! Das geht ja garnicht! Sind ja nicht beim Hitler!"
        elsif a == 91
        say "Ich weis eh, hin und weg ist ein Dreck!"
        elsif a == 92
        say "Ich hab ihnen meine Meinung gesagt, denen dorten! Dann hab ich muessen gehen sonst waer mir die Hand ausgerutscht!"
        elsif a == 93
        say "In Wien kann man nichts uebers Knie brechen. Da muss alles seinen Gang gehen. Da wird alles Delatorisch erledigt."
        elsif a == 94
        say "Dem darf man ja nichts tun, dem Schrumpfgermanen!"
        elsif a == 95
        say "Bei uns kann ned so ein Wuerschtel aus Piefkinesien daherkommen und die Pappn aufreissen, das geht bei uns nicht! Das koennen sie daheim machen, wo sie herkommen, aber da ned! Bei uns reissen wir die Pappn selber auf, weil bei uns sind die Wiener die ersten!"
        elsif a == 96
        say "Wir sind da nicht in Deutschland, wir sind nicht bei den Wilden!"
        elsif a == 97
        say "Ausnahmen? Ist er bloed? Ausnahmen sind bei mir nicht drinnen!"
        elsif a == 98
        say "Geh, red ned so saudeppert daher du Depp!"
        elsif a == 99
        say "Auf die Quappil wird gschissn! Jetzt wird geschossen!"
        elsif a == 100
        say "Bin ich ein Trottl, heiss, heiss, heiss!"
        elsif a == 101
        say "Hearst, Wenn du ned gleich deine bloede Pappn haltest hau ich dir in deine Paradeiser eine!"
        elsif a == 102
        say "Jetzt lassen wirs krachen, dass sich die Quapil anbrunzt!"
        elsif a == 103
        say "Wir waren das nicht! Sehen sie nicht das es bei uns finster ist?"
        elsif a == 104
        say "Ich hab mir dacht, wir koennten auch einmal nach Italien runterfahren. Wenn eh schon jedes Orschloch in Jesolo und in Caorle war."
        elsif a == 105 
        say "Mein Bier ist nicht deppert!"
        elsif a == 106
        say "Was red ich zu Euch Drankla, das ist ja eine Vergeudung! Verstehst, eine Vergeudung ist das!"
        elsif a == 107
        say "Alt? Freilich bin ich Alt, Zwanzig bin ich nimmer, aber ein alter Krautera bin ich auch ned, oder Toni?"
        elsif a == 108
        say "Schaun Sie, draengen oder so will ich sie ja nicht. Weil ich bin ja ein geduldiger Mensch. Aber trotzdem will ich jetzt wissen, kriegen meine Kinder die Wohnung. Und wann geht die alte Schass-trommel endlich ins Altersheim?" 
        elsif a == 109
        say "Hoeren Sie, bei ihnen schaut es ja aus wie beim Idi Amin!"
        elsif a == 110
        say "Ich schrei wann ich will! Ich schrei wie mein Vater, wenn ich so geredet haette mit ihm, der haett mich die Stiegen runterghaut!"
        elsif a == 111
        say "Liebe Frau Holzer. Schauen sie, sie koennen ja eh schon nichtmehr zusammenraeumen. Bei ihnen schauts ja aus wie beim Idi Amin. Gehen sie doch in dieses deppert... in dieses schoene Altersheim! Dort werden sie auch gewaschen. Hier kommen sie eh nur um, in ihrem Dreck!"
        elsif a == 112
        say "Lass doch die bloede Gurkn. Findest dir keine andere?"
        elsif a == 113
        say "Oid genug? Die sind doch nicht alt genug. Der Bua hat doch nichtmal aufpassen koennen. Draht er einen bub zammen! Weil er ned Oid genug ist!"     
        elsif a == 114
        say "Heast, du redest so einen saubloeden Bloedsinn daher, das ist ja bloed was du da sagst. A Trottlerei"
        elsif a == 115
        say "Sie sollen ned so depperd daherredn"
        elsif a == 116
        say "Warum halten sie sich immer die Ohrn zu wenn ich mit ihnen rede?"
        elsif a == 117
        say "Alexander und Michael sind keine Namen, Was dir gfallt ist mir wurscht, wenn ich sag das sind keine Namen, dann sind das keine Namen!"
        elsif a == 118
        say "Was glaubst du denn wo wir sind! In meiner Wohnung wird so ein Ton nicht angeschlagen, so ein ordinaerer!"     
        elsif a == 119
        say "Naja, hauen wir uns halt was in die Wampm!"
        elsif a == 120
        say "Jaja, halt nur zu die anderen, eh kloa!"
        elsif a == 121
        say "Ich bin angfressen, ich hau mich in die Hapfn!"
        elsif a == 122
        say "Na, Schurli, serwas Trottl!"
        elsif a == 123
        say "Schad das ihr Sittich kein Bier sauft."   
        elsif a == 124
        say "Spaar dir deine witzigen Bemerkungen. Wir geben nichts, mir gibt ja auch keiner was! Warum soll ich mich fuer die anderen interessieren, fuer mich interessiert sich ja auch keiner! Ich bin ja auch jedem Wurscht!"
        elsif a == 125
        say "Streitets doch nicht, ihr Trottln. Seit froh das ihr beinander seit!"
        elsif a == 126
        say "Trampl bloeda!"
        elsif a == 127
        say "Ich hab dir eh gesagt, das du von mir aus nichts kochen brauchst, weil ich nichts mehr essen mag, ich bin schon angfressn!"
        elsif a == 128
        say "Na Schurli, schlafst schon. Hab ich dich aufgeweckt, du Trottl. Macht ja nichts, schlaf weiter!"
        elsif a == 129
        say "Scheiss auf das Spazierengehen, immer dieses umeinanderhatschen!"
        elsif a == 130
        say "Hast das gehoert, Schurli. Aber so sind sie, die Weiba. Das Kostgeld muessen wir ihnen geben, aber sonst brauchen sie uns ja nicht!"
        elsif a == 131
        say "Die koennen uns Bugglfuenferln!"
        elsif a == 132
        say "Nein, dort fahr ich nicht hin. Ich bin doch nicht mein eigener Feind. Das ist ja ein Altersheim. Ich bin doch kein Krueppel, oder was!"
        elsif a == 133
        say "Da gibts kein Zittern!"
        elsif a == 134
        say "Da samma, mit den Christbamma!"
        elsif a == 135
        say "Dort werden die Gelsen sein auf dem Campingplatz, die Piefke werden umanandersabeln, und die Burgenlaender werden da sein. Sei froh, Schurli, das du nicht mitfahren muss!"
        elsif a == 136
        say "Da schau her, weist wo er uns hinschicken will. FKK. Du bist ein Spechtla, Oida!"
        elsif a == 137
        say "Haben sie schonmal eine Frau gesehen, die nicht nervoes ist?"
        elsif a == 138
        say "Freilich sind das Doerfer, im Burgenland haben sie ja nur Doerfer!"
        elsif a == 139
        say "Schweigen ist Silber, Reden ist Gold!"  
        elsif a == 140
        say "Das dauert bei euch noch, bis ihr die Patschn aufstellts!"
        elsif a == 141
        say "Das hab ich mir gleich gedacht, das kann ja nicht anders sein, wenn zwei so Trottln wie ihr ein Kind habt."
        elsif a == 142
        say "Das hab ich mir gleich gedacht, das ist eine Hirnidee, typisch!"
        elsif a == 143
        say "Was heist da Verantwortungslos, Modern ist das!"
        elsif a == 144
        say "Draufhauen, Ja, aber einen Gschroppn, nein. Wenn die Mama und ich damals auch so gedacht haetten, dann wuerdet ihr immernoch in Abrahams Wurschtkessel herumschwimmen!"
        elsif a == 145
        say "Wer ist denn bei dir ein Mundlburli?"
        elsif a == 146
        say "Da kennt sich doch eine Sau nicht aus, nichtnmal ich!"
        elsif a == 147
        say "Ich bin auf den depperten Gschpass ned neugierig!"
        elsif a == 148
        say "Ich mach ueberhaupt nie was mit Gewalt!"
        elsif a == 149
        say "Das kommt nicht in die Frage!"
        elsif a == 150
        say "Weist, ich mag ja kein so ein bugglertes Auto, weil wenn ich mir einen Wagen kauf. Das muss ein richtiges Auto sein. Nicht so eine Leibschuessel auf Radln, da lachen mich die Leut aus!"
        elsif a == 151
        say "Na, Schurli, bist schon munter?"
        elsif a == 152
        say "Der Schani wird sich auskennen, der oide Trottel!"
        elsif a == 153
        say "Und das muss dieser Trottel, dieser Dr. Dipl. Ing. begreifen. Und dazu sind wir da, die Betriebsraete!"
        else
        say "Was mischt du dich da ueberhaupt ein, was geht denn das dich an, verstehst ja nichts von Politik!"
        
             
        end     
        request_completed 
end
# - Mundl             
             
end


