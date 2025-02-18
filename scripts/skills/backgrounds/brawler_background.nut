this.brawler_background <- this.inherit("scripts/skills/backgrounds/character_background", {
	m = {},
	function create()
	{
		this.character_background.create();
		this.m.ID = "background.brawler";
		this.m.Name = "Bagarreur";
		this.m.Icon = "ui/backgrounds/background_27.png";
		this.m.BackgroundDescription = "Les bagarreurs sont inégalés en combat à mains nues, et l\'exercice physique a tendance à les maintenir en bonne forme.";
		this.m.GoodEnding = "A brawler like %name% is dangerous with just his fists, and proved himself similarly savage with weapons. Before you left the %companyname%, you talked to the fighter about whether or not he\'d stay in the band. He said he had no desire to return to prizefighting, shook your hand, and thanked you for giving him the opportunity. Last you heard, the company chose him for a one-on-one, winner take all fight to settle compensation differences with a competing mercenary band. He won in the first round.";
		this.m.BadEnding = "%name% the brawler left the company when it became clear it would soon dissolve and probably end up killing everyone who stayed onboard. He returned to prizefighting, grinding out the following years in brutal, weekly bouts. As he got older, his chin disappeared, as did his speed and power. He was left jobbing, intentionally taking falls and losing badly when he didn\'t. Eventually, no one would give him a fight. A nobleman offered him a large sum to wrestle a bear and the desperate %name% took him up on it. When the \'fight\' was over, the brawler lay dead, mangled beyond recognition, being dragged around the mud by a ferocious beast as drunken highborn cheered and clapped.";
		this.m.HiringCost = 125;
		this.m.DailyCost = 13;
		this.m.Excluded = [
			"trait.weasel",
			"trait.fear_undead",
			"trait.hate_undead",
			"trait.ailing",
			"trait.clubfooted",
			"trait.irrational",
			"trait.asthmatic",
			"trait.clumsy",
			"trait.fat",
			"trait.craven",
			"trait.insecure",
			"trait.dastard",
			"trait.fainthearted",
			"trait.bright",
			"trait.bleeder",
			"trait.fragile",
			"trait.tiny"
		];
		this.m.ExcludedTalents = [
			this.Const.Attributes.RangedSkill
		];
		this.m.Faces = this.Const.Faces.AllMale;
		this.m.Hairs = this.Const.Hair.UntidyMale;
		this.m.HairColors = this.Const.HairColors.All;
		this.m.Beards = this.Const.Beards.Untidy;
		this.m.Bodies = this.Const.Bodies.Muscular;
		this.m.IsCombatBackground = true;
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
				id = 12,
				type = "text",
				icon = "ui/icons/regular_damage.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+100%[/color] Damage when unarmed"
			}
		];
	}

	function onBuildDescription()
	{
		return "{Avec des cloches d\'église à la place des poings, %name% a passé une grande partie de l\'année dernière à aiguiser ses talents de boxeur sur la pierre à aiguiser qu\'est son prochain. | Avec un visage déformé par la forme des articulations des autres, il n\'est pas difficile de comprendre que %name% est un boxeur de carrière. | %name% aime la boisson autant qu\'il aime un bon combat, une combinaison puissante. | L\'éducation difficile de son père et de ses frères a fait de %name% un bagarreur capricieux. | Les brutes de la jeunesse de %name% ont fait de lui un homme qui préfère chercher la bagarre plutôt que d\'attendre qu\'elle vienne à lui.  | %name% n\'a jamais eu qu\'un seul véritable talent : utiliser ses poings pour ensanglanter le nez des autres hommes et ne pas se laisser abattre quoi qu\'il arrive. | En grandissant, %name% luttait contre des taureaux dans la ferme familiale. Malheureusement pour les hommes, il trouvait le temps de s\'aventurer dans les villes.} {Pendant l\'année passée, il a été employé par un seigneur local, paradant pour combattre les champions de la royauté. | Un amateur de bagarre de bar, l\'homme a apparemment été banni de trop de tavernes pour être compté. | Gagner en notoriété en tant que combattant dans %randomtown% signifiait qu\'il devait combattre tous les hommes fiers, vantards et ivres qui se présentaient à lui. | Bien qu\'il soit devenu un boxeur invaincu, il gagnait à peine de quoi s\'en sortir. | Fougueux dans l\'âme, il est toujours prêt à en découdre. Les cercles de combat locaux disent qu\'il a un méchant crochet du gauche.} {En entendant parler de combats plus importants, %name% a déposé ses gants pour embrasser la vocation plus lucrative de vendeur. | Une seule personne a battu %name%: sa femme. Après qu\'elle lui ait reproché d\'être une gêne sans ambition, il a décidé de se lancer dans le domaine plus ... prestigieux du mercenariat. | Des années de combat martial ont pratiquement détruit sa mémoire. Certains pensent qu\'il a pris un camp de mercenaires pour un article sur sa liste de courses. | Très pauvre en couronnes et à peine capable d\'ouvrir ses mains cassées pour serrer son propre fils dans ses bras et encore moins de donner un coup de poing, %name% cherche une nouvelle carrière. | Après des années de privations, la promesse d\'un salaire régulier pour un travail de mercenaire est une offre tentante pour lui, même s\'il n\'a qu\'une vague idée de la guerre réelle. | Cet homme pourrait tuer une pierre et blesser une pierre - un bon complément à n\'importe quel équipement.}";
	}

	function onChangeAttributes()
	{
		local c = {
			Hitpoints = [
				5,
				10
			],
			Bravery = [
				7,
				5
			],
			Stamina = [
				10,
				5
			],
			MeleeSkill = [
				5,
				0
			],
			RangedSkill = [
				0,
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
				5,
				0
			]
		};
		return c;
	}

	function onAdded()
	{
		this.character_background.onAdded();

		if (this.Math.rand(0, 3) == 3)
		{
			local actor = this.getContainer().getActor();
			actor.setTitle(this.Const.Strings.BrawlerTitles[this.Math.rand(0, this.Const.Strings.BrawlerTitles.len() - 1)]);
		}
	}

	function onAddEquipment()
	{
		local items = this.getContainer().getActor().getItems();
		local r;
		r = this.Math.rand(0, 2);

		if (r == 0)
		{
			items.equip(this.new("scripts/items/armor/sackcloth"));
		}
		else if (r == 1)
		{
			items.equip(this.new("scripts/items/armor/tattered_sackcloth"));
		}
		else if (r == 2)
		{
			items.equip(this.new("scripts/items/armor/leather_wraps"));
		}
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill.getID() == "actives.hand_to_hand")
		{
			_properties.DamageTotalMult *= 2.0;
		}
	}

});

