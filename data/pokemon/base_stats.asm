tmhm: MACRO
; used in data/pokemon/base_stats/*.asm
_tms1 = 0 ; TM01-TM24 (24)
_tms2 = 0 ; TM25-TM48 (24)
_tms3 = 0 ; TM49-TM50 + HM01-HM07 + MT01-MT03 (12/24)
rept _NARG
	if DEF(\1_TMNUM)
	if \1_TMNUM < 24 + 1
_tms1 = _tms1 | (1 << ((\1_TMNUM) - 1))
	elif \1_TMNUM < 48 + 1
_tms2 = _tms2 | (1 << ((\1_TMNUM) - 1 - 24))
	else
_tms3 = _tms3 | (1 << ((\1_TMNUM) - 1 - 48))
	endc
	else
		fail "\1 is not a TM, HM, or move tutor move"
	endc
	shift
endr
rept 3 ; TM01-TM24 (24/24)
	db _tms1 & $ff
_tms1 = _tms1 >> 8
endr
rept 3 ; TM25-TM48 (24/24)
	db _tms2 & $ff
_tms2 = _tms2 >> 8
endr
rept 2 ; TM49-TM50 + HM01-HM07 + MT01-MT03 (12/16)
	db _tms3 & $ff
_tms3 = _tms3 >> 8
endr
ENDM

BaseData::
	; the parameter to indirect_table must be a compile-time constant, and BASE_DATA_SIZE is not
	if ((__RGBDS_MAJOR__ << 24) | (__RGBDS_MINOR__ << 8) | __RGBDS_PATCH__) >= $400
		; if this version of RGBDS supports asserts, just assert that the size is correct
		assert $20 == BASE_DATA_SIZE, "Please adjust the table size (and this assertion) to match BASE_DATA_SIZE"
	endc
	indirect_table $20, 1
	indirect_entries CELEBI, BaseData1
	indirect_entries NUM_POKEMON, BaseData2
	indirect_table_end

BaseData1:
INCLUDE "data/pokemon/base_stats/bulbasaur.asm"
INCLUDE "data/pokemon/base_stats/ivysaur.asm"
INCLUDE "data/pokemon/base_stats/venusaur.asm"
INCLUDE "data/pokemon/base_stats/charmander.asm"
INCLUDE "data/pokemon/base_stats/charmeleon.asm"
INCLUDE "data/pokemon/base_stats/charizard.asm"
INCLUDE "data/pokemon/base_stats/squirtle.asm"
INCLUDE "data/pokemon/base_stats/wartortle.asm"
INCLUDE "data/pokemon/base_stats/blastoise.asm"
INCLUDE "data/pokemon/base_stats/caterpie.asm"
INCLUDE "data/pokemon/base_stats/metapod.asm"
INCLUDE "data/pokemon/base_stats/butterfree.asm"
INCLUDE "data/pokemon/base_stats/weedle.asm"
INCLUDE "data/pokemon/base_stats/kakuna.asm"
INCLUDE "data/pokemon/base_stats/beedrill.asm"
INCLUDE "data/pokemon/base_stats/pidgey.asm"
INCLUDE "data/pokemon/base_stats/pidgeotto.asm"
INCLUDE "data/pokemon/base_stats/pidgeot.asm"
INCLUDE "data/pokemon/base_stats/rattata.asm"
INCLUDE "data/pokemon/base_stats/raticate.asm"
INCLUDE "data/pokemon/base_stats/spearow.asm"
INCLUDE "data/pokemon/base_stats/fearow.asm"
INCLUDE "data/pokemon/base_stats/ekans.asm"
INCLUDE "data/pokemon/base_stats/arbok.asm"
INCLUDE "data/pokemon/base_stats/pikachu.asm"
INCLUDE "data/pokemon/base_stats/raichu.asm"
INCLUDE "data/pokemon/base_stats/sandshrew.asm"
INCLUDE "data/pokemon/base_stats/sandslash.asm"
INCLUDE "data/pokemon/base_stats/nidoran_f.asm"
INCLUDE "data/pokemon/base_stats/nidorina.asm"
INCLUDE "data/pokemon/base_stats/nidoqueen.asm"
INCLUDE "data/pokemon/base_stats/nidoran_m.asm"
INCLUDE "data/pokemon/base_stats/nidorino.asm"
INCLUDE "data/pokemon/base_stats/nidoking.asm"
INCLUDE "data/pokemon/base_stats/clefairy.asm"
INCLUDE "data/pokemon/base_stats/clefable.asm"
INCLUDE "data/pokemon/base_stats/vulpix.asm"
INCLUDE "data/pokemon/base_stats/ninetales.asm"
INCLUDE "data/pokemon/base_stats/jigglypuff.asm"
INCLUDE "data/pokemon/base_stats/wigglytuff.asm"
INCLUDE "data/pokemon/base_stats/zubat.asm"
INCLUDE "data/pokemon/base_stats/golbat.asm"
INCLUDE "data/pokemon/base_stats/oddish.asm"
INCLUDE "data/pokemon/base_stats/gloom.asm"
INCLUDE "data/pokemon/base_stats/vileplume.asm"
INCLUDE "data/pokemon/base_stats/paras.asm"
INCLUDE "data/pokemon/base_stats/parasect.asm"
INCLUDE "data/pokemon/base_stats/venonat.asm"
INCLUDE "data/pokemon/base_stats/venomoth.asm"
INCLUDE "data/pokemon/base_stats/diglett.asm"
INCLUDE "data/pokemon/base_stats/dugtrio.asm"
INCLUDE "data/pokemon/base_stats/meowth.asm"
INCLUDE "data/pokemon/base_stats/persian.asm"
INCLUDE "data/pokemon/base_stats/psyduck.asm"
INCLUDE "data/pokemon/base_stats/golduck.asm"
INCLUDE "data/pokemon/base_stats/mankey.asm"
INCLUDE "data/pokemon/base_stats/primeape.asm"
INCLUDE "data/pokemon/base_stats/growlithe.asm"
INCLUDE "data/pokemon/base_stats/arcanine.asm"
INCLUDE "data/pokemon/base_stats/poliwag.asm"
INCLUDE "data/pokemon/base_stats/poliwhirl.asm"
INCLUDE "data/pokemon/base_stats/poliwrath.asm"
INCLUDE "data/pokemon/base_stats/abra.asm"
INCLUDE "data/pokemon/base_stats/kadabra.asm"
INCLUDE "data/pokemon/base_stats/alakazam.asm"
INCLUDE "data/pokemon/base_stats/machop.asm"
INCLUDE "data/pokemon/base_stats/machoke.asm"
INCLUDE "data/pokemon/base_stats/machamp.asm"
INCLUDE "data/pokemon/base_stats/bellsprout.asm"
INCLUDE "data/pokemon/base_stats/weepinbell.asm"
INCLUDE "data/pokemon/base_stats/victreebel.asm"
INCLUDE "data/pokemon/base_stats/tentacool.asm"
INCLUDE "data/pokemon/base_stats/tentacruel.asm"
INCLUDE "data/pokemon/base_stats/geodude.asm"
INCLUDE "data/pokemon/base_stats/graveler.asm"
INCLUDE "data/pokemon/base_stats/golem.asm"
INCLUDE "data/pokemon/base_stats/ponyta.asm"
INCLUDE "data/pokemon/base_stats/rapidash.asm"
INCLUDE "data/pokemon/base_stats/slowpoke.asm"
INCLUDE "data/pokemon/base_stats/slowbro.asm"
INCLUDE "data/pokemon/base_stats/magnemite.asm"
INCLUDE "data/pokemon/base_stats/magneton.asm"
INCLUDE "data/pokemon/base_stats/farfetch_d.asm"
INCLUDE "data/pokemon/base_stats/doduo.asm"
INCLUDE "data/pokemon/base_stats/dodrio.asm"
INCLUDE "data/pokemon/base_stats/seel.asm"
INCLUDE "data/pokemon/base_stats/dewgong.asm"
INCLUDE "data/pokemon/base_stats/grimer.asm"
INCLUDE "data/pokemon/base_stats/muk.asm"
INCLUDE "data/pokemon/base_stats/shellder.asm"
INCLUDE "data/pokemon/base_stats/cloyster.asm"
INCLUDE "data/pokemon/base_stats/gastly.asm"
INCLUDE "data/pokemon/base_stats/haunter.asm"
INCLUDE "data/pokemon/base_stats/gengar.asm"
INCLUDE "data/pokemon/base_stats/onix.asm"
INCLUDE "data/pokemon/base_stats/drowzee.asm"
INCLUDE "data/pokemon/base_stats/hypno.asm"
INCLUDE "data/pokemon/base_stats/krabby.asm"
INCLUDE "data/pokemon/base_stats/kingler.asm"
INCLUDE "data/pokemon/base_stats/voltorb.asm"
INCLUDE "data/pokemon/base_stats/electrode.asm"
INCLUDE "data/pokemon/base_stats/exeggcute.asm"
INCLUDE "data/pokemon/base_stats/exeggutor.asm"
INCLUDE "data/pokemon/base_stats/cubone.asm"
INCLUDE "data/pokemon/base_stats/marowak.asm"
INCLUDE "data/pokemon/base_stats/hitmonlee.asm"
INCLUDE "data/pokemon/base_stats/hitmonchan.asm"
INCLUDE "data/pokemon/base_stats/lickitung.asm"
INCLUDE "data/pokemon/base_stats/koffing.asm"
INCLUDE "data/pokemon/base_stats/weezing.asm"
INCLUDE "data/pokemon/base_stats/rhyhorn.asm"
INCLUDE "data/pokemon/base_stats/rhydon.asm"
INCLUDE "data/pokemon/base_stats/chansey.asm"
INCLUDE "data/pokemon/base_stats/tangela.asm"
INCLUDE "data/pokemon/base_stats/kangaskhan.asm"
INCLUDE "data/pokemon/base_stats/horsea.asm"
INCLUDE "data/pokemon/base_stats/seadra.asm"
INCLUDE "data/pokemon/base_stats/goldeen.asm"
INCLUDE "data/pokemon/base_stats/seaking.asm"
INCLUDE "data/pokemon/base_stats/staryu.asm"
INCLUDE "data/pokemon/base_stats/starmie.asm"
INCLUDE "data/pokemon/base_stats/mr__mime.asm"
INCLUDE "data/pokemon/base_stats/scyther.asm"
INCLUDE "data/pokemon/base_stats/jynx.asm"
INCLUDE "data/pokemon/base_stats/electabuzz.asm"
INCLUDE "data/pokemon/base_stats/magmar.asm"
INCLUDE "data/pokemon/base_stats/pinsir.asm"
INCLUDE "data/pokemon/base_stats/tauros.asm"
INCLUDE "data/pokemon/base_stats/magikarp.asm"
INCLUDE "data/pokemon/base_stats/gyarados.asm"
INCLUDE "data/pokemon/base_stats/lapras.asm"
INCLUDE "data/pokemon/base_stats/ditto.asm"
INCLUDE "data/pokemon/base_stats/eevee.asm"
INCLUDE "data/pokemon/base_stats/vaporeon.asm"
INCLUDE "data/pokemon/base_stats/jolteon.asm"
INCLUDE "data/pokemon/base_stats/flareon.asm"
INCLUDE "data/pokemon/base_stats/porygon.asm"
INCLUDE "data/pokemon/base_stats/omanyte.asm"
INCLUDE "data/pokemon/base_stats/omastar.asm"
INCLUDE "data/pokemon/base_stats/kabuto.asm"
INCLUDE "data/pokemon/base_stats/kabutops.asm"
INCLUDE "data/pokemon/base_stats/aerodactyl.asm"
INCLUDE "data/pokemon/base_stats/snorlax.asm"
INCLUDE "data/pokemon/base_stats/articuno.asm"
INCLUDE "data/pokemon/base_stats/zapdos.asm"
INCLUDE "data/pokemon/base_stats/moltres.asm"
INCLUDE "data/pokemon/base_stats/dratini.asm"
INCLUDE "data/pokemon/base_stats/dragonair.asm"
INCLUDE "data/pokemon/base_stats/dragonite.asm"
INCLUDE "data/pokemon/base_stats/mewtwo.asm"
INCLUDE "data/pokemon/base_stats/mew.asm"
INCLUDE "data/pokemon/base_stats/chikorita.asm"
INCLUDE "data/pokemon/base_stats/bayleef.asm"
INCLUDE "data/pokemon/base_stats/meganium.asm"
INCLUDE "data/pokemon/base_stats/cyndaquil.asm"
INCLUDE "data/pokemon/base_stats/quilava.asm"
INCLUDE "data/pokemon/base_stats/typhlosion.asm"
INCLUDE "data/pokemon/base_stats/totodile.asm"
INCLUDE "data/pokemon/base_stats/croconaw.asm"
INCLUDE "data/pokemon/base_stats/feraligatr.asm"
INCLUDE "data/pokemon/base_stats/sentret.asm"
INCLUDE "data/pokemon/base_stats/furret.asm"
INCLUDE "data/pokemon/base_stats/hoothoot.asm"
INCLUDE "data/pokemon/base_stats/noctowl.asm"
INCLUDE "data/pokemon/base_stats/ledyba.asm"
INCLUDE "data/pokemon/base_stats/ledian.asm"
INCLUDE "data/pokemon/base_stats/spinarak.asm"
INCLUDE "data/pokemon/base_stats/ariados.asm"
INCLUDE "data/pokemon/base_stats/crobat.asm"
INCLUDE "data/pokemon/base_stats/chinchou.asm"
INCLUDE "data/pokemon/base_stats/lanturn.asm"
INCLUDE "data/pokemon/base_stats/pichu.asm"
INCLUDE "data/pokemon/base_stats/cleffa.asm"
INCLUDE "data/pokemon/base_stats/igglybuff.asm"
INCLUDE "data/pokemon/base_stats/togepi.asm"
INCLUDE "data/pokemon/base_stats/togetic.asm"
INCLUDE "data/pokemon/base_stats/natu.asm"
INCLUDE "data/pokemon/base_stats/xatu.asm"
INCLUDE "data/pokemon/base_stats/mareep.asm"
INCLUDE "data/pokemon/base_stats/flaaffy.asm"
INCLUDE "data/pokemon/base_stats/ampharos.asm"
INCLUDE "data/pokemon/base_stats/bellossom.asm"
INCLUDE "data/pokemon/base_stats/marill.asm"
INCLUDE "data/pokemon/base_stats/azumarill.asm"
INCLUDE "data/pokemon/base_stats/sudowoodo.asm"
INCLUDE "data/pokemon/base_stats/politoed.asm"
INCLUDE "data/pokemon/base_stats/hoppip.asm"
INCLUDE "data/pokemon/base_stats/skiploom.asm"
INCLUDE "data/pokemon/base_stats/jumpluff.asm"
INCLUDE "data/pokemon/base_stats/aipom.asm"
INCLUDE "data/pokemon/base_stats/sunkern.asm"
INCLUDE "data/pokemon/base_stats/sunflora.asm"
INCLUDE "data/pokemon/base_stats/yanma.asm"
INCLUDE "data/pokemon/base_stats/wooper.asm"
INCLUDE "data/pokemon/base_stats/quagsire.asm"
INCLUDE "data/pokemon/base_stats/espeon.asm"
INCLUDE "data/pokemon/base_stats/umbreon.asm"
INCLUDE "data/pokemon/base_stats/murkrow.asm"
INCLUDE "data/pokemon/base_stats/slowking.asm"
INCLUDE "data/pokemon/base_stats/misdreavus.asm"
INCLUDE "data/pokemon/base_stats/unown.asm"
INCLUDE "data/pokemon/base_stats/wobbuffet.asm"
INCLUDE "data/pokemon/base_stats/girafarig.asm"
INCLUDE "data/pokemon/base_stats/pineco.asm"
INCLUDE "data/pokemon/base_stats/forretress.asm"
INCLUDE "data/pokemon/base_stats/dunsparce.asm"
INCLUDE "data/pokemon/base_stats/gligar.asm"
INCLUDE "data/pokemon/base_stats/steelix.asm"
INCLUDE "data/pokemon/base_stats/snubbull.asm"
INCLUDE "data/pokemon/base_stats/granbull.asm"
INCLUDE "data/pokemon/base_stats/qwilfish.asm"
INCLUDE "data/pokemon/base_stats/scizor.asm"
INCLUDE "data/pokemon/base_stats/shuckle.asm"
INCLUDE "data/pokemon/base_stats/heracross.asm"
INCLUDE "data/pokemon/base_stats/sneasel.asm"
INCLUDE "data/pokemon/base_stats/teddiursa.asm"
INCLUDE "data/pokemon/base_stats/ursaring.asm"
INCLUDE "data/pokemon/base_stats/slugma.asm"
INCLUDE "data/pokemon/base_stats/magcargo.asm"
INCLUDE "data/pokemon/base_stats/swinub.asm"
INCLUDE "data/pokemon/base_stats/piloswine.asm"
INCLUDE "data/pokemon/base_stats/corsola.asm"
INCLUDE "data/pokemon/base_stats/remoraid.asm"
INCLUDE "data/pokemon/base_stats/octillery.asm"
INCLUDE "data/pokemon/base_stats/delibird.asm"
INCLUDE "data/pokemon/base_stats/mantine.asm"
INCLUDE "data/pokemon/base_stats/skarmory.asm"
INCLUDE "data/pokemon/base_stats/houndour.asm"
INCLUDE "data/pokemon/base_stats/houndoom.asm"
INCLUDE "data/pokemon/base_stats/kingdra.asm"
INCLUDE "data/pokemon/base_stats/phanpy.asm"
INCLUDE "data/pokemon/base_stats/donphan.asm"
INCLUDE "data/pokemon/base_stats/porygon2.asm"
INCLUDE "data/pokemon/base_stats/stantler.asm"
INCLUDE "data/pokemon/base_stats/smeargle.asm"
INCLUDE "data/pokemon/base_stats/tyrogue.asm"
INCLUDE "data/pokemon/base_stats/hitmontop.asm"
INCLUDE "data/pokemon/base_stats/smoochum.asm"
INCLUDE "data/pokemon/base_stats/elekid.asm"
INCLUDE "data/pokemon/base_stats/magby.asm"
INCLUDE "data/pokemon/base_stats/miltank.asm"
INCLUDE "data/pokemon/base_stats/blissey.asm"
INCLUDE "data/pokemon/base_stats/raikou.asm"
INCLUDE "data/pokemon/base_stats/entei.asm"
INCLUDE "data/pokemon/base_stats/suicune.asm"
INCLUDE "data/pokemon/base_stats/larvitar.asm"
INCLUDE "data/pokemon/base_stats/pupitar.asm"
INCLUDE "data/pokemon/base_stats/tyranitar.asm"
INCLUDE "data/pokemon/base_stats/lugia.asm"
INCLUDE "data/pokemon/base_stats/ho_oh.asm"
INCLUDE "data/pokemon/base_stats/celebi.asm"

PUSHS
SECTION "Base Data 2", ROMX
BaseData2:
INCLUDE "data/pokemon/base_stats/treecko.asm"
INCLUDE "data/pokemon/base_stats/grovyle.asm"
INCLUDE "data/pokemon/base_stats/sceptile.asm"
INCLUDE "data/pokemon/base_stats/torchic.asm"
INCLUDE "data/pokemon/base_stats/combusken.asm"
INCLUDE "data/pokemon/base_stats/blaziken.asm"
INCLUDE "data/pokemon/base_stats/mudkip.asm"
INCLUDE "data/pokemon/base_stats/marshtomp.asm"
INCLUDE "data/pokemon/base_stats/swampert.asm"
INCLUDE "data/pokemon/base_stats/poochyena.asm"
INCLUDE "data/pokemon/base_stats/mightyena.asm"
INCLUDE "data/pokemon/base_stats/zigzagoon.asm"
INCLUDE "data/pokemon/base_stats/linoone.asm"
INCLUDE "data/pokemon/base_stats/wurmple.asm"
INCLUDE "data/pokemon/base_stats/silcoon.asm"
INCLUDE "data/pokemon/base_stats/beautifly.asm"
INCLUDE "data/pokemon/base_stats/cascoon.asm"
INCLUDE "data/pokemon/base_stats/dustox.asm"
INCLUDE "data/pokemon/base_stats/lotad.asm"
INCLUDE "data/pokemon/base_stats/lombre.asm"
INCLUDE "data/pokemon/base_stats/ludicolo.asm"
INCLUDE "data/pokemon/base_stats/seedot.asm"
INCLUDE "data/pokemon/base_stats/nuzleaf.asm"
INCLUDE "data/pokemon/base_stats/shiftry.asm"
INCLUDE "data/pokemon/base_stats/taillow.asm"
INCLUDE "data/pokemon/base_stats/swellow.asm"
INCLUDE "data/pokemon/base_stats/wingull.asm"
INCLUDE "data/pokemon/base_stats/pelipper.asm"
INCLUDE "data/pokemon/base_stats/ralts.asm"
INCLUDE "data/pokemon/base_stats/kirlia.asm"
INCLUDE "data/pokemon/base_stats/gardevoir.asm"
INCLUDE "data/pokemon/base_stats/surskit.asm"
INCLUDE "data/pokemon/base_stats/masquerain.asm"
INCLUDE "data/pokemon/base_stats/shroomish.asm"
INCLUDE "data/pokemon/base_stats/breloom.asm"
INCLUDE "data/pokemon/base_stats/slakoth.asm"
INCLUDE "data/pokemon/base_stats/vigoroth.asm"
INCLUDE "data/pokemon/base_stats/slaking.asm"
INCLUDE "data/pokemon/base_stats/nincada.asm"
INCLUDE "data/pokemon/base_stats/ninjask.asm"
INCLUDE "data/pokemon/base_stats/shedinja.asm"
INCLUDE "data/pokemon/base_stats/whismur.asm"
INCLUDE "data/pokemon/base_stats/loudred.asm"
INCLUDE "data/pokemon/base_stats/exploud.asm"
INCLUDE "data/pokemon/base_stats/makuhita.asm"
INCLUDE "data/pokemon/base_stats/hariyama.asm"
INCLUDE "data/pokemon/base_stats/azurill.asm"
INCLUDE "data/pokemon/base_stats/nosepass.asm"
INCLUDE "data/pokemon/base_stats/skitty.asm"
INCLUDE "data/pokemon/base_stats/delcatty.asm"
INCLUDE "data/pokemon/base_stats/sableye.asm"
INCLUDE "data/pokemon/base_stats/mawile.asm"
INCLUDE "data/pokemon/base_stats/aron.asm"
INCLUDE "data/pokemon/base_stats/lairon.asm"
INCLUDE "data/pokemon/base_stats/aggron.asm"
INCLUDE "data/pokemon/base_stats/meditite.asm"
INCLUDE "data/pokemon/base_stats/medicham.asm"
INCLUDE "data/pokemon/base_stats/electrike.asm"
INCLUDE "data/pokemon/base_stats/manectric.asm"
INCLUDE "data/pokemon/base_stats/plusle.asm"
INCLUDE "data/pokemon/base_stats/minun.asm"
INCLUDE "data/pokemon/base_stats/volbeat.asm"
INCLUDE "data/pokemon/base_stats/illumise.asm"
INCLUDE "data/pokemon/base_stats/roselia.asm"
INCLUDE "data/pokemon/base_stats/gulpin.asm"
INCLUDE "data/pokemon/base_stats/swalot.asm"
INCLUDE "data/pokemon/base_stats/carvanha.asm"
INCLUDE "data/pokemon/base_stats/sharpedo.asm"
INCLUDE "data/pokemon/base_stats/wailmer.asm"
INCLUDE "data/pokemon/base_stats/wailord.asm"
INCLUDE "data/pokemon/base_stats/numel.asm"
INCLUDE "data/pokemon/base_stats/camerupt.asm"
INCLUDE "data/pokemon/base_stats/torkoal.asm"
INCLUDE "data/pokemon/base_stats/spoink.asm"
INCLUDE "data/pokemon/base_stats/grumpig.asm"
INCLUDE "data/pokemon/base_stats/spinda.asm"
INCLUDE "data/pokemon/base_stats/trapinch.asm"
INCLUDE "data/pokemon/base_stats/vibrava.asm"
INCLUDE "data/pokemon/base_stats/flygon.asm"
INCLUDE "data/pokemon/base_stats/cacnea.asm"
INCLUDE "data/pokemon/base_stats/cacturne.asm"
INCLUDE "data/pokemon/base_stats/swablu.asm"
INCLUDE "data/pokemon/base_stats/altaria.asm"
INCLUDE "data/pokemon/base_stats/zangoose.asm"
INCLUDE "data/pokemon/base_stats/seviper.asm"
INCLUDE "data/pokemon/base_stats/lunatone.asm"
INCLUDE "data/pokemon/base_stats/solrock.asm"
INCLUDE "data/pokemon/base_stats/barboach.asm"
INCLUDE "data/pokemon/base_stats/whiscash.asm"
INCLUDE "data/pokemon/base_stats/corphish.asm"
INCLUDE "data/pokemon/base_stats/crawdaunt.asm"
INCLUDE "data/pokemon/base_stats/baltoy.asm"
INCLUDE "data/pokemon/base_stats/claydol.asm"
INCLUDE "data/pokemon/base_stats/lileep.asm"
INCLUDE "data/pokemon/base_stats/cradily.asm"
INCLUDE "data/pokemon/base_stats/anorith.asm"
INCLUDE "data/pokemon/base_stats/armaldo.asm"
INCLUDE "data/pokemon/base_stats/feebas.asm"
INCLUDE "data/pokemon/base_stats/milotic.asm"
INCLUDE "data/pokemon/base_stats/castform.asm"
INCLUDE "data/pokemon/base_stats/kecleon.asm"
INCLUDE "data/pokemon/base_stats/shuppet.asm"
INCLUDE "data/pokemon/base_stats/banette.asm"
INCLUDE "data/pokemon/base_stats/duskull.asm"
INCLUDE "data/pokemon/base_stats/dusclops.asm"
INCLUDE "data/pokemon/base_stats/tropius.asm"
INCLUDE "data/pokemon/base_stats/chimecho.asm"
INCLUDE "data/pokemon/base_stats/absol.asm"
INCLUDE "data/pokemon/base_stats/wynaut.asm"
INCLUDE "data/pokemon/base_stats/snorunt.asm"
INCLUDE "data/pokemon/base_stats/glalie.asm"
INCLUDE "data/pokemon/base_stats/spheal.asm"
INCLUDE "data/pokemon/base_stats/sealeo.asm"
INCLUDE "data/pokemon/base_stats/walrein.asm"
INCLUDE "data/pokemon/base_stats/clamperl.asm"
INCLUDE "data/pokemon/base_stats/huntail.asm"
INCLUDE "data/pokemon/base_stats/gorebyss.asm"
INCLUDE "data/pokemon/base_stats/relicanth.asm"
INCLUDE "data/pokemon/base_stats/luvdisc.asm"
INCLUDE "data/pokemon/base_stats/bagon.asm"
INCLUDE "data/pokemon/base_stats/shelgon.asm"
INCLUDE "data/pokemon/base_stats/salamence.asm"
INCLUDE "data/pokemon/base_stats/beldum.asm"
INCLUDE "data/pokemon/base_stats/metang.asm"
INCLUDE "data/pokemon/base_stats/metagross.asm"
INCLUDE "data/pokemon/base_stats/regirock.asm"
INCLUDE "data/pokemon/base_stats/regice.asm"
INCLUDE "data/pokemon/base_stats/registeel.asm"
INCLUDE "data/pokemon/base_stats/latias.asm"
INCLUDE "data/pokemon/base_stats/latios.asm"
INCLUDE "data/pokemon/base_stats/kyogre.asm"
INCLUDE "data/pokemon/base_stats/groudon.asm"
INCLUDE "data/pokemon/base_stats/rayquaza.asm"
INCLUDE "data/pokemon/base_stats/jirachi.asm"
INCLUDE "data/pokemon/base_stats/deoxys.asm"
INCLUDE "data/pokemon/base_stats/turtwig.asm"
INCLUDE "data/pokemon/base_stats/grotle.asm"
INCLUDE "data/pokemon/base_stats/torterra.asm"
INCLUDE "data/pokemon/base_stats/chimchar.asm"
INCLUDE "data/pokemon/base_stats/monferno.asm"
INCLUDE "data/pokemon/base_stats/infernape.asm"
INCLUDE "data/pokemon/base_stats/piplup.asm"
INCLUDE "data/pokemon/base_stats/prinplup.asm"
INCLUDE "data/pokemon/base_stats/empoleon.asm"
INCLUDE "data/pokemon/base_stats/starly.asm"
INCLUDE "data/pokemon/base_stats/staravia.asm"
INCLUDE "data/pokemon/base_stats/staraptor.asm"
INCLUDE "data/pokemon/base_stats/bidoof.asm"
INCLUDE "data/pokemon/base_stats/bibarel.asm"
INCLUDE "data/pokemon/base_stats/kricketot.asm"
INCLUDE "data/pokemon/base_stats/kricketune.asm"
INCLUDE "data/pokemon/base_stats/shinx.asm"
INCLUDE "data/pokemon/base_stats/luxio.asm"
INCLUDE "data/pokemon/base_stats/luxray.asm"
INCLUDE "data/pokemon/base_stats/budew.asm"
INCLUDE "data/pokemon/base_stats/roserade.asm"
INCLUDE "data/pokemon/base_stats/cranidos.asm"
INCLUDE "data/pokemon/base_stats/rampardos.asm"
INCLUDE "data/pokemon/base_stats/shieldon.asm"
INCLUDE "data/pokemon/base_stats/bastiodon.asm"
INCLUDE "data/pokemon/base_stats/burmy.asm"
INCLUDE "data/pokemon/base_stats/wormadam.asm"
INCLUDE "data/pokemon/base_stats/mothim.asm"
INCLUDE "data/pokemon/base_stats/combee.asm"
INCLUDE "data/pokemon/base_stats/vespiquen.asm"
INCLUDE "data/pokemon/base_stats/pachirisu.asm"
INCLUDE "data/pokemon/base_stats/buizel.asm"
INCLUDE "data/pokemon/base_stats/floatzel.asm"
INCLUDE "data/pokemon/base_stats/cherubi.asm"
INCLUDE "data/pokemon/base_stats/cherrim.asm"
INCLUDE "data/pokemon/base_stats/shellos.asm"
INCLUDE "data/pokemon/base_stats/gastrodon.asm"
INCLUDE "data/pokemon/base_stats/ambipom.asm"
INCLUDE "data/pokemon/base_stats/drifloon.asm"
INCLUDE "data/pokemon/base_stats/drifblim.asm"
INCLUDE "data/pokemon/base_stats/buneary.asm"
INCLUDE "data/pokemon/base_stats/lopunny.asm"
INCLUDE "data/pokemon/base_stats/mismagius.asm"
INCLUDE "data/pokemon/base_stats/honchkrow.asm"
INCLUDE "data/pokemon/base_stats/glameow.asm"
INCLUDE "data/pokemon/base_stats/purugly.asm"
INCLUDE "data/pokemon/base_stats/chingling.asm"
INCLUDE "data/pokemon/base_stats/stunky.asm"
INCLUDE "data/pokemon/base_stats/skuntank.asm"
INCLUDE "data/pokemon/base_stats/bronzor.asm"
INCLUDE "data/pokemon/base_stats/bronzong.asm"
INCLUDE "data/pokemon/base_stats/bonsly.asm"
INCLUDE "data/pokemon/base_stats/mime_jr.asm"
INCLUDE "data/pokemon/base_stats/happiny.asm"
INCLUDE "data/pokemon/base_stats/chatot.asm"
INCLUDE "data/pokemon/base_stats/spiritomb.asm"
INCLUDE "data/pokemon/base_stats/gible.asm"
INCLUDE "data/pokemon/base_stats/gabite.asm"
INCLUDE "data/pokemon/base_stats/garchomp.asm"
INCLUDE "data/pokemon/base_stats/munchlax.asm"
INCLUDE "data/pokemon/base_stats/riolu.asm"
INCLUDE "data/pokemon/base_stats/lucario.asm"
INCLUDE "data/pokemon/base_stats/hippopotas.asm"
INCLUDE "data/pokemon/base_stats/hippowdon.asm"
INCLUDE "data/pokemon/base_stats/skorupi.asm"
INCLUDE "data/pokemon/base_stats/drapion.asm"
INCLUDE "data/pokemon/base_stats/croagunk.asm"
INCLUDE "data/pokemon/base_stats/toxicroak.asm"
INCLUDE "data/pokemon/base_stats/carnivine.asm"
INCLUDE "data/pokemon/base_stats/finneon.asm"
INCLUDE "data/pokemon/base_stats/lumineon.asm"
INCLUDE "data/pokemon/base_stats/mantyke.asm"
INCLUDE "data/pokemon/base_stats/snover.asm"
INCLUDE "data/pokemon/base_stats/abomasnow.asm"
INCLUDE "data/pokemon/base_stats/weavile.asm"
INCLUDE "data/pokemon/base_stats/magnezone.asm"
INCLUDE "data/pokemon/base_stats/lickilicky.asm"
INCLUDE "data/pokemon/base_stats/rhyperior.asm"
INCLUDE "data/pokemon/base_stats/tangrowth.asm"
INCLUDE "data/pokemon/base_stats/electivire.asm"
INCLUDE "data/pokemon/base_stats/magmortar.asm"
INCLUDE "data/pokemon/base_stats/togekiss.asm"
INCLUDE "data/pokemon/base_stats/yanmega.asm"
INCLUDE "data/pokemon/base_stats/leafeon.asm"
INCLUDE "data/pokemon/base_stats/glaceon.asm"
INCLUDE "data/pokemon/base_stats/gliscor.asm"
INCLUDE "data/pokemon/base_stats/mamoswine.asm"
INCLUDE "data/pokemon/base_stats/porygon_z.asm"
INCLUDE "data/pokemon/base_stats/gallade.asm"
INCLUDE "data/pokemon/base_stats/probopass.asm"
INCLUDE "data/pokemon/base_stats/dusknoir.asm"
INCLUDE "data/pokemon/base_stats/froslass.asm"
INCLUDE "data/pokemon/base_stats/rotom.asm"
INCLUDE "data/pokemon/base_stats/uxie.asm"
INCLUDE "data/pokemon/base_stats/mesprit.asm"
INCLUDE "data/pokemon/base_stats/azelf.asm"
INCLUDE "data/pokemon/base_stats/dialga.asm"
INCLUDE "data/pokemon/base_stats/palkia.asm"
INCLUDE "data/pokemon/base_stats/heatran.asm"
INCLUDE "data/pokemon/base_stats/regigigas.asm"
INCLUDE "data/pokemon/base_stats/giratina.asm"
INCLUDE "data/pokemon/base_stats/cresselia.asm"
INCLUDE "data/pokemon/base_stats/phione.asm"
INCLUDE "data/pokemon/base_stats/manaphy.asm"
INCLUDE "data/pokemon/base_stats/darkrai.asm"
INCLUDE "data/pokemon/base_stats/shaymin.asm"
INCLUDE "data/pokemon/base_stats/arceus.asm"
INCLUDE "data/pokemon/base_stats/flambear.asm"
INCLUDE "data/pokemon/base_stats/volbear.asm"
INCLUDE "data/pokemon/base_stats/dynabear.asm"
INCLUDE "data/pokemon/base_stats/cruize.asm"
INCLUDE "data/pokemon/base_stats/aquallo.asm"
INCLUDE "data/pokemon/base_stats/aquarius.asm"
INCLUDE "data/pokemon/base_stats/kotora.asm"
INCLUDE "data/pokemon/base_stats/raitora.asm"
INCLUDE "data/pokemon/base_stats/bomsheal.asm"
INCLUDE "data/pokemon/base_stats/corasun.asm"
INCLUDE "data/pokemon/base_stats/coramola.asm"
INCLUDE "data/pokemon/base_stats/mamboking.asm"
INCLUDE "data/pokemon/base_stats/biteel.asm"
INCLUDE "data/pokemon/base_stats/grotess.asm"
INCLUDE "data/pokemon/base_stats/rinring.asm"
INCLUDE "data/pokemon/base_stats/bellrun.asm"
INCLUDE "data/pokemon/base_stats/blottle.asm"
INCLUDE "data/pokemon/base_stats/pendraken.asm"
INCLUDE "data/pokemon/base_stats/kurstraw.asm"
INCLUDE "data/pokemon/base_stats/pangshi.asm"
INCLUDE "data/pokemon/base_stats/wolfan.asm"
INCLUDE "data/pokemon/base_stats/warwolf.asm"
INCLUDE "data/pokemon/base_stats/cheep.asm"
INCLUDE "data/pokemon/base_stats/jabetta.asm"
INCLUDE "data/pokemon/base_stats/snobit.asm"
INCLUDE "data/pokemon/base_stats/blizbit.asm"
INCLUDE "data/pokemon/base_stats/glacihare.asm"
INCLUDE "data/pokemon/base_stats/stemeneel.asm"
INCLUDE "data/pokemon/base_stats/arskeed.asm"
INCLUDE "data/pokemon/base_stats/drakarve.asm"
INCLUDE "data/pokemon/base_stats/peticorn.asm"
INCLUDE "data/pokemon/base_stats/gupgold.asm"
INCLUDE "data/pokemon/base_stats/tritales.asm"
INCLUDE "data/pokemon/base_stats/grimby.asm"
INCLUDE "data/pokemon/base_stats/paramite.asm"
INCLUDE "data/pokemon/base_stats/nyanya.asm"
INCLUDE "data/pokemon/base_stats/puddipup.asm"
INCLUDE "data/pokemon/base_stats/chix.asm"
INCLUDE "data/pokemon/base_stats/katu.asm"
INCLUDE "data/pokemon/base_stats/tangtrip.asm"
INCLUDE "data/pokemon/base_stats/gelania.asm"
INCLUDE "data/pokemon/base_stats/belmitt.asm"
INCLUDE "data/pokemon/base_stats/turban.asm"
INCLUDE "data/pokemon/base_stats/praxe.asm"
INCLUDE "data/pokemon/base_stats/numbpuff.asm"
INCLUDE "data/pokemon/base_stats/metto.asm"
INCLUDE "data/pokemon/base_stats/madame.asm"
INCLUDE "data/pokemon/base_stats/guardia.asm"
INCLUDE "data/pokemon/base_stats/ohmega.asm"
INCLUDE "data/pokemon/base_stats/pichu_b.asm"
INCLUDE "data/pokemon/base_stats/deoxys_a.asm"
INCLUDE "data/pokemon/base_stats/deoxys_d.asm"
INCLUDE "data/pokemon/base_stats/deoxys_s.asm"
INCLUDE "data/pokemon/base_stats/burmy_s.asm"
INCLUDE "data/pokemon/base_stats/burmy_t.asm"
INCLUDE "data/pokemon/base_stats/wormadam_s.asm"
INCLUDE "data/pokemon/base_stats/wormadam_t.asm"
INCLUDE "data/pokemon/base_stats/shellos_e.asm"
INCLUDE "data/pokemon/base_stats/gastrodon_e.asm"
INCLUDE "data/pokemon/base_stats/rotom_fre.asm"
INCLUDE "data/pokemon/base_stats/rotom_wtr.asm"
INCLUDE "data/pokemon/base_stats/rotom_ice.asm"
INCLUDE "data/pokemon/base_stats/rotom_fly.asm"
INCLUDE "data/pokemon/base_stats/rotom_grs.asm"
INCLUDE "data/pokemon/base_stats/giratina_o.asm"
INCLUDE "data/pokemon/base_stats/shaymin_s.asm"
INCLUDE "data/pokemon/base_stats/castform_rn.asm"
INCLUDE "data/pokemon/base_stats/castform_sn.asm"
INCLUDE "data/pokemon/base_stats/castform_sw.asm"
INCLUDE "data/pokemon/base_stats/cherrim_s.asm"
POPS
