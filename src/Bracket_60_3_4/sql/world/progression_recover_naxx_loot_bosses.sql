SET @4HChest    := 25193;
SET @Anubrekhan := 29249;
SET @Faerlina   := 29268;
SET @Gluth      := 29417;
SET @Gothik     := 29955;
SET @Grobbulus  := 29373;
SET @Heigan     := 29701;
SET @Kelthuzad  := 30061;
SET @Loatheb    := 29718;
SET @Maexxna    := 29278;
SET @Noth       := 29615;
SET @Patchwerk  := 29324;
SET @Razuvious  := 29940;
SET @Sapphiron  := 29991;
SET @Thaddius   := 29448;


-- Recover Four Horsemen Chest
DELETE FROM `gameobject_loot_template` WHERE `Entry` = @4HChest;
INSERT INTO `gameobject_loot_template` 
VALUES 
(25193,2,34382,100,0,1,0,1,2,'Four Horsemen Chest - (ReferenceTable)'),
(25193,40344,34146,100,0,1,0,1,2,'Four Horsemen Chest - (ReferenceTable)'),
(25193,40752,0,100,0,1,0,1,1,'Four Horsemen Chest - Emblem of Triumph');

DELETE FROM `reference_loot_template` WHERE `Entry` IN (34146, 34382);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34146,40286,0,0,0,1,1,1,1,'Mantle of the Corrupted'),
(34146,40343,0,0,0,1,1,1,1,'Armageddon'),
(34146,40344,0,0,0,1,1,1,1,'Helm of the Grave'),
(34146,40345,0,0,0,1,1,1,1,'Broken Promise'),
(34146,40346,0,0,0,1,1,1,1,'Final Voyage'),
(34146,40347,0,0,0,1,1,1,1,'Zeliek\'s Gauntlets'),
(34146,40348,0,0,0,1,1,1,1,'Damnation'),
(34146,40349,0,0,0,1,1,1,1,'Gloves of Peaceful Death'),
(34146,40350,0,0,0,1,1,1,1,'Urn of Lost Memories'),
(34146,40352,0,0,0,1,1,1,1,'Leggings of Voracious Shadows'),
(34382,40625,0,0,0,1,1,1,1,'Breastplate of the Lost Conqueror'),
(34382,40626,0,0,0,1,1,1,1,'Breastplate of the Lost Protector'),
(34382,40627,0,0,0,1,1,1,1,'Breastplate of the Lost Vanquisher');

-- Recover Patchwerk
DELETE FROM `creature_loot_template` WHERE `Entry` = @Patchwerk;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(29324,1,34140,100,0,1,0,1,4,'Patchwerk (1) - (ReferenceTable)'),
(29324,40752,0,100,0,1,0,1,1,'Patchwerk (1) - Emblem of Triumph'),
(29324,45912,0,0.1,0,1,0,1,1,'Patchwerk (1) - Book of Glyph Mastery');

DELETE FROM `reference_loot_template` WHERE `Entry` IN (34140);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES 
(34140,40064,0,0,0,1,1,1,1,'Thunderstorm Amulet'),
(34140,40065,0,0,0,1,1,1,1,'Fool\'s Trial'),
(34140,40069,0,0,0,1,1,1,1,'Heritage'),
(34140,40071,0,0,0,1,1,1,1,'Chains of Adoration'),
(34140,40074,0,0,0,1,1,1,1,'Strong-Handed Ring'),
(34140,40075,0,0,0,1,1,1,1,'Ruthlessness'),
(34140,40080,0,0,0,1,1,1,1,'Lost Jewel'),
(34140,40107,0,0,0,1,1,1,1,'Sand-Worn Band'),
(34140,40108,0,0,0,1,1,1,1,'Seized Beauty'),
(34140,40259,0,0,0,1,1,1,1,'Waistguard of Divine Grace'),
(34140,40260,0,0,0,1,1,1,1,'Belt of the Tortured'),
(34140,40261,0,0,0,1,1,1,1,'Crude Discolored Battlegrips'),
(34140,40262,0,0,0,1,1,1,1,'Gloves of Calculated Risk'),
(34140,40263,0,0,0,1,1,1,1,'Fleshless Girdle'),
(34140,40264,0,0,0,1,1,1,1,'Split Greathammer'),
(34140,40265,0,0,0,1,1,1,1,'Arrowsong'),
(34140,40266,0,0,0,1,1,1,1,'Hero\'s Surrender'),
(34140,40267,0,0,0,1,1,1,1,'Totem of Hex'),
(34140,40268,0,0,0,1,1,1,1,'Libram of Tolerance'),
(34140,40269,0,0,0,1,1,1,1,'Boots of Persuasion'),
(34140,40270,0,0,0,1,1,1,1,'Boots of Septic Wounds'),
(34140,40271,0,0,0,1,1,1,1,'Sash of Solitude'),
(34140,40272,0,0,0,1,1,1,1,'Girdle of the Gambit'),
(34140,40273,0,0,0,1,1,1,1,'Surplus Limb');

-- Recover Gobbulus
DELETE FROM `creature_loot_template` WHERE `Entry` = @Grobbulus;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES 
(29373,1,34141,100,0,1,0,1,4,'Grobbulus (1) - (ReferenceTable)'),
(29373,40752,0,100,0,1,0,1,1,'Grobbulus (1) - Emblem of Triumph'),
(29373,45912,0,0.1,0,1,0,1,1,'Grobbulus (1) - Book of Glyph Mastery');

DELETE FROM `reference_loot_template` WHERE `Entry` IN (34141);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34141,40250,0,0,0,1,1,1,1,'Aged Winter Cloak'),
(34141,40251,0,0,0,1,1,1,1,'Shroud of Luminosity'),
(34141,40252,0,0,0,1,1,1,1,'Cloak of the Shadowed Sun'),
(34141,40253,0,0,0,1,1,1,1,'Shawl of the Old Maid'),
(34141,40254,0,0,0,1,1,1,1,'Cloak of Averted Crisis'),
(34141,40255,0,0,0,1,1,1,1,'Dying Curse'),
(34141,40256,0,0,0,1,1,1,1,'Grim Toll'),
(34141,40257,0,0,0,1,1,1,1,'Defender\'s Code'),
(34141,40258,0,0,0,1,1,1,1,'Forethought Talisman'),
(34141,40274,0,0,0,1,1,1,1,'Bracers of Liberation'),
(34141,40275,0,0,0,1,1,1,1,'Depraved Linked Belt'),
(34141,40277,0,0,0,1,1,1,1,'Tunic of Indulgence'),
(34141,40278,0,0,0,1,1,1,1,'Girdle of Chivalry'),
(34141,40279,0,0,0,1,1,1,1,'Chestguard of the Exhausted'),
(34141,40280,0,0,0,1,1,1,1,'Origin of Nightmares'),
(34141,40281,0,0,0,1,1,1,1,'Twilight Mist'),
(34141,40282,0,0,0,1,1,1,1,'Slime Stream Bands'),
(34141,40283,0,0,0,1,1,1,1,'Fallout Impervious Tunic'),
(34141,40284,0,0,0,1,1,1,1,'Plague Igniter'),
(34141,40285,0,0,0,1,1,1,1,'Desecrated Past'),
(34141,40287,0,0,0,1,1,1,1,'Cowl of Vanity'),
(34141,40288,0,0,0,1,1,1,1,'Spaulders of Incoherence'),
(34141,40289,0,0,0,1,1,1,1,'Sympathetic Amice'),
(34141,40351,0,0,0,1,1,1,1,'Mantle of the Fatigued Sage');


-- Recover Gluth
DELETE FROM `creature_loot_template` WHERE `Entry` = @Gluth;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES 
(29417,1,34142,100,0,1,0,1,2,'Gluth (1) - (ReferenceTable)'),
(29417,2,34383,100,0,1,0,1,2,'Gluth (1) - (ReferenceTable)'),
(29417,40752,0,100,0,1,0,1,1,'Gluth (1) - Emblem of Triumph'),
(29417,45912,0,0.1,0,1,0,1,1,'Gluth (1) - Book of Glyph Mastery');

DELETE FROM `reference_loot_template` WHERE `Entry` IN (34142, 34383);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES 
(34142,39717,0,0,0,1,1,1,1,'Inexorable Sabatons'),
(34142,39718,0,0,0,1,1,1,1,'Corpse Scarab Handguards'),
(34142,39733,0,0,0,1,1,1,1,'Gloves of Token Respect'),
(34142,39760,0,0,0,1,1,1,1,'Helm of Diminished Pride'),
(34142,39768,0,0,0,1,1,1,1,'Cowl of the Perished'),
(34142,40185,0,0,0,1,1,1,1,'Shoulderguards of Opportunity'),
(34142,40188,0,0,0,1,1,1,1,'Gauntlets of the Disobedient'),
(34142,40191,0,0,0,1,1,1,1,'Libram of Radiance'),
(34142,40193,0,0,0,1,1,1,1,'Tunic of Masked Suffering'),
(34142,40203,0,0,0,1,1,1,1,'Breastplate of Tormented Rage'),
(34142,40204,0,0,0,1,1,1,1,'Legguards of the Apostle'),
(34142,40205,0,0,0,1,1,1,1,'Stalk-Skin Belt'),
(34142,40206,0,0,0,1,1,1,1,'Iron-Spring Jumpers'),
(34142,40209,0,0,0,1,1,1,1,'Bindings of the Decrepit'),
(34142,40242,0,0,0,1,1,1,1,'Grotesque Handgrips'),
(34142,40247,0,0,0,1,1,1,1,'Cowl of Innocent Delight'),
(34142,40259,0,0,0,1,1,1,1,'Waistguard of Divine Grace'),
(34142,40260,0,0,0,1,1,1,1,'Belt of the Tortured'),
(34142,40270,0,0,0,1,1,1,1,'Boots of Septic Wounds'),
(34142,40289,0,0,0,1,1,1,1,'Sympathetic Amice'),
(34142,40296,0,0,0,1,1,1,1,'Cover of Silence'),
(34142,40297,0,0,0,1,1,1,1,'Sabatons of Endurance'),
(34142,40302,0,0,0,1,1,1,1,'Benefactor\'s Gauntlets'),
(34142,40303,0,0,0,1,1,1,1,'Wraps of the Persecuted'),
(34142,40319,0,0,0,1,1,1,1,'Chestpiece of Suspicion'),
(34142,40326,0,0,0,1,1,1,1,'Boots of Forlorn Wishes'),
(34142,40332,0,0,0,1,1,1,1,'Abetment Bracers'),
(34142,40350,0,0,0,1,1,1,1,'Urn of Lost Memories'),
(34142,40602,0,0,0,1,1,1,1,'Robes of Mutation'),
(34383,40625,0,0,0,1,1,1,1,'Breastplate of the Lost Conqueror'),
(34383,40626,0,0,0,1,1,1,1,'Breastplate of the Lost Protector'),
(34383,40627,0,0,0,1,1,1,1,'Breastplate of the Lost Vanquisher'),
(34383,40634,0,0,0,1,1,1,1,'Legplates of the Lost Conqueror'),
(34383,40635,0,0,0,1,1,1,1,'Legplates of the Lost Protector'),
(34383,40636,0,0,0,1,1,1,1,'Legplates of the Lost Vanquisher'),
(34383,40637,0,0,0,1,1,1,1,'Mantle of the Lost Conqueror'),
(34383,40638,0,0,0,1,1,1,1,'Mantle of the Lost Protector'),
(34383,40639,0,0,0,1,1,1,1,'Mantle of the Lost Vanquisher');

-- Recover Thaddius
DELETE FROM `creature_loot_template` WHERE `Entry` = @Thaddius;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(29448,1,34143,100,0,1,0,1,2,'Thaddius (1) - (ReferenceTable)'),
(29448,2,34380,100,0,1,0,1,2,'Thaddius (1) - (ReferenceTable)'),
(29448,40752,0,100,0,1,0,1,1,'Thaddius (1) - Emblem of Triumph'),
(29448,45912,0,0.1,0,1,0,1,1,'Thaddius (1) - Book of Glyph Mastery');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34143, 34380);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34143,40294,0,0,0,1,1,1,1,'Riveted Abomination Leggings'),
(34143,40296,0,0,0,1,1,1,1,'Cover of Silence'),
(34143,40297,0,0,0,1,1,1,1,'Sabatons of Endurance'),
(34143,40298,0,0,0,1,1,1,1,'Faceguard of the Succumbed'),
(34143,40299,0,0,0,1,1,1,1,'Pauldrons of the Abandoned'),
(34143,40300,0,0,0,1,1,1,1,'Spire of Sunset'),
(34143,40301,0,0,0,1,1,1,1,'Cincture of Polarity'),
(34143,40302,0,0,0,1,1,1,1,'Benefactor\'s Gauntlets'),
(34143,40303,0,0,0,1,1,1,1,'Wraps of the Persecuted'),
(34143,40304,0,0,0,1,1,1,1,'Headpiece of Fungal Bloom'),
(34380,40634,0,0,0,1,1,1,1,'Legplates of the Lost Conqueror'),
(34380,40635,0,0,0,1,1,1,1,'Legplates of the Lost Protector'),
(34380,40636,0,0,0,1,1,1,1,'Legplates of the Lost Vanquisher');

-- Recover Noth the Plaguebringer
DELETE FROM `creature_loot_template` WHERE `Entry` = @Noth;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(29615,1,34147,100,0,1,0,1,4,'Noth the Plaguebringer (1) - (ReferenceTable)'),
(29615,40752,0,100,0,1,0,1,1,'Noth the Plaguebringer (1) - Emblem of Triumph'),
(29615,45912,0,0.1,0,1,0,1,1,'Noth the Plaguebringer (1) - Book of Glyph Mastery');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34147);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34147,40064,0,0,0,1,1,1,1,'Thunderstorm Amulet'),
(34147,40065,0,0,0,1,1,1,1,'Fool\'s Trial'),
(34147,40069,0,0,0,1,1,1,1,'Heritage'),
(34147,40071,0,0,0,1,1,1,1,'Chains of Adoration'),
(34147,40074,0,0,0,1,1,1,1,'Strong-Handed Ring'),
(34147,40075,0,0,0,1,1,1,1,'Ruthlessness'),
(34147,40080,0,0,0,1,1,1,1,'Lost Jewel'),
(34147,40107,0,0,0,1,1,1,1,'Sand-Worn Band'),
(34147,40108,0,0,0,1,1,1,1,'Seized Beauty'),
(34147,40184,0,0,0,1,1,1,1,'Crippled Treads'),
(34147,40185,0,0,0,1,1,1,1,'Shoulderguards of Opportunity'),
(34147,40186,0,0,0,1,1,1,1,'Thrusting Bands'),
(34147,40187,0,0,0,1,1,1,1,'Poignant Sabatons'),
(34147,40188,0,0,0,1,1,1,1,'Gauntlets of the Disobedient'),
(34147,40189,0,0,0,1,1,1,1,'Angry Dread'),
(34147,40190,0,0,0,1,1,1,1,'Spinning Fate'),
(34147,40191,0,0,0,1,1,1,1,'Libram of Radiance'),
(34147,40192,0,0,0,1,1,1,1,'Accursed Spine'),
(34147,40193,0,0,0,1,1,1,1,'Tunic of Masked Suffering'),
(34147,40196,0,0,0,1,1,1,1,'Legguards of the Undisturbed'),
(34147,40197,0,0,0,1,1,1,1,'Gloves of the Fallen Wizard'),
(34147,40198,0,0,0,1,1,1,1,'Bands of Impurity'),
(34147,40200,0,0,0,1,1,1,1,'Belt of Potent Chanting'),
(34147,40602,0,0,0,1,1,1,1,'Robes of Mutation');

-- Recover Heigan the Unclean
DELETE FROM `creature_loot_template` WHERE `Entry` = @Heigan;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(29701,1,34148,100,0,1,0,1,4,'Heigan the Unclean (1) - (ReferenceTable)'),
(29701,40752,0,100,0,1,0,1,1,'Heigan the Unclean (1) - Emblem of Triumph'),
(29701,45912,0,0.1,0,1,0,1,1,'Heigan the Unclean (1) - Book of Glyph Mastery');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34148);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34148,40201,0,0,0,1,1,1,1,'Leggings of Colossal Strides'),
(34148,40203,0,0,0,1,1,1,1,'Breastplate of Tormented Rage'),
(34148,40204,0,0,0,1,1,1,1,'Legguards of the Apostle'),
(34148,40205,0,0,0,1,1,1,1,'Stalk-Skin Belt'),
(34148,40206,0,0,0,1,1,1,1,'Iron-Spring Jumpers'),
(34148,40207,0,0,0,1,1,1,1,'Sigil of Awareness'),
(34148,40208,0,0,0,1,1,1,1,'Cryptfiend\'s Bite'),
(34148,40209,0,0,0,1,1,1,1,'Bindings of the Decrepit'),
(34148,40210,0,0,0,1,1,1,1,'Chestguard of Bitter Charms'),
(34148,40233,0,0,0,1,1,1,1,'The Undeath Carrier'),
(34148,40234,0,0,0,1,1,1,1,'Heigan\'s Putrid Vestments'),
(34148,40235,0,0,0,1,1,1,1,'Helm of Pilgrimage'),
(34148,40236,0,0,0,1,1,1,1,'Serene Echoes'),
(34148,40237,0,0,0,1,1,1,1,'Eruption-Scarred Boots'),
(34148,40238,0,0,0,1,1,1,1,'Gloves of the Dancing Bear'),
(34148,40250,0,0,0,1,1,1,1,'Aged Winter Cloak'),
(34148,40251,0,0,0,1,1,1,1,'Shroud of Luminosity'),
(34148,40252,0,0,0,1,1,1,1,'Cloak of the Shadowed Sun'),
(34148,40253,0,0,0,1,1,1,1,'Shawl of the Old Maid'),
(34148,40254,0,0,0,1,1,1,1,'Cloak of Averted Crisis'),
(34148,40255,0,0,0,1,1,1,1,'Dying Curse'),
(34148,40256,0,0,0,1,1,1,1,'Grim Toll'),
(34148,40257,0,0,0,1,1,1,1,'Defender\'s Code'),
(34148,40258,0,0,0,1,1,1,1,'Forethought Talisman');

-- Recover Loatheb
DELETE FROM `creature_loot_template` WHERE `Entry` = @Loatheb;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(29718,1,34149,100,0,1,0,1,2,'Loatheb (1) - (ReferenceTable)'),
(29718,2,34381,100,0,1,0,1,2,'Loatheb (1) - (ReferenceTable)'),
(29718,40752,0,100,0,1,0,1,1,'Loatheb (1) - Emblem of Triumph'),
(29718,45912,0,0.1,0,1,0,1,1,'Loatheb (1) - Book of Glyph Mastery');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34149, 34381);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34149,40239,0,0,0,1,1,1,1,'The Hand of Nerub'),
(34149,40240,0,0,0,1,1,1,1,'Greaves of Turbulence'),
(34149,40241,0,0,0,1,1,1,1,'Girdle of Unity'),
(34149,40242,0,0,0,1,1,1,1,'Grotesque Handgrips'),
(34149,40243,0,0,0,1,1,1,1,'Footwraps of Vile Deceit'),
(34149,40244,0,0,0,1,1,1,1,'The Impossible Dream'),
(34149,40245,0,0,0,1,1,1,1,'Fading Glow'),
(34149,40246,0,0,0,1,1,1,1,'Boots of Impetuous Ideals'),
(34149,40247,0,0,0,1,1,1,1,'Cowl of Innocent Delight'),
(34149,40249,0,0,0,1,1,1,1,'Vest of Vitality'),
(34381,40637,0,0,0,1,1,1,1,'Mantle of the Lost Conqueror'),
(34381,40638,0,0,0,1,1,1,1,'Mantle of the Lost Protector'),
(34381,40639,0,0,0,1,1,1,1,'Mantle of the Lost Vanquisher');


-- Recover Anub'Rekhan
DELETE FROM `creature_loot_template` WHERE `Entry` = @Anubrekhan;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(29249,1,34137,100,0,1,0,1,4,'Anub\'Rekhan (1) - (ReferenceTable)'),
(29249,40752,0,100,0,1,0,1,1,'Anub Rekhan (1) - Emblem of Triumph'),
(29249,45912,0,0.1,0,1,0,1,1,'Anub\'Rekhan (1) - Book of Glyph Mastery');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34137);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34137,39701,0,0,0,1,1,1,1,'Dawnwalkers'),
(34137,39702,0,0,0,1,1,1,1,'Arachnoid Gold Band'),
(34137,39703,0,0,0,1,1,1,1,'Rescinding Grips'),
(34137,39704,0,0,0,1,1,1,1,'Pauldrons of Unnatural Death'),
(34137,39706,0,0,0,1,1,1,1,'Sabatons of Sudden Reprisal'),
(34137,39712,0,0,0,1,1,1,1,'Gemmed Wand of the Nerubians'),
(34137,39714,0,0,0,1,1,1,1,'Webbed Death'),
(34137,39716,0,0,0,1,1,1,1,'Shield of Assimilation'),
(34137,39717,0,0,0,1,1,1,1,'Inexorable Sabatons'),
(34137,39718,0,0,0,1,1,1,1,'Corpse Scarab Handguards'),
(34137,39719,0,0,0,1,1,1,1,'Mantle of the Locusts'),
(34137,39720,0,0,0,1,1,1,1,'Leggings of Atrophy'),
(34137,39721,0,0,0,1,1,1,1,'Sash of the Parlor'),
(34137,39722,0,0,0,1,1,1,1,'Swarm Bindings'),
(34137,40064,0,0,0,1,1,1,1,'Thunderstorm Amulet'),
(34137,40065,0,0,0,1,1,1,1,'Fool\'s Trial'),
(34137,40069,0,0,0,1,1,1,1,'Heritage'),
(34137,40071,0,0,0,1,1,1,1,'Chains of Adoration'),
(34137,40074,0,0,0,1,1,1,1,'Strong-Handed Ring'),
(34137,40075,0,0,0,1,1,1,1,'Ruthlessness'),
(34137,40080,0,0,0,1,1,1,1,'Lost Jewel'),
(34137,40107,0,0,0,1,1,1,1,'Sand-Worn Band'),
(34137,40108,0,0,0,1,1,1,1,'Seized Beauty');


-- Recover Grand Widow Faerlina
DELETE FROM `creature_loot_template` WHERE `Entry` = @Faerlina;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES 
(29268,1,34138,100,0,1,0,1,4,'Grand Widow Faerlina (1) - (ReferenceTable)'),
(29268,40752,0,100,0,1,0,1,1,'Grand Widow Faerlina (1) - Emblem of Triumph'),
(29268,45912,0,0.1,0,1,0,1,1,'Grand Widow Faerlina (1) - Book of Glyph Mastery');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34138);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34138,39723,0,0,0,1,1,1,1,'Fire-Scorched Greathelm'),
(34138,39724,0,0,0,1,1,1,1,'Cult\'s Chestguard'),
(34138,39725,0,0,0,1,1,1,1,'Epaulets of the Grieving Servant'),
(34138,39726,0,0,0,1,1,1,1,'Callous-Hearted Gauntlets'),
(34138,39727,0,0,0,1,1,1,1,'Dislocating Handguards'),
(34138,39728,0,0,0,1,1,1,1,'Totem of Misery'),
(34138,39729,0,0,0,1,1,1,1,'Bracers of the Tyrant'),
(34138,39730,0,0,0,1,1,1,1,'Widow\'s Fury'),
(34138,39731,0,0,0,1,1,1,1,'Punctilious Bindings'),
(34138,39732,0,0,0,1,1,1,1,'Faerlina\'s Madness'),
(34138,39733,0,0,0,1,1,1,1,'Gloves of Token Respect'),
(34138,39734,0,0,0,1,1,1,1,'Atonement Greaves'),
(34138,39735,0,0,0,1,1,1,1,'Belt of False Dignity'),
(34138,39756,0,0,0,1,1,1,1,'Tunic of Prejudice'),
(34138,39757,0,0,0,1,1,1,1,'Idol of Worship'),
(34138,40064,0,0,0,1,1,1,1,'Thunderstorm Amulet'),
(34138,40065,0,0,0,1,1,1,1,'Fool\'s Trial'),
(34138,40069,0,0,0,1,1,1,1,'Heritage'),
(34138,40071,0,0,0,1,1,1,1,'Chains of Adoration'),
(34138,40074,0,0,0,1,1,1,1,'Strong-Handed Ring'),
(34138,40075,0,0,0,1,1,1,1,'Ruthlessness'),
(34138,40080,0,0,0,1,1,1,1,'Lost Jewel'),
(34138,40107,0,0,0,1,1,1,1,'Sand-Worn Band'),
(34138,40108,0,0,0,1,1,1,1,'Seized Beauty');

-- Recover Maexxna
DELETE FROM `creature_loot_template` WHERE `Entry` = @Maexxna;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(29278,1,34139,100,0,1,0,1,4,'Maexxna (1) - (ReferenceTable)'),
(29278,40752,0,100,0,1,0,1,1,'Maexxna (1) - Emblem of Triumph'),
(29278,45912,0,0.1,0,1,0,1,1,'Maexxna (1) - Book of Glyph Mastery');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34139);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34139,39758,0,0,0,1,1,1,1,'The Jawbone'),
(34139,39759,0,0,0,1,1,1,1,'Ablative Chitin Girdle'),
(34139,39760,0,0,0,1,1,1,1,'Helm of Diminished Pride'),
(34139,39761,0,0,0,1,1,1,1,'Infectious Skitterer Leggings'),
(34139,39762,0,0,0,1,1,1,1,'Torn Web Wrapping'),
(34139,39763,0,0,0,1,1,1,1,'Wraith Strike'),
(34139,39764,0,0,0,1,1,1,1,'Bindings of the Hapless Prey'),
(34139,39765,0,0,0,1,1,1,1,'Sinner\'s Bindings'),
(34139,39766,0,0,0,1,1,1,1,'Matriarch\'s Spawn'),
(34139,39767,0,0,0,1,1,1,1,'Undiminished Battleplate'),
(34139,39768,0,0,0,1,1,1,1,'Cowl of the Perished'),
(34139,40060,0,0,0,1,1,1,1,'Distorted Limbs'),
(34139,40061,0,0,0,1,1,1,1,'Quivering Tunic'),
(34139,40062,0,0,0,1,1,1,1,'Digested Silken Robes'),
(34139,40063,0,0,0,1,1,1,1,'Mantle of Shattered Kinship'),
(34139,40250,0,0,0,1,1,1,1,'Aged Winter Cloak'),
(34139,40251,0,0,0,1,1,1,1,'Shroud of Luminosity'),
(34139,40252,0,0,0,1,1,1,1,'Cloak of the Shadowed Sun'),
(34139,40253,0,0,0,1,1,1,1,'Shawl of the Old Maid'),
(34139,40254,0,0,0,1,1,1,1,'Cloak of Averted Crisis'),
(34139,40255,0,0,0,1,1,1,1,'Dying Curse'),
(34139,40256,0,0,0,1,1,1,1,'Grim Toll'),
(34139,40257,0,0,0,1,1,1,1,'Defender\'s Code'),
(34139,40258,0,0,0,1,1,1,1,'Forethought Talisman');


-- Recover Instructor Razuvious
DELETE FROM `creature_loot_template` WHERE `Entry` = @Razuvious;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(29940,1,34144,100,0,1,0,1,4,'Instructor Razuvious (1) - (ReferenceTable)'),
(29940,40752,0,100,0,1,0,1,1,'Instructor Razuvious (1) - Emblem of Triumph'),
(29940,45912,0,0.1,0,1,0,1,1,'Instructor Razuvious (1) - Book of Glyph Mastery');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34144);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34144,40064,0,0,0,1,1,1,1,'Thunderstorm Amulet'),
(34144,40065,0,0,0,1,1,1,1,'Fool\'s Trial'),
(34144,40069,0,0,0,1,1,1,1,'Heritage'),
(34144,40071,0,0,0,1,1,1,1,'Chains of Adoration'),
(34144,40074,0,0,0,1,1,1,1,'Strong-Handed Ring'),
(34144,40075,0,0,0,1,1,1,1,'Ruthlessness'),
(34144,40080,0,0,0,1,1,1,1,'Lost Jewel'),
(34144,40107,0,0,0,1,1,1,1,'Sand-Worn Band'),
(34144,40108,0,0,0,1,1,1,1,'Seized Beauty'),
(34144,40305,0,0,0,1,1,1,1,'Spaulders of Egotism'),
(34144,40306,0,0,0,1,1,1,1,'Bracers of the Unholy Knight'),
(34144,40315,0,0,0,1,1,1,1,'Shoulderpads of Secret Arts'),
(34144,40316,0,0,0,1,1,1,1,'Gauntlets of Guiding Touch'),
(34144,40317,0,0,0,1,1,1,1,'Girdle of Razuvious'),
(34144,40318,0,0,0,1,1,1,1,'Legplates of Double Strikes'),
(34144,40319,0,0,0,1,1,1,1,'Chestpiece of Suspicion'),
(34144,40320,0,0,0,1,1,1,1,'Faithful Steel Sabatons'),
(34144,40321,0,0,0,1,1,1,1,'Idol of the Shooting Star'),
(34144,40322,0,0,0,1,1,1,1,'Totem of Dueling'),
(34144,40323,0,0,0,1,1,1,1,'Esteemed Bindings'),
(34144,40324,0,0,0,1,1,1,1,'Bands of Mutual Respect'),
(34144,40325,0,0,0,1,1,1,1,'Bindings of the Expansive Mind'),
(34144,40326,0,0,0,1,1,1,1,'Boots of Forlorn Wishes'),
(34144,40327,0,0,0,1,1,1,1,'Girdle of Recuperation');

-- Recover Gothik the Harvester
DELETE FROM `creature_loot_template` WHERE `Entry` = @Gothik;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(29955,1,34145,100,0,1,0,1,4,'Gothik the Harvester (1) - (ReferenceTable)'),
(29955,40752,0,100,0,1,0,1,1,'Gothik the Harvester (1) - Emblem of Triumph'),
(29955,45912,0,0.1,0,1,0,1,1,'Gothik the Harvester (1) - Book of Glyph Mastery');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34145);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34145,40250,0,0,0,1,1,1,1,'Aged Winter Cloak'),
(34145,40251,0,0,0,1,1,1,1,'Shroud of Luminosity'),
(34145,40252,0,0,0,1,1,1,1,'Cloak of the Shadowed Sun'),
(34145,40253,0,0,0,1,1,1,1,'Shawl of the Old Maid'),
(34145,40254,0,0,0,1,1,1,1,'Cloak of Averted Crisis'),
(34145,40255,0,0,0,1,1,1,1,'Dying Curse'),
(34145,40256,0,0,0,1,1,1,1,'Grim Toll'),
(34145,40257,0,0,0,1,1,1,1,'Defender\'s Code'),
(34145,40258,0,0,0,1,1,1,1,'Forethought Talisman'),
(34145,40328,0,0,0,1,1,1,1,'Helm of Vital Protection'),
(34145,40329,0,0,0,1,1,1,1,'Hood of the Exodus'),
(34145,40330,0,0,0,1,1,1,1,'Bracers of Unrelenting Attack'),
(34145,40331,0,0,0,1,1,1,1,'Leggings of Failed Escape'),
(34145,40332,0,0,0,1,1,1,1,'Abetment Bracers'),
(34145,40333,0,0,0,1,1,1,1,'Leggings of Fleeting Moments'),
(34145,40334,0,0,0,1,1,1,1,'Burdened Shoulderplates'),
(34145,40335,0,0,0,1,1,1,1,'Touch of Horror'),
(34145,40336,0,0,0,1,1,1,1,'Life and Death'),
(34145,40337,0,0,0,1,1,1,1,'Libram of Resurgence'),
(34145,40338,0,0,0,1,1,1,1,'Bindings of Yearning'),
(34145,40339,0,0,0,1,1,1,1,'Gothik\'s Cowl'),
(34145,40340,0,0,0,1,1,1,1,'Helm of Unleashed Energy'),
(34145,40341,0,0,0,1,1,1,1,'Shackled Cinch'),
(34145,40342,0,0,0,1,1,1,1,'Idol of Awakening');

-- Recover Sapphiron
DELETE FROM `creature_loot_template` WHERE `Entry` = @Sapphiron;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(29991,1,34135,100,0,1,0,1,4,'Sapphiron (1) - (ReferenceTable)'),
(29991,40752,0,100,0,1,0,1,1,'Sapphiron (1) - Emblem of Triumph'),
(29991,44577,0,100,0,1,0,1,1,'Sapphiron (1) - Heroic Key to the Focusing Iris'),
(29991,45912,0,0.1,0,1,0,1,1,'Sapphiron (1) - Book of Glyph Mastery');

DELETE FROM `reference_loot_template` WHERE `Entry` IN (34135);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34135,40362,0,0,0,1,1,1,1,'Gloves of Fast Reactions'),
(34135,40363,0,0,0,1,1,1,1,'Bone-Inlaid Legguards'),
(34135,40365,0,0,0,1,1,1,1,'Breastplate of Frozen Pain'),
(34135,40366,0,0,0,1,1,1,1,'Platehelm of the Great Wyrm'),
(34135,40367,0,0,0,1,1,1,1,'Boots of the Great Construct'),
(34135,40368,0,0,0,1,1,1,1,'Murder'),
(34135,40369,0,0,0,1,1,1,1,'Icy Blast Amulet'),
(34135,40370,0,0,0,1,1,1,1,'Gatekeeper'),
(34135,40371,0,0,0,1,1,1,1,'Bandit\'s Insignia'),
(34135,40372,0,0,0,1,1,1,1,'Rune of Repulsion'),
(34135,40373,0,0,0,1,1,1,1,'Extract of Necromantic Power'),
(34135,40374,0,0,0,1,1,1,1,'Cosmic Lights'),
(34135,40375,0,0,0,1,1,1,1,'Ring of Decaying Beauty'),
(34135,40376,0,0,0,1,1,1,1,'Legwraps of the Defeated Dragon'),
(34135,40377,0,0,0,1,1,1,1,'Noble Birthright Pauldrons'),
(34135,40378,0,0,0,1,1,1,1,'Ceaseless Pity'),
(34135,40379,0,0,0,1,1,1,1,'Legguards of the Boneyard'),
(34135,40380,0,0,0,1,1,1,1,'Gloves of Grandeur'),
(34135,40381,0,0,0,1,1,1,1,'Sympathy'),
(34135,40382,0,0,0,1,1,1,1,'Soul of the Dead');

--  Recover Kel'Thuzad
DELETE FROM `creature_loot_template` WHERE `Entry` = @Kelthuzad;
INSERT INTO `creature_loot_template`
(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`,
`MinCount`, `MaxCount`, `Comment`)
VALUES
(30061,1,34136,100,0,1,0,1,3,'Kel\'Thuzad (1) - (ReferenceTable)'),
(30061,2,34133,100,0,1,1,1,2,'Kel\'Thuzad (1) - (ReferenceTable)'),
(30061,40752,0,100,0,1,0,2,2,'Kel Thuzad (1) - Emblem of Triumph'),
(30061,45912,0,0.1,0,1,0,1,1,'Kel\'Thuzad (1) - Book of Glyph Mastery');
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34133, 34136);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`,
`QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`)
VALUES
(34133,40631,0,0,0,1,1,1,1,'Crown of the Lost Conqueror'),
(34133,40632,0,0,0,1,1,1,1,'Crown of the Lost Protector'),
(34133,40633,0,0,0,1,1,1,1,'Crown of the Lost Vanquisher'),
(34136,40383,0,0,0,1,1,1,1,'Calamity\'s Grasp'),
(34136,40384,0,0,0,1,1,1,1,'Betrayer of Humanity'),
(34136,40385,0,0,0,1,1,1,1,'Envoy of Mortality'),
(34136,40386,0,0,0,1,1,1,1,'Sinister Revenge'),
(34136,40387,0,0,0,1,1,1,1,'Boundless Ambition'),
(34136,40388,0,0,0,1,1,1,1,'Journey\'s End'),
(34136,40395,0,0,0,1,1,1,1,'Torch of Holy Fire'),
(34136,40396,0,0,0,1,1,1,1,'The Turning Tide'),
(34136,40398,0,0,0,1,1,1,1,'Leggings of Mortal Arrogance'),
(34136,40399,0,0,0,1,1,1,1,'Signet of Manifested Pain'),
(34136,40400,0,0,0,1,1,1,1,'Wall of Terror'),
(34136,40401,0,0,0,1,1,1,1,'Voice of Reason'),
(34136,40402,0,0,0,1,1,1,1,'Last Laugh'),
(34136,40403,0,0,0,1,1,1,1,'Drape of the Deadly Foe'),
(34136,40405,0,0,0,1,1,1,1,'Cape of the Unworthy Wizard');



-- Update gold drop values
UPDATE `creature_template` SET `mingold`=3027272, `maxgold`=3700000 WHERE `Entry`=@Thaddius;
UPDATE `creature_template` SET `mingold`=2567646, `maxgold`=3138234 WHERE `Entry`=@Grobbulus;
UPDATE `creature_template` SET `mingold`=2520000, `maxgold`=3080000 WHERE `Entry`=@Gluth;
UPDATE `creature_template` SET `mingold`=2560908, `maxgold`=3130000 WHERE `Entry`=@Heigan;
UPDATE `creature_template` SET `mingold`=2548124, `maxgold`=3114374 WHERE `Entry`=@Maexxna;
UPDATE `creature_template` SET `mingold`=2345574,  `maxgold`=3909290 WHERE `Entry`=@Faerlina;
UPDATE `creature_template` SET `mingold`=2531304, `maxgold`=3093818 WHERE `Entry`=@Noth;
UPDATE `creature_template` SET `mingold`=2250000, `maxgold`=2750000 WHERE `Entry`=@Anubrekhan;
UPDATE `creature_template` SET `mingold`=493510,  `maxgold`=644476  WHERE `Entry`=@Sapphiron;
UPDATE `creature_template` SET `mingold`=2005510, `maxgold`=2915676 WHERE `Entry`=@Kelthuzad;
UPDATE `creature_template` SET `mingold`=2584284, `maxgold`=3158570 WHERE `Entry`=@Loatheb;
UPDATE `creature_template` SET `mingold`=2610000, `maxgold`=3190000 WHERE `Entry`=@Patchwerk;
UPDATE `creature_template` SET `mingold`=1467702,  `maxgold`=1793858  WHERE `Entry`=@Gothik;
UPDATE `creature_template` SET `mingold`=2507204, `maxgold`=3064362 WHERE `Entry`=@Razuvious;
