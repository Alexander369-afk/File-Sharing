USE `pokemon`;

-- ==========================================================================
-- 1. REGIONS (Forældretabel)
-- BEMÆRK: Din DDL kræver INT som 'Name'
-- ==========================================================================
INSERT INTO `pokemon`.`Regions` (`Name`, `Gyms`) VALUES
(1, 'Kanto Gym League'),
(2, 'Johto Gym League');

-- ==========================================================================
-- 2. BADGES (Forældretabel)
-- BEMÆRK: Din DDL kræver INT som 'Name'
-- ==========================================================================
INSERT INTO `pokemon`.`Badges` (`Name`, `Description`) VALUES
(101, 'Boulder Badge - Giver adgang til Flash'),
(102, 'Cascade Badge - Lvl 30 Pokemon adlyder'),
(103, 'Thunder Badge - Giver adgang til Fly');

-- ==========================================================================
-- 3. GYM (Børnetabel - afhænger af både Regions og Badges)
-- PK: (Name, Badges_Name, Regions_Name)
-- ==========================================================================
INSERT INTO `pokemon`.`Gym` (`Name`, `Type`, `City`, `Badges_Name`, `Regions_Name`) VALUES
(1, 'Rock', 'Pewter City', 101, 1),
(2, 'Water', 'Cerulean City', 102, 1),
(3, 'Electric', 'Vermilion City', 103, 1);