-- enable 25man achievements
-- https://wow.tools/dbc/?dbc=achievement_criteria&build=3.3.5.12340
DELETE FROM `disables` WHERE `entry` IN 
(13233, 13234, 13235, 13236, 382, 3834, 3835, 3836, 3837, 3838, 3839, 3840,
3841, 3842, 3843, 3844, 3845, 3847, 389, 390, 391, 392, 393, 393, 394, 5227,
7127, 7129, 7159, 7160, 7161, 7162, 7163, 7164, 7165, 7166, 7167, 7168, 7169,
7170, 7171, 7172, 7193, 7538, 7539, 7540, 7541, 7542, 7548, 7549, 7568, 7569,
7601, 7603, 7605, 7606, 7607, 7611, 7613, 7615, 7616, 7619, 7621)
AND `sourceType` = 4;