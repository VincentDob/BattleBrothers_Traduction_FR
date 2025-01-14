this.cripple_background <- this.inherit("scripts/skills/backgrounds/character_background", {
	m = {},
	function create()
	{
		this.character_background.create();
		this.m.ID = "background.cripple";
		this.m.Name = "Estropié";
		this.m.Icon = "ui/backgrounds/background_51.png";
		this.m.BackgroundDescription = "La seule chose rapide à propos d\'un estropié est sa mort inévitable dans une vraie bataille.";
		this.m.GoodEnding = "It\'s shocking that a man of %name%\'s stature survived at all, but L\'Estropié did retire from the %companyname% with a sizeable stack of crowns. He runs an orphanage these days, spending his crowns to help the world\'s broken and abandoned children. That, or it\'s just a front for cheap labor. Can\'t be too sure these days.";
		this.m.BadEnding = "When you left the %companyname%, there was one thing you were almost certain of: that damned cripple, %name%, wouldn\'t last long. Despite all odds, he did survive. Long enough in fact to retire himself, albeit departing with about as many crowns as he had when he joined up. You\'ve no idea what became of him, but surely he\'s dead by now. Surely, right?";
		this.m.HiringCost = 30;
		this.m.DailyCost = 3;
		this.m.Excluded = [
			"trait.huge",
			"trait.weasel",
			"trait.lucky",
			"trait.iron_jaw",
			"trait.tough",
			"trait.strong",
			"trait.cocky",
			"trait.fat",
			"trait.greedy",
			"trait.athletic",
			"trait.impatient",
			"trait.quick",
			"trait.swift",
			"trait.dexterous"
		];
		this.m.ExcludedTalents = [
			this.Const.Attributes.Hitpoints,
			this.Const.Attributes.Initiative
		];
		this.m.Titles = [
			"L\'Estropié",
			"le Mutilé",
			"le Brisé",
			"le Grotesque"
		];
		this.m.Faces = this.Const.Faces.AllMale;
		this.m.Hairs = this.Const.Hair.UntidyMale;
		this.m.HairColors = this.Const.HairColors.All;
		this.m.Beards = this.Const.Beards.Untidy;
		this.m.Bodies = this.Const.Bodies.Skinny;
		this.m.IsLowborn = true;
	}

	function getTooltip()
	{
		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 16,
				type = "text",
				icon = "ui/icons/special.png",
				text = "Sera toujours satisfait d\'être en réserve"
			}
		];
	}

	function onBuildDescription()
	{
		return "%name% {boitille vers vous comme un chien galeux | vous salue avec une main à laquelle il manque de nombreux doigts | vous sourit avec un sourire édenté | a la posture avachie d\'un homme au dos cassé | vacille sur deux jambes très raides, peut-être même en bois | utilise une canne pour marcher vers vous | rampe d\'abord vers vous, puis se lève avec la grâce d\'un ivrogne sur les marches d\'une église. | a des os qui grincent et craquent à chaque pas | a un bras en écharpe et une canne en guise d\'appui pour une de ses jambes | a un nez cassé et deux yeux noircis | ressemble à quelqu\'un qu\'on a essayé de scalper et de brûler vif | a une chair qui sent le mi-cuit, ses yeux grimacent à chaque pas qu\'il fait vers vous | il lui manque deux oreilles, mais les trous entendent toujours | pue la merde et l\'urine | a un œil en moins, et l\'autre vagabonde fortement | a deux yeux paresseux et un sourire mauvais, plein de trous}. Il explique qu\'{qu\'il était autrefois maçon, mais qu\'il a été attaqué par un fou qui essayait de reproduire son travail | il a autrefois revêtu l\'armure d\'un chevalier, mais ce cruel destin lui a tout pris | il était autrefois un noble, mais son vocabulaire pauvre suggère que c\'est peut-être un mensonge | il a été colporteur un jour, mais la vente d\'un sentier a fini par le mettre à la merci d\'une foule en colère | il a fait partie d\'un culte, mais quand il s\'est enfui, ils l\'ont puni pour ça | il était autrefois un moine, mais {des cultistes ont attaqué son église | une prise de bec avec d\'autres moines l\'a fait sévèrement punir | des brigands l\'ont attaqué pour avoir crucifié un des leurs} | il se battait pour les seigneurs, mais un passage à tabac par d\'autres combattants l\'a laissé infirme | il parcourait le pays pour des tournois de joutes, mais un mauvais tournoi s\'est terminé avec lui étant horriblement estropié | il pillait des tombes, mais quand il s\'est fait prendre, un paroissien lui a cassé plus d\'os qu\'il n\'en connaissait sur un squelette | il s\'est adonné {aux arts arcaniques | à la nécromancie} mais, comme le montre son état de mort imminente, cette expérience ne lui a pas réussi | il était autrefois un joueur prospère, mais il s\'avère que ne pas rembourser ses dettes est mauvais pour les affaires - et pour les os | il chantait autrefois comme ménestrel, mais quand sa voix s\'est éteinte au milieu de la chanson, un seigneur l\'a brutalement torturé | il avait l\'habitude d\'attraper des rats pour vivre, mais apparemment un rat géant lui a rendu une visite vengeresse dans la nuit | il a servi une fois un seigneur, mais après avoir fait tomber une assiette de nourriture, il a été envoyé dans les cachots où il a été rapidement oublié pendant des années | il a tué un homme, certes, mais il méritait un meilleur sort que la torture qu\'il a reçue en guise de punition | il chassait les sorcières, mais une cruelle maîtresse lui a fait boire une concoction qui l\'a rendu infirme | il a déserté une fois une armée et, évidemment, s\'est fait attraper | il jonglait pour la royauté jusqu\'à ce qu\'il tombe accidentellement dans les escaliers au milieu d\'une cascade. Les marches se sont avérées plutôt difficiles à manipuler pour ses os, semble-t-il | il est né avec une horrible déformation | son père l\'a brutalement attaqué parce qu\'il ne se comportait à la hauteur de son image | sa mère l\'a marqué avec des tortures sans fin | ses frères et sœurs l\'ont torturé toute sa vie}. {Cet homme a l\'air si faible qu\'on peut presque voir son enveloppe mortelle s\'échapper. | L\'embaucher serait presque certainement signer sa mort. Quelle miséricorde ! | Vous ne voulez pas avoir l\'air d\'engager n\'importe qui, mais si ce type n\'est personne, est-ce que ça compte quand même comme \"n\'importe qui\" ? | Vous avez vu des morts plus beaux que cet homme. | Ce type est un repas de loup sur deux jambes. | La bonne nouvelle, c\'est que s\'il revient d\'entre les morts, il ne devrait pas être trop difficile de le faire tomber une seconde fois. | Les rêves et les objets inanimés sont plus menaçants que ce pauvre type. | Pour être honnête, vous préféreriez engager un enfant, mais apparemment les gens n\'apprecient pas ça, alors vous êtes ici à la place. | Et vous pensiez que %randombrother% sentait mauvais. | Engager un tel homme ferait tourner la tête de n\'importe qui. | Oh, allez, regardez-le ! %companyname% a-t-elle vraiment besoin de corps chauds ? | Engager cet homme ne serait pas juste. Peu importe, c\'est parti. | Une paire de béquilles a plus de valeur que ce pauvre homme. | Cet homme est dans un tel état qu\'il peut faire le mort debout.}";
	}

	function onChangeAttributes()
	{
		local c = {
			Hitpoints = [
				-20,
				-10
			],
			Bravery = [
				0,
				0
			],
			Stamina = [
				-10,
				0
			],
			MeleeSkill = [
				-5,
				-5
			],
			RangedSkill = [
				-5,
				0
			],
			MeleeDefense = [
				0,
				0
			],
			RangedDefense = [
				0,
				0
			],
			Initiative = [
				-25,
				-10
			]
		};
		return c;
	}

	function onSetAppearance()
	{
		local actor = this.getContainer().getActor();
		local dirt = actor.getSprite("dirt");
		dirt.Visible = true;
	}

	function onAddEquipment()
	{
		local items = this.getContainer().getActor().getItems();
		local r;
		r = this.Math.rand(0, 4);

		if (r == 0)
		{
			items.equip(this.new("scripts/items/weapons/knife"));
		}
		else if (r == 1)
		{
			items.equip(this.new("scripts/items/weapons/wooden_stick"));
		}

		r = this.Math.rand(0, 1);

		if (r == 0)
		{
			items.equip(this.new("scripts/items/armor/tattered_sackcloth"));
		}

		if (r == 1)
		{
			items.equip(this.new("scripts/items/armor/leather_wraps"));
		}

		r = this.Math.rand(0, 4);

		if (r == 0)
		{
			local item = this.new("scripts/items/helmets/hood");
			item.setVariant(38);
			items.equip(item);
		}
	}

	function onUpdate( _properties )
	{
		this.character_background.onUpdate(_properties);
		_properties.IsContentWithBeingInReserve = true;
	}

});

