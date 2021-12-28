this.heraldic_mail_helmet <- this.inherit("scripts/items/helmets/named/named_helmet", {
	m = {},
	function create()
	{
		this.named_helmet.create();
		this.m.ID = "armor.head.heraldic_mail";
		this.m.Description = "Un bascinet lourd avec une visière mobile, porté sur une coiffe de mailles. Une pièce voyante digne d\'un vrai chevalier.";
		this.m.NameList = [
			"Bascinet with Mail",
			"Knightly Bascinet",
			"Heraldic Bascinet",
			"Bascinet with Visor",
			"Heraldic Helmet",
			"Knightly Helm"
		];
		this.m.ShowOnCharacter = true;
		this.m.HideHair = true;
		this.m.HideBeard = false;
		this.m.Variant = 53;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.InventorySound = this.Const.Sound.ArmorHalfplateImpact;
		this.m.Value = 8000;
		this.m.Condition = 280;
		this.m.ConditionMax = 280;
		this.m.StaminaModifier = -19;
		this.m.Vision = -2;
		this.randomizeValues();
	}

});

