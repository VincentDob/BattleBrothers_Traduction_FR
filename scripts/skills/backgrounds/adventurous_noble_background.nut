this.adventurous_noble_background <- this.inherit("scripts/skills/backgrounds/character_background", {
	m = {},
	function create()
	{
		this.character_background.create();
		this.m.ID = "background.adventurous_noble";
		this.m.Name = "Noble Aventureux";
		this.m.Icon = "ui/backgrounds/background_06.png";
		this.m.BackgroundDescription = "Délaissant souvent une bonne défense contre les armes de jet, les Nobles Aventureux préfèrent inverstir sur de bonnes compétences en mêlée ainsi que sur une détermination élevée.";
		this.m.GoodEnding = "Adventurousness never leaves the soul of a man like %name%. {Instead of returning to his noble family, he left the %companyname% and headed east in search of rare beasts. Word has it he returned to town with the head of what looked like a giant lizard, but you don\'t believe such fantastical tripe. | He departed the %companyname% and ventured west, sailing across the oceans to unseen lands. There\'s no telling where he is these days, but you\'ve little doubt that he\'ll be coming back with stories to tell. | He retired from the %companyname% and, instead of returning to his noble family, headed south. Word has it he fought in a great noble civil war, killed an orc warlord, climbed the highest mountain in the land, and is currently writing an epic about his travels. | The nobleman left the %companyname% and, preferring the life of adventure to noble boredom, he headed north. Word has it that he\'s currently marching a troop of explorers to the furthest reaches of the world.}";
		this.m.BadEnding = "%name% departed the %companyname% and continued his adventuring elsewhere. {He headed east, hoping to discover the source of the greenskins, but the nobleman has not been heard from since. | He headed north into the snowy wastes. Word has it he was seen a week ago, marching south this. time, looking rather pale and shuffling moreso than walking. | He headed south into brutal marshlands. Word has it that a mysterious flame appeared in the fog and he walked toward it. The men who saw this. said he disappeared into the mist and never returned. | He headed west and sailed the open sea. Despite having no experience at sea, he saw fit to make himself captain of the boat. They say pieces of his ship and dead sailors kept washing ashore for weeks.}";
		this.m.HiringCost = 150;
		this.m.DailyCost = 25;
		this.m.Excluded = [
			"trait.weasel",
			"trait.fear_beasts",
			"trait.clubfooted",
			"trait.irrational",
			"trait.hesitant",
			"trait.drunkard",
			"trait.fainthearted",
			"trait.craven",
			"trait.dastard",
			"trait.fragile",
			"trait.insecure",
			"trait.asthmatic",
			"trait.spartan"
		];
		this.m.Faces = this.Const.Faces.AllMale;
		this.m.Hairs = this.Const.Hair.TidyMale;
		this.m.HairColors = this.Const.HairColors.Young;
		this.m.Beards = this.Const.Beards.All;
		this.m.Bodies = this.Const.Bodies.Muscular;
		this.m.Names = this.Const.Strings.KnightNames;
		this.m.Level = this.Math.rand(1, 3);
		this.m.IsCombatBackground = true;
		this.m.IsNoble = true;
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
			}
		];
	}

	function onBuildDescription()
	{
		return "{Né noble, mais de rang inférieur | En tant que troisième dans l\'ordre de succession | Jeune noble à l\'effronterie manifeste | En tant qu\'épéiste émérite}, la vie à la cour pour %name% {était devenue ennuyeuse | n\'était pas assez excitante car il se devait de respecter sans fin l\'étiquette qui sied à sa lignée familiale | s\'avérait pénible et il avait clairement la sensation de gâcher les meilleurs moments de sa vie | semblait ennuyeuse et n\'était pas aussi excitante que dans les récits d\'aventures faits d\'épiques batailles, de redoutables bêtes à occire ou de jeunes donzelles à conquérir}. {Portant fièrement les armoiries de sa famille | Encouragé par son frère | Frustré par sa mère | Décidant finalement de changer les choses}, %name% se mit alors en route {afin de gagner sa place | pour se faire un nom | de manière à connaître la gloire sur le champs de bataille | afin de tester ses compétences au combat} et {vivre pleinement la vie telle qu\'il l\'avait rêvée maintes fois derrière les murs du château | ainsi voir enfin toutes les merveilles et les lieux exotiques du monde | finalement gagner sa place dans le monde | enfin être adoubé pour sa valeur | devenir célèbre et aimé dans tout le monde connu | devenir tristement célèbre, craint dans tout le monde connu}.";
	}

	function onChangeAttributes()
	{
		local c = {
			Hitpoints = [
				0,
				0
			],
			Bravery = [
				15,
				20
			],
			Stamina = [
				0,
				5
			],
			MeleeSkill = [
				10,
				10
			],
			RangedSkill = [
				0,
				0
			],
			MeleeDefense = [
				5,
				8
			],
			RangedDefense = [
				-10,
				-5
			],
			Initiative = [
				0,
				0
			]
		};
		return c;
	}

	function onAddEquipment()
	{
		local items = this.getContainer().getActor().getItems();
		local r;
		r = this.Math.rand(0, 2);

		if (r == 0)
		{
			items.equip(this.new("scripts/items/weapons/arming_sword"));
		}
		else if (r == 1)
		{
			items.equip(this.new("scripts/items/weapons/winged_mace"));
		}
		else if (r == 2)
		{
			items.equip(this.new("scripts/items/weapons/hand_axe"));
		}

		r = this.Math.rand(0, 1);

		if (r == 0)
		{
			items.equip(this.new("scripts/items/shields/heater_shield"));
		}
		else if (r == 1)
		{
			items.equip(this.new("scripts/items/shields/kite_shield"));
		}

		r = this.Math.rand(0, 2);

		if (r == 0)
		{
			items.equip(this.new("scripts/items/armor/mail_shirt"));
		}
		else if (r == 1)
		{
			items.equip(this.new("scripts/items/armor/basic_mail_shirt"));
		}
		else if (r == 2)
		{
			items.equip(this.new("scripts/items/armor/mail_hauberk"));
		}

		r = this.Math.rand(0, 4);

		if (r == 0)
		{
			items.equip(this.new("scripts/items/helmets/nasal_helmet"));
		}
		else if (r == 1)
		{
			items.equip(this.new("scripts/items/helmets/padded_nasal_helmet"));
		}
		else if (r == 2)
		{
			items.equip(this.new("scripts/items/helmets/nasal_helmet_with_mail"));
		}
		else if (r == 3)
		{
			items.equip(this.new("scripts/items/helmets/mail_coif"));
		}
	}

});

