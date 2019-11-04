/**
* Description: Datensatz für den Dialog
* 
* 
* Author:
* [GNC]Lord-MDB
*
* Arguments:
* 
*
* Return value:
* 
*
* Server Only:
* No
* 
* Global:
* No
* 
* API:
* No
* 
* Example:
* 
*/

#include "macros.hpp"

#define saleReturnValueForOwn 0.75
#define saleReturnValueForEnemy 1.50
#define DEF_PROD(var1) var1, saleReturnValueForOwn * var1,  saleReturnValueForEnemy * var1 

GVAR(nato_vehicles) = 
[
    ["OPT_B_Quadbike_01_F", DEF_PROD(1500)],                    // Quadbike
    ["OPT_B_T_LSV_01_unarmed_F", DEF_PROD(5000)],               // Prowler unarmed 
    ["OPT_B_T_LSV_01_armed_F", DEF_PROD(8000)],                 // Prowler armed
    ["OPT_B_G_Offroad_01_F", DEF_PROD(5000)],                      // Pickup, 1000, ersetzt durch Prawler
    ["OPT_B_G_Offroad_01_armed_F", DEF_PROD(0)],                // Pickup HMG, 4000, ersetzt durch Prawler
    ["OPT_B_Truck_01_covered_F", DEF_PROD(8000)],               // HEMTT Transport
    ["OPT_B_Truck_01_Repair_F", DEF_PROD(10000)],               // HEMTT Repair, ersetzt durch Container
    ["OPT_B_Truck_01_medical_F", DEF_PROD(10000)],              // HEMTT Medical, ersetzt durch Container
    ["OPT_B_Truck_01_transport_F", DEF_PROD(2000)],             // HEMTT 2000 (fr Radar Container, keine Sitze auf 
	["OPT4_B_MRAP_01_hmg_F", DEF_PROD(20000)],                  // Hunter HMG - neu
    ["OPT_B_MRAP_01_F", DEF_PROD(5000)]                         // Hunter
];

// Fahrzeuge dieser Liste können nicht verkauft werden!
GVAR(nato_vehicles_supply) = 
[
    ["OPT_B_Truck_01_ammo_F", DEF_PROD(50000)],                 // HEMTT Ammo, 50000 ersetzt durch Container
    ["OPT_B_Truck_01_fuel_F", DEF_PROD(10000)]                  // HEMTT Fuel, 10000 ersetzt durch Container
];
    
GVAR(nato_choppers) = 
[
    ["OPT4_B_Heli_light_03_green_F", DEF_PROD(80000)],          // WY-55 Hellcat - neu
    ["OPT_B_Heli_Light_01_F", DEF_PROD(60000)],                 // MH-9 Hummingbird
    ["OPT4_B_Heli_Light_01_armed_F", DEF_PROD(0)],              // AH-9 Pawnee (Unbewaffnet) - 80000
    ["OPT_B_Heli_Light_01_armed_2_F", DEF_PROD(0)],             // AH-9 Pawnee scalpel
    ["OPT_B_Heli_Transport_01_F", DEF_PROD(90000)],             // UH-80 Ghosthawk
    ["OPT_B_Heli_Transport_03_unarmed_F", DEF_PROD(150000)],    // CH-67 Huron unarmed (Transport+Lift)
    ["OPT_B_Heli_Transport_03_F", DEF_PROD(170000)],            // CH-67 Huron armed (Transport+Lift)
    ["OPT_B_UAV_02_light_F", DEF_PROD(300000)],                 // Greyhawk unbewaffnet
    ["OPT_B_UAV_02_CAS_F", DEF_PROD(0)],                        // Greyhawk LGB
    ["OPT_B_UAV_02_F", DEF_PROD(0)],                            // Greyhawk Raketen
    ["OPT_B_UAV_02_AA_F", DEF_PROD(0)],                         // Greyhawk AA-Raketen    
    ["OPT_B_Heli_Transport_02_F", DEF_PROD(0)],            // CH-49 Mohawk (Transport+Lift)
    ["OPT_B_T_UAV_03_dynamicLoadout_F", DEF_PROD(0)],           // MQ12-Falcon - noch in arbeit erstma nur testweise mit preis eingebaut
    ["OPT_B_T_VTOL_02_infantry_unarmed_F", DEF_PROD(0)],   		// VTOL Y-32 Xi'an (Inf-Transport)
    ["OPT_B_T_VTOL_01_infantry_F", DEF_PROD(0)],                // VTOL Blackfish (Inf-Transport) 200000
    ["OPT_B_T_VTOL_01_vehicle_F", DEF_PROD(0)],         	    // VTOL Blackfish (Fahrzeug-Transport)
    ["OPT_B_T_VTOL_01_armed_F", DEF_PROD(0)],                   // VTOL Blackfish BEWAFFNET
    ["OPT4_B_Heli_Attack_01_F", DEF_PROD(0)],                   // AH-99 Blackfoot 200000(Unbewaffnet)
    ["OPT_B_Plane_CAS_01_F", DEF_PROD(0)],                      // A-164 Wipeout
    ["OPT_B_Plane_Fighter_AA_01_F", DEF_PROD(0)],               // F/A-181 Black Wasp II (AA)
    ["OPT_B_Plane_Fighter_03_AA_F_1", DEF_PROD(0)],             // Buzzard AA
    ["OPT_B_Plane_CAS_01_F_1", DEF_PROD(0)]                     // A-164 Wipeout    
];
    
GVAR(nato_armored) = 
[
    ["OPT4_B_APC_Tracked_01_rcws_F", DEF_PROD(30000)],          // IFV-6c Panther
    ["OPT_B_APC_Wheeled_01_cannon_light_F", DEF_PROD(0)],       // AMV-7 Marshall (Leicht)
    ["OPT4_B_APC_Wheeled_01_cannon_F", DEF_PROD(50000)],        // AMV-7 Marshall    
    ["OPT4_B_APC_Tracked_01_AA_F", DEF_PROD(125000)],           // IFV-6a Cheetah
    ["OPT4_B_APC_tracked_03_cannon_F", DEF_PROD(60000)],        // FV-720 Mora    
    ["OPT4_B_MBT_01_cannon_F", DEF_PROD(0)],                    // M2A4 Slammer
    ["OPT4_B_MBT_01_TUSK_F", DEF_PROD(125000)],                 // M2A4 SlammerUp
    ["OPT_B_MBT_03_cannon_F", DEF_PROD(0)],                     // MBT-52 Kuma, fliegt raus
    ["OPT_B_MBT_01_Arty_F", DEF_PROD(0)],                       // M4 Scorcher
    ["OPT4_B_MBT_01_mlrs_F", DEF_PROD(0)],                      // M5 Sandstorm    
    ["OPT4_B_MBT_01_arty_F", DEF_PROD(300000)],                 // M4 Scorcher
    ["OPT_B_MBT_01_mlrs_F", DEF_PROD(400000)],                  // M5 Sandstorm    
    ["OPT4_B_MRAP_01_gmg_F", DEF_PROD(0)],                		// Hunter GMG - neu
    ["OPT_B_MRAP_03_F", DEF_PROD(0)],                           // Strider, 6500 
    ["OPT_B_MRAP_03_hmg_F", DEF_PROD(0)],                       // Strider HMG, 
    ["OPT4_B_MRAP_03_gmg_F", DEF_PROD(0)],                	    // Strider GMG, 22000 
	["OPT4_B_LSV_01_AT_F", DEF_PROD(80000)]                     // Prowler AT - 20000
];

GVAR(nato_supplies) = 
[
    ["OPT_Box_NATO_Ammo_F", 40000, 10000, 20000],               // Munitionskiste
    ["OPT_Box_NATO_WpsSpecial_F", 60000, 10000, 20000],         // Munition spezial
    ["OPT_Box_NATO_Grenades_F", 75000, 10000, 20000],           // granatenkiste
    ["OPT_NATO_Sprengstoffkiste", 150000, 10000, 20000],        // sprengstoffkiste
    ["OPT_Box_NATO_WpsSpecial_AT_L1", 200000, 10000, 20000],     // AT Raketenkiste (MRAWS)
	["OPT_Box_NATO_WpsSpecial_AT_L2", 150000, 10000, 20000],     // AT Raketenkiste (PCML)
	["OPT_Box_NATO_WpsSpecial_AT_H1", 350000, 10000, 20000],     // AT Raketenkiste (Titan)
    ["OPT_Box_NATO_WpsSpecial_AA_F", 140000, 10000, 20000],      // AA Raketenkiste
    ["OPT_B_supplyCrate_F", DEF_PROD(0)],                     // Transportkiste (leer)
    ["OPT_B_CargoNet_01_ammo_F", DEF_PROD(5000)],               // Ausrstungskiste
    ["OPT_Box_NATO_WpsSpecial_Diver_F", DEF_PROD(5000)],        // Taucherkiste    
    ["OPT_B_UGV_01_F", DEF_PROD(2000)],                         // UGV Stomper
    ["OPT_B_UAV_01_F", DEF_PROD(0)],                            // Darter AR-2
    ["OPT_FlexibleTank_01_forest_F", DEF_PROD(1000)],           // Treibstoff-Fass
	["OPT_B_Slingload_01_Ammo_F", 0, 0, 0],        			 // Munitionscontainer
    ["OPT_B_Slingload_01_Fuel_F", DEF_PROD(8000)],              // Fuelcontainer
    ["OPT_B_Slingload_01_Repair_F", DEF_PROD(8000)],            // Reparaturcontainer
    ["OPT_B_Slingload_01_Medevac_F", DEF_PROD(0)],              // Lazarettcontainer, 5000            //psycho, dieser container verursacht Probleme mit den Load-Scripts und wird durch den weien Container ersetzt welcher zum Lazarett ausgebaut werden kann
    ["OPT_B_Slingload_01_Repair_radar_F", DEF_PROD(0)],         // Radar Container
    ["Land_Cargo20_white_F", DEF_PROD(0)],                      // weier Container (Lazarett)
    ["Land_BagFence_Round_F", DEF_PROD(0)],                     // runde sandsackecke!
    ["Land_BagFence_Long_F", DEF_PROD(0)],                      // lange sandsackbarriere
    ["Land_BagFence_Short_F", DEF_PROD(0)],                     // kurze sandsackbarriere
    ["Land_HBarrier_5_F", DEF_PROD(0)],                         // H-barrier 5 blocks
    ["Land_HBarrierBig_F", DEF_PROD(0)],                        // H-barrier 4 blocks
    ["Land_HBarrier_3_F", DEF_PROD(0)],                         // H-Barrier 3 blocks
    ["Land_Razorwire_F", DEF_PROD(0)],                          // Stacheldraht
    ["Land_CncBarrier_F", DEF_PROD(0)],                         // beton barriere
    ["Land_CncBarrierMedium_F", DEF_PROD(0)],                   // beton barriere (mittel)
    ["Land_CncBarrierMedium4_F", DEF_PROD(0)],                  // beton barriere (mittel - lang)
    ["Land_Mil_WiredFence_F", DEF_PROD(0)],                     // maschendrahtzaun
    ["CamoNet_BLUFOR_big_Curator_F", DEF_PROD(0)]               // Camonet zum testen!
];

GVAR(nato_static) = 
[
    ["OPT_B_HMG_01_high_F", DEF_PROD(10000)],                   // Stand-MG hoch
    ["OPT_B_HMG_01_F", DEF_PROD(10000)],                        // Stand-MG niedrig
    ["OPT_B_GMG_01_high_F", DEF_PROD(75000)],                   // Stand-GMG hoch
    ["OPT_B_GMG_01_F", DEF_PROD(75000)],                        // Stand-GMG niedrig
    ["OPT_B_static_AA_F", DEF_PROD(50000)],                     // Stand-AA
    ["OPT_B_static_AT_F", DEF_PROD(150000)],                    // Stand-AT
    ["OPT_B_Mortar_01_F", DEF_PROD(110000)],                         // MK6 - Mörser
    ["B_Mortar_01_F", DEF_PROD(0)],                         // MK6 - Mörser
    ["OPT_B_Static_Designator_01_F", DEF_PROD(10000)]           // Remote Designator
];

GVAR(nato_sea) = 
[
    ["OPT_B_Boat_Armed_01_minigun_F", DEF_PROD(10000)],         // Speedboat Minigun
    ["OPT_B_Boat_Transport_01_F", DEF_PROD(500)],               // Assault Boat
    ["OPT_B_SDV_01_F", DEF_PROD(2000)],                         // Submarine
    ["OPT_B_C_Boat_Transport_02_F", DEF_PROD(7000)]             // Rhib unbewaffnet
];

GVAR(csat_vehicles) = 
[
//Vanilla
    ["OPT_O_Quadbike_01_F", DEF_PROD(1500)],                    // Quadbike-
    ["OPT_O_T_LSV_02_unarmed_F", DEF_PROD(4000)],               // Quilin unarmed-
    ["OPT_O_T_LSV_02_armed_F", DEF_PROD(8000)],                 // Quilin armed-
    ["OPT_O_Truck_03_covered_F", DEF_PROD(8000)],               // Tempest Transport-
    ["OPT_O_Truck_03_repair_F", DEF_PROD(10000)],               // Tempest Repair, ersetzt durch container-
    ["OPT_O_Truck_03_medical_F", DEF_PROD(10000)],              // Tempest Medical, ersetzt durch container-
    ["OPT_O_Truck_03_transport_F", DEF_PROD(2000)],             // Tempest (fr Radar, keine Sitze auf Ladeflche)-
    ["OPT_O_G_Offroad_01_F", DEF_PROD(5000)],                      // Pickup, ersetzt durch quilin
    ["OPT_O_G_Offroad_01_armed_F", DEF_PROD(0)],                // Pickup HMG, ersetzt durch quilin
    ["OPT_O_MRAP_02_F", DEF_PROD(5500)],                        // Ifrit-
	["OPT4_O_MRAP_02_hmg_F", DEF_PROD(21000)],                  // Ifrit HMG
    //Tropentarn
    ["OPT_O_T_Quadbike_01_ghex_F", DEF_PROD(0)],                // Quadbike 1500
    ["OPT_O_T_LSV_02_unarmed_F", DEF_PROD(0)],                  // Quilin unarmed 3000
    ["OPT_O_T_LSV_02_armed_F", DEF_PROD(0)],                    // Quilin armed 4000
    ["OPT_O_T_Truck_03_covered_ghex_F", DEF_PROD(0)],           // Tempest Transport 8000
    ["OPT_O_T_Truck_03_repair_ghex_F", DEF_PROD(0)],            // Tempest Repair, ersetzt durch container 10000
    ["OPT_O_T_Truck_03_medical_ghex_F", DEF_PROD(0)],           // Tempest Medical, ersetzt durch container 10000
    ["OPT_O_T_Truck_03_transport_ghex_F", DEF_PROD(0)],         // Tempest (fr Radar, keine Sitze auf Ladeflche) 2000
    ["OPT_O_G_Offroad_01_F", DEF_PROD(0)],                      // Pickup, ersetzt durch quilin
    ["OPT_O_G_Offroad_01_armed_F", DEF_PROD(0)],                // Pickup HMG, ersetzt durch quilin
    ["OPT_O_T_MRAP_02_ghex_F", DEF_PROD(0)],                    // Ifrit 5500
    ["OPT_O_T_MRAP_02_hmg_ghex_F", DEF_PROD(0)],                // Ifrit HMG 26000
    ["OPT_O_T_MRAP_02_gmg_ghex_F", DEF_PROD(0)]                 // Ifrit GMG 31000
];

// Fahrzeuge dieser Liste knnen nicht verkauft werden!
GVAR(csat_vehicles_supply) = 
[
    ["OPT_O_T_Truck_03_ammo_ghex_F", DEF_PROD(0)],              // Tempest Ammo, ersetzt durch container 50000
    ["OPT_O_T_Truck_03_fuel_ghex_F", DEF_PROD(0)],              // Tempest Fuel, ersetzt durch container 10000
    ["OPT_O_Truck_03_ammo_F", DEF_PROD(50000)],                 // Tempest Ammo, ersetzt durch container
    ["OPT_O_Truck_03_fuel_F", DEF_PROD(10000)]                  // Tempest Fuel, ersetzt durch container
];

GVAR(csat_choppers) = 
[
    ["OPT_O_Heli_Light_01_F", DEF_PROD(60000)],                 // BO 105 - testweise eingebaut - textur klären!
    ["OPT_O_Heli_Light_03_unarmed_F", DEF_PROD(0)],             // WY-55 Hellcat
    ["OPT4_O_Heli_light_03_F", DEF_PROD(0)],                    // WY-55 Hellcat
    ["OPT_O_Heli_Light_03_unarmed_green_F", DEF_PROD(0)],       // WY-55 Hellcat - 60000
    ["OPT_O_Heli_Light_03_green_F", DEF_PROD(0)],               // WY-55 Hellcat (DAR)
    ["OPT_O_Heli_light_03_Scalpel_green_F", DEF_PROD(0)],       // WY-55 Hellcat (scalpel)
    ["OPT_O_Heli_light_03_Scalpel_F", DEF_PROD(0)],             // WY-55 Hellcat (scalpel)    
    ["OPT_O_Heli_Light_02_unarmed_F", DEF_PROD(0)],             // PO-30 Orca
    ["OPT_O_Heli_Light_02_unarmed_black_F", DEF_PROD(0)],       // PO-30 Orca
    ["OPT_O_Heli_Light_02_Minigun_F", DEF_PROD(0)],             // PO-30 Orca minigun 90000
    ["OPT_O_Heli_Light_02_Minigun_black_F", DEF_PROD(0)],       // PO-30 Orca minigun 90000
    ["OPT4_O_Heli_Light_02_F", DEF_PROD(80000)],                // PO-30 Orca (Unbewaffnet)
    ["OPT4_O_Heli_Light_02_black_F", DEF_PROD(0)],              // PO-30 Orca (DAR)
    ["OPT_O_Heli_Light_02_F", DEF_PROD(0)],                     // PO-30 Orca (scalpel)
    ["OPT_O_Heli_Light_02_black_F", DEF_PROD(0)],               // PO-30 Orca (scalpel)
    ["OPT_O_Heli_Transport_04_F", DEF_PROD(0)],             // Mi-290 Taru (Lift)
    ["OPT_O_Heli_Transport_04_black_F", DEF_PROD(0)],           // Mi-290 Taru (Lift)
    ["OPT_O_Heli_Transport_04_covered_F", DEF_PROD(110000)],    // Mi-290 Taru (Transport)
    ["OPT_O_Heli_Transport_04_covered_black_F", DEF_PROD(0)],   // Mi-290 Taru (Transport)
    ["OPT_O_Heli_Transport_04_bench_F", DEF_PROD(0)],       // Mi-290 Taru (Bench)
    ["OPT_O_Heli_Transport_04_bench_black_F", DEF_PROD(0)],     // Mi-290 Taru (Bench)
	["OPT_O_Heli_Transport_02_F", DEF_PROD(100000)],            // CH-49 Mohawk (Transport+Lift)
    ["OPT_O_UAV_02_light_F", DEF_PROD(300000)],                 // Ababil unbewaffnet
    ["OPT_O_UAV_02_CAS_F", DEF_PROD(0)],                        // Ababil GBU-12
    ["OPT_O_UAV_02_F", DEF_PROD(0)],                            // Ababil Scalpel
    ["OPT_O_UAV_02_AA_F", DEF_PROD(0)],                         // Ababil AA    
    ["OPT_O_T_VTOL_02_infantry_unarmed_F", DEF_PROD(0)],   		// VTOL Y-32 Xi'an (Inf-Transport)
    ["OPT_O_T_VTOL_02_vehicle_unarmed_F", DEF_PROD(0)],         // VTOL Y-32 Xi'an (Fahrzeug-Transport) 300000
    ["OPT_O_T_VTOL_02_infantry_F", DEF_PROD(0)],                // VTOL Y-32 Xi'an (Inf-Transport)
    ["OPT_O_T_VTOL_02_vehicle_F", DEF_PROD(0)],                 // VTOL Y-32 Xi'an (Fahrzeug-Transport)
    ["OPT_O_T_VTOL_01_vehicle_F", DEF_PROD(0)],            		// VTOL Blackfish (Fahrzeug-Transport)
    ["OPT4_O_Heli_Attack_02_F", DEF_PROD(0)],                   // Mi-48 Kajman    (Unbewaffnet) 200000
    ["OPT4_O_Heli_Attack_02_black_F", DEF_PROD(0)],             // Mi-48 Kajman (Schwarz)
    ["OPT_O_Plane_CAS_02_AA_F", DEF_PROD(0)],                   // To-199 Neophron light - raus
    ["OPT_O_Plane_CAS_02_F", DEF_PROD(0)],                      // To-199 Neophron
    ["OPT_O_Plane_Fighter_03_AA_F_1", DEF_PROD(0)],             // A-143 Buzzard (AA) 200000
    ["OPT_O_Plane_CAS_01_F_1" , DEF_PROD(0)],                   // Wipeout CAS 400000
    ["OPT_O_T_UAV_04_CAS_F", DEF_PROD(0)],                      // KH-3A Fenghuan - noch in arbeit erstma nur testweise mit preis eingebaut
    ["OPT_O_Plane_Fighter_AA_02_F", DEF_PROD(0)]                // To-201 Shikra (AA)
];
    
GVAR(csat_armored) = 
[
//Vanilla
    ["OPT4_O_APC_Wheeled_02_rcws_F", DEF_PROD(25000)],          // MSE-3 Marid - raus wegen bug - 25000
    ["OPT_O_APC_Wheeled_03_cannon_light_F", DEF_PROD(0)],       // AFV-4 Gorgon (Leicht)
    ["OPT4_O_APC_Wheeled_03_cannon_F", DEF_PROD(50000)],       // AFV-4 Gorgon
    ["OPT4_O_APC_Tracked_02_AA_F", DEF_PROD(125000)],           // ZSU-39 Tigris
    ["OPT_O_APC_Tracked_02_cannon_light_F", DEF_PROD(0)],       // BTR-K Kamysh
    ["OPT4_O_APC_Tracked_02_cannon_F", DEF_PROD(60000)],       // BTR-K Kamysh (Titan)
    ["OPT4_O_MBT_02_cannon_F", DEF_PROD(125000)],               // T-100 Varsuk
    ["OPT4_O_MBT_02_arty_F", DEF_PROD(300000)],                 // 2S9 Sochor
    ["OPT_O_Truck_02_MRL_F", DEF_PROD(400000)],                 // 2S9 Sochor    
    ["OPT4_O_MRAP_02_gmg_F", DEF_PROD(0)],                  // Ifrit GMG
	["OPT4_O_LSV_02_AT_F", DEF_PROD(80000)],                    // Quilin AT++++++++++++++++++++++++++ 20000
//Tropentarn
    ["OPT4_O_T_APC_Wheeled_02_rcws_ghex_F", DEF_PROD(0)],       // MSE-3 Marid 50000
    ["OPT_O_APC_Wheeled_03_cannon_light_F", DEF_PROD(0)],       // AFV-4 Gorgon (Leicht) 90000
    ["OPT_O_APC_Wheeled_03_cannon_F", DEF_PROD(0)],             // AFV-4 Gorgon 120000
    ["OPT4_O_T_APC_Tracked_02_AA_ghex_F", DEF_PROD(0)],         // ZSU-39 Tigris 275000
    ["OPT_O_T_APC_Tracked_02_cannon_ghex_light_F", DEF_PROD(0)],// BTR-K Kamysh 120000
    ["OPT4_O_T_APC_Tracked_02_cannon_ghex_F", DEF_PROD(0)],     // BTR-K Kamysh (Titan) 275000
    ["OPT4_O_T_MBT_02_cannon_ghex_F", DEF_PROD(0)],             // T-100 Varsuk 450000
    ["OPT4_O_T_MBT_02_arty_ghex_F", DEF_PROD(0)]                // 2S9 Sochor 400000
];

GVAR(csat_supplies) = 
[
    ["OPT_Box_East_Ammo_F", 40000, 10000, 20000],                           // Munitionskiste
    ["OPT_Box_East_WpsSpecial_F", 60000, 10000, 20000],                     // Munition spezial kiste
    ["OPT_Box_East_Grenades_F", 75000, 10000, 20000],                       // granatenkiste
    ["OPT_CSAT_Sprengstoffkiste", 150000, 10000, 20000],                    // sprengstoffkiste
    ["OPT_Box_East_WpsSpecial_AT_L1", 200000, 10000, 20000],                  // AT Raketenkiste (RPG-42)
	["OPT_Box_East_WpsSpecial_AT_L2", 150000, 10000, 20000],                  // AT Raketenkiste (RPG-7)
	["OPT_Box_East_WpsSpecial_AT_H1", 350000, 10000, 20000],                  // AT Raketenkiste (9M135 Vorona)
    ["OPT_Box_East_WpsSpecial_AA_F", 140000, 10000, 20000],                  // AA Raketenkiste
    ["OPT_O_supplyCrate_F", DEF_PROD(500)],                                 // Transportkiste
    ["OPT_O_CargoNet_01_ammo_F", DEF_PROD(5000)],                           // Ausrstungskiste
    ["OPT_Box_East_WpsSpecial_Diver_F", DEF_PROD(5000)],                    // Taucherkiste
    ["OPT_O_T_UGV_01_ghex_F", DEF_PROD(0)],                                 // UGV Saif    
    ["OPT_O_UGV_01_F", DEF_PROD(2000)],                                     // UGV Saif    
    ["OPT_O_UAV_01_F", DEF_PROD(0)],                                        // Tayran AR-2
    ["OPT_FlexibleTank_01_sand_F", DEF_PROD(1000)],                         // Treibstoff-Fass
    ["OPT_Land_Pod_Heli_Transport_04_fuel_F", DEF_PROD(8000)],              // Fuelcontainer
    ["OPT_Land_Pod_Heli_Transport_04_fuel_black_F", DEF_PROD(0)],           // Fuelcontainer (schwarz)
    ["OPT_Land_Pod_Heli_Transport_04_ammo_F", 0, 0, 0],         // Munitionscontainer
    ["OPT_Land_Pod_Heli_Transport_04_ammo_black_F", DEF_PROD(0)],           // Munitionscontainer (Schwarz)
    ["OPT_Land_Pod_Heli_Transport_04_repair_F", DEF_PROD(8000)],            // Reparaturcontainer - 8000 aktuell raus wegen nix funktional!
    ["OPT_Land_Pod_Heli_Transport_04_repair_black_F", DEF_PROD(0)],         // Reparaturcontainer (schwarz)
    ["OPT_Land_Pod_Heli_Transport_04_repair_black_radar_F", DEF_PROD(0)],   // Radar Container
    ["OPT_Land_Pod_Heli_Transport_04_medevac_F", DEF_PROD(0)],              // Lazarettcontainer, psycho, dieser container verursacht Probleme mit den Load-Scripts und wird durch den weien Container ersetzt welcher zum Lazarett ausgebaut werden kann
    ["Land_Cargo20_white_F", DEF_PROD(0)],                                  // weier Container (Lazarett)
    ["Land_BagFence_Round_F", DEF_PROD(0)],                                 // runde sandsackecke!
    ["Land_BagFence_Long_F", DEF_PROD(0)],                                  // lange sandsackbarriere
    ["Land_BagFence_Short_F", DEF_PROD(0)],                                 // kurze sandsackbarriere
    ["Land_HBarrier_5_F", DEF_PROD(0)],                                     // H-barrier 5 blocks
    ["Land_HBarrierBig_F", DEF_PROD(0)],                                    // H-barrier 4 blocks
    ["Land_HBarrier_3_F", DEF_PROD(0)],                                     // H-Barrier 3 blocks
    ["Land_Razorwire_F", DEF_PROD(0)],                                      // Stacheldraht
    ["Land_CncBarrier_F", DEF_PROD(0)],                                     // beton barriere
    ["Land_CncBarrierMedium_F", DEF_PROD(0)],                               // beton barriere (mittel)
    ["Land_CncBarrierMedium4_F", DEF_PROD(0)],                              // beton barriere (mittel - lang)
    ["Land_Mil_WiredFence_F", DEF_PROD(0)],                                 // maschendrahtzaun
    ["CamoNet_BLUFOR_big_Curator_F", DEF_PROD(0)]                           // Camonet zum testen!
];

GVAR(csat_static) = 
[
    ["OPT_O_HMG_01_high_F", DEF_PROD(10000)],                       // Stand-MG hoch
    ["OPT_O_HMG_01_F", DEF_PROD(10000)],                            // Stand-MG niedrig
    ["OPT_O_GMG_01_high_F", DEF_PROD(75000)],                       // Stand-GMG hoch
    ["OPT_O_GMG_01_F", DEF_PROD(75000)],                            // Stand-GMG niedrig
    ["OPT_O_static_AA_F", DEF_PROD(50000)],                         // Stand-AA
    ["OPT_O_static_AT_F", DEF_PROD(150000)],                        // Stand-AT
    ["OPT_O_Mortar_01_F", DEF_PROD(110000)],                         // MK6 Mrser
    ["B_Mortar_01_F", DEF_PROD(0)],                            // MK6 - Mrser
    ["OPT_O_Static_Designator_02_F", DEF_PROD(10000)]               // Remote Designator
];

GVAR(csat_sea) = 
[
    ["OPT_O_Boat_Transport_01_F", DEF_PROD(500)],                   // Assault Boat
    ["OPT_O_Boat_Armed_01_hmg_F", DEF_PROD(14000)],                 // Speedboat HMG
    ["OPT_O_C_Boat_Transport_02_F", DEF_PROD(7000)],                // rhib unbewaffnet
    ["OPT_O_SDV_01_F", DEF_PROD(2000)]                              // Submarine
];

GVAR(allNato) = GVAR(nato_vehicles) +
GVAR(nato_vehicles_supply) +
GVAR(nato_choppers) +
GVAR(nato_armored) +
GVAR(nato_supplies) +
GVAR(nato_static) +
GVAR(nato_sea);

GVAR(allCsat) = GVAR(csat_vehicles) +
GVAR(csat_vehicles_supply) +
GVAR(csat_choppers) +
GVAR(csat_armored) +
GVAR(csat_supplies) +
GVAR(csat_static) + 
GVAR(csat_sea);

GVAR(all) = GVAR(allNato) + GVAR(allCsat);

//Waffenkonfiguation
//Raketen Heli Nato
//[Magazinename, Waffenname, Preis/Schuss, Preis Magazin, Boxname, Waffenkontrolle Pilot KHS]
GVAR(raktenHeliWest) =  
[
    ["OPT_PylonRack_1Rnd_Missile_AGM_02_F", "OPT_Missile_AGM_02_Plane_CAS_01_F", 150000, 150000, "1xMacer", 0],  // 0.1xMacer
    ["OPT_PylonMissile_Missile_AMRAAM_D_INT_x1", "OPT_weapon_AMRAAMLauncher", 100000, 100000, "1xAMRAAM", 0],  //      1.1xAMRAAM
    ["OPT_PylonRack_1Rnd_LG_scalpel", "OPT_missiles_SCALPEL", 200000, 200000, "1xScalpel", 0],  //      2.1xScalpel AH9, Orca
    ["OPT_PylonRack_3Rnd_LG_scalpel", "OPT_missiles_SCALPEL", 200000, 600000, "3xScalpel", 0],  //      3.3xScalpel
    ["OPT_PylonRack_12Rnd_missiles", "OPT_missiles_DAR", 4000, 48000, "12xDAR", -1],  //      4.12xDAR
    ["OPT_PylonRack_12Rnd_PG_missiles", "OPT_missiles_DAGR", 10000, 120000, "12xDAGR", -1],  //      5.12xDAGR
    ["OPT_PylonRack_19Rnd_Rocket_Skyfire", "OPT_rockets_Skyfire", 2500, 47500, "19xSkyfire", -1],  //      6.19xSkyfire
    ["OPT_PylonRack_4Rnd_LG_scalpel", "OPT_missiles_SCALPEL", 200000, 800000, "4xScalpel", 0],  //      7.4xScalpel
    ["PylonRack_7Rnd_Rocket_04_HE_F", "OPT_Rocket_04_HE_Plane_CAS_01_F", 2500, 17500, "7xShrieker HE", -1],  //      8.7xShrieker HE
    ["PylonRack_7Rnd_Rocket_04_AP_F", "OPT_Rocket_04_AP_Plane_CAS_01_F", 5000, 35000, "7xShrieker AP", -1],  //      9.7xShrieker AP
    ["PylonRack_20Rnd_Rocket_03_HE_F", "OPT_Rocket_03_HE_Plane_CAS_02_F", 2500, 50000, "20xTratnyr HE", -1],  //      10.20xTratnyr HE
    ["PylonRack_20Rnd_Rocket_03_AP_F", "OPT_Rocket_03_AP_Plane_CAS_02_F", 5000, 100000, "20xTratnyr AP", -1],  //      11.20xTratnyr AP
    ["OPT_PylonMissile_1Rnd_LG_scalpel", "OPT_missiles_SCALPEL", 200000, 200000, "1xScalpel", 0],  //      12.1xScalpel Hellcat, Kajman, Blackfoot
    ["OPT_PylonRack_1Rnd_AAA_missiles", "OPT_missiles_ASRAAM", 25000, 25000, "1xASRAAM", 0],  //      13.1xASRAAM AH9, Orca, Hellcat
    ["OPT_PylonRack_Missile_AGM_02_x1", "OPT_weapon_AGM_65Launcher", 150000, 150000, "1xMacer II", 0],  // 14.1xMacer II
    ["OPT_PylonMissile_1Rnd_AAA_missiles", "OPT_missiles_ASRAAM", 25000, 25000, "1xASRAAM", 0]  //      15.1xASRAAM Blackfoot
];

//Gun Heli Nato
//[Magazinename, Waffenname, Preis/Schuss, Preis Magazin, Boxname]
GVAR(gunHeliWest) = 
[
    ["5000Rnd_762x51_Yellow_Belt", "OPT_M134_minigun", 10, 50000, "5000x7.62 mm"],       // 0.5000x7.62 mm Minigun 
    ["1000Rnd_65x39_Belt_Yellow", "LMG_Minigun_heli", 10, 10000, "1000x6.5 mm mm"],  // 1.1000x6.5 mm mm Minigun 
    ["2000Rnd_65x39_Belt_Yellow", "LMG_Minigun_heli", 10, 20000, "2000x6.5 mm mm"],  // 2.2000x6.5 mm mm Minigun 
    ["1000Rnd_20mm_shells", "OPT_gatling_20mm", 100, 100000, "1000x20 mm"],      // 3.1000x20 mm Minigun
    ["2000Rnd_20mm_shells", "OPT_gatling_20mm", 100, 200000, "2000x20 mm"],      // 4.2000x20 mm Minigun 
    ["300Rnd_20mm_shells", "OPT_gatling_20mm", 100, 30000, "300x20 mm"],         // 5.300x20 mm Minigun 
    ["250Rnd_30mm_HE_shells", "OPT_gatling_30mm", 300, 50000, "250x30 mm HE"],   // 6.250x30 mm HE Cannon Caseless 
    ["250Rnd_30mm_APDS_shells", "OPT_gatling_30mm", 200, 75000, "250x30 mm APDS"]// 7.250x30 mm APSD Cannon Caseless 
];

//Gun Fahrzeuge Nato
//[Magazinename, Waffenname, Preis/Schuss, Preis Magazin, Boxname]
GVAR(gunVehWest) = 
[
    ["500Rnd_127x99_mag", "HMG_127", 80, 40000, "500x12.7 mm"],  // 0.500x12.7 mm AA MG
    ["200Rnd_127x99_mag", "HMG_127", 80, 16000, "200x12.7 mm"],  // 1.200x12.7 mm AA MG
    ["100Rnd_127x99_mag", "HMG_127", 80, 8000, "100x12.7 mm"],  // 2.100x12.7 mm AA MG
    ["2000Rnd_762x51_Belt", "LMG_coax", 10, 20000, "2000x7.62 mm"],  // 3.2000x7.62 mm LMG
    ["1000Rnd_762x51_Belt", "LMG_coax", 10, 10000, "1000x7.62 mm"],  // 4.1000x7.62 mm LMG
    ["2000Rnd_65x39_Belt", "LMG_RCWS", 7, 14000, "2000x6.5 mm"],  // 5.2000x6.5 mm LMG
    ["1000Rnd_65x39_Belt", "LMG_RCWS", 7, 7000, "1000x6.5 mm"],  // 6.1000x6.5 mm LMG
    ["200Rnd_40mm_G_belt", "GMG_40mm", 1000, 200000, "200x40 mm HE Grenade"],  //  7.200x40 mm HE Grenade
    ["96Rnd_40mm_G_belt", "GMG_40mm", 1000, 96000, "96x40 mm HE Grenade"],  //  8.96x40 mm HE Grenade 
    ["32Rnd_40mm_G_belt", "GMG_40mm", 1000, 32000, "32x40 mm HE Grenade"],  //  9.32x40 mm HE Grenade
    ["200Rnd_20mm_G_belt", "GMG_20mm", 250, 50000, "200x20 mm HE Grenade"],  //  10.200x20 mm HE Grenade
    ["40Rnd_20mm_g_belt", "GMG_20mm", 250, 10000, "40x20 mm HE Grenade"],  //  11.40x20 mm HE Grenade
    ["140Rnd_30mm_MP_shells", "OPT_autocannon_30mm_CTWS", 100, 14000, "140x30 mm HE"],  //  12.140x30 mm HE
    ["60Rnd_30mm_APFSDS_shells", "OPT_autocannon_30mm_CTWS", 400, 24000, "60x30 mm APFSDS"],  //  13.60x30 mm APFSDS
    ["60Rnd_40mm_GPR_shells", "OPT_autocannon_40mm_CTWS", 200, 12000, "60x40 mm HE"],  //  14.60x40 mm HE
    ["40Rnd_40mm_APFSDS_shells", "OPT_autocannon_40mm_CTWS", 700, 28000, "40x40 mm APFSDS"],  //  15.40x40 mm APFSDS
    ["2Rnd_GAT_missiles", "OPT_missiles_titan", 50000, 100000, "2xTitan AT"],  //  16.2xTitan AT  
    ["1Rnd_GAT_missiles", "OPT_missiles_titan_static", 50000, 50000, "1xTitan AT"],  //  17.1xTitan AT
    ["SPG9_HEAT", "launcher_SPG9", 25000, 25000, "1xSPG-9 HEAT"],  //  18.1xSPG-9 HEAT
    ["SPG9_HE", "launcher_SPG9", 1000, 1000, "1xSPG-9 HE"],  //  19.1xSPG-9 HE
    ["OPT_680Rnd_35mm_AA_shells_Tracer_Green", "OPT_autocannon_35mm", 100, 68000, "680xFlak 35 mm"],  //  20.680xFlak 35 mm
    ["OPT_1200Rnd_35mm_AA_shells_Tracer_Green", "OPT_autocannon_35mm", 100, 120000, "1200xFlak 35 mm"],  //  21.1200xFlak 35 mm
    ["4Rnd_Titan_long_missiles", "OPT_missiles_titan_AA", 12500, 50000, "4xTitan AA"],  //  22.4xTitan AA
    ["2Rnd_Titan_long_missiles", "OPT_missiles_titan_AA", 12500, 25000, "2xTitan AA"],  //  23.2xTitan AA
    ["32Rnd_120mm_APFSDS_shells", "cannon_120mm", 5000, 160000, "32x120mm APFSDS"],  //  24.32x120mm APFSDS
    ["30Rnd_120mm_HE_shells", "cannon_120mm", 3000, 90000, "30x120mm HE"],  //  25.30x120mm HE
    ["20Rnd_120mm_HEAT_MP", "cannon_120mm", 4500, 90000, "20x120mm HEAT"],  //  26.20x120mm HEAT
    ["20Rnd_120mm_APFSDS_shells", "cannon_120mm", 5000, 100000, "20x120mm APFSDS"],  //  27.20x120mm APFSDS
    ["16Rnd_120mm_HE_shells", "cannon_120mm", 3000, 48000, "16x120mm HE"],  //  28.16x120mm HE
    ["12Rnd_120mm_HEAT_MP", "cannon_120mm", 4500, 54000, "12x120mm HEAT"],  //  29.12x120mm HEAT
    ["12Rnd_120mm_APFSDS_shells", "cannon_120mm", 5000, 60000, "12x120mm APFSDS"],  //  30.12x120mm APFSDS
    ["8Rnd_120mm_HE_shells", "cannon_120mm", 3000, 24000, "8x120mm HE"],  //  31.8x120mm HE
    ["8Rnd_120mm_HEAT_MP", "cannon_120mm", 4500, 36000, "8x120mm HEAT"],  //  32.8x120mm HEAT
    ["24Rnd_125mm_APFSDS", "cannon_125mm", 6000, 144000, "24x125mm APFSDS"],  //  33.20x125mm APFSDS
    ["12Rnd_125mm_HE", "cannon_125mm", 3500, 42000, "12x125mm HE"],  //  34.12x125mm HE
    ["12Rnd_125mm_HEAT", "cannon_125mm", 5000, 60000, "12x125mm HEAT"],  //  35.12x125mm HEAT
    ["16Rnd_125mm_APFSDS", "cannon_125mm", 6000, 96000, "16x125mm APFSDS"],  // 36.16x125mm APFSDS
    ["8Rnd_125mm_HE", "cannon_125mm", 3500, 28000, "8x125mm HE"],  //  37.8x125mm HE
    ["4Rnd_120mm_cannon_missiles", "cannon_120mm", 50000, 200000, "4x120mm ATGM"],  // 38.4x120mm ATGM
    ["4Rnd_125mm_cannon_missiles", "cannon_125mm", 50000, 200000, "4x125mm ATGM"],  //  39.4x125mm ATGM
    ["OPT_32Rnd_155mm_Mo_shells", "OPT_mortar_155mm_AMOS", 5000, 160000, "32x155 mm HE"],  //  40.32x155 mm HE
    ["OPT_2Rnd_155mm_Mo_Cluster", "OPT_mortar_155mm_AMOS", 20000, 40000, "2xCluster"],  //  41.2xCluster Shells
    ["6Rnd_155mm_Mo_smoke", "OPT_mortar_155mm_AMOS", 500, 3000, "6xSmoke"],  //  42.6xSmoke 
    ["Vorona_HEAT", "missiles_Vorona", 500, 250000, "1xVorona-HEAT"],  //  43.vorona-test KalleK 
    ["Vorona_HE", "missiles_Vorona", 500, 150000, "1xVorona-HE"],  //  44.vorona-test KalleK 
	["28Rnd_120mm_APFSDS_shells", "cannon_120mm", 5000, 140000, "28x120mm APFSDS"],  //  45.28x120mm APFSDS
	["20Rnd_125mm_APFSDS", "cannon_125mm", 6000, 120000, "20x125mm APFSDS"],  //  46.20x125mm APFSDS
	["12Rnd_120mm_HE_shells", "cannon_120mm", 3000, 36000, "12x120mm HE"]  //  47.12x120mm HE

];

//Raketen CSAT
//[Magazinename, Waffenname, Preis/Schuss, Preis Magazin, Boxname, Waffenkontrolle Pilot KHS]
GVAR(raktenHeliEast) = 
[
    ["OPT_PylonRack_1Rnd_Missile_AGM_02_F", "OPT_Missile_AGM_02_Plane_CAS_01_F", 150000, 150000, "1xMacer", 0],  // 0.1xMacer
    ["OPT_PylonMissile_Missile_AMRAAM_D_INT_x1", "OPT_weapon_AMRAAMLauncher", 100000, 100000, "1xAMRAAM", 0],  //      1.1xAMRAAM
    ["OPT_PylonRack_1Rnd_LG_scalpel", "OPT_missiles_SCALPEL", 200000, 200000, "1xScalpel", 0],  //      2.1xScalpel AH9, Orca
    ["OPT_PylonRack_3Rnd_LG_scalpel", "OPT_missiles_SCALPEL", 200000, 600000, "3xScalpel", 0],  //      3.3xScalpel
    ["OPT_PylonRack_12Rnd_missiles", "OPT_missiles_DAR", 4000, 48000, "12xDAR", -1],  //      4.12xDAR
    ["OPT_PylonRack_12Rnd_PG_missiles", "OPT_missiles_DAGR", 10000, 120000, "12xDAGR", -1],  //      5.12xDAGR
    ["OPT_PylonRack_19Rnd_Rocket_Skyfire", "OPT_rockets_Skyfire", 2500, 47500, "19xSkyfire", -1],  //      6.19xSkyfire
    ["OPT_PylonRack_4Rnd_LG_scalpel", "OPT_missiles_SCALPEL", 200000, 800000, "4xScalpel", 0],  //      7.4xScalpel
    ["PylonRack_7Rnd_Rocket_04_HE_F", "OPT_Rocket_04_HE_Plane_CAS_01_F", 2500, 17500, "7xShrieker HE", -1],  //      8.7xShrieker HE
    ["PylonRack_7Rnd_Rocket_04_AP_F", "OPT_Rocket_04_AP_Plane_CAS_01_F", 5000, 35000, "7xShrieker AP", -1],  //      9.7xShrieker AP
    ["PylonRack_20Rnd_Rocket_03_HE_F", "OPT_Rocket_03_HE_Plane_CAS_02_F", 2500, 50000, "20xTratnyr HE", -1],  //      10.20xTratnyr HE
    ["PylonRack_20Rnd_Rocket_03_AP_F", "OPT_Rocket_03_AP_Plane_CAS_02_F", 5000, 100000, "20xTratnyr AP", -1],  //      11.20xTratnyr AP
    ["OPT_PylonMissile_1Rnd_LG_scalpel", "OPT_missiles_SCALPEL", 200000, 200000, "1xScalpel", 0],  //      12.1xScalpel Hellcat, Kajman, Blackfoot
    ["OPT_PylonRack_1Rnd_AAA_missiles", "OPT_missiles_ASRAAM", 25000, 25000, "1xASRAAM", 0],  //      13.1xASRAAM AH9, Orca, Hellcat
    ["OPT_PylonMissile_Missile_AGM_KH25_x1", "OPT_weapon_AGM_KH25Launcher", 25000, 25000, "1xAGM KH25", 0],  //      14.1xKH25 Kedge
    ["OPT_PylonRack_1Rnd_Missile_AA_03_F", "OPT_Missile_AA_03_F", 25000, 25000, "1xSahr-3", 0]  //      15.1xSahr-3 Kajman
];

//Gun CSAT
//[Magazinename, Waffenname, Preis/Schuss, Preis Magazin, Boxname]
GVAR(gunHeliEast) = 
[
    ["5000Rnd_762x51_Yellow_Belt", "OPT_M134_minigun", 10, 50000, "5000x7.62 mm"],  // 0.5000x7.62 mm Minigun 
    ["1000Rnd_65x39_Belt_Yellow", "LMG_Minigun_heli", 10, 10000, "1000x6.5 mm"],  // 1.1000x6.5 mm Minigun 
    ["2000Rnd_65x39_Belt_Yellow", "LMG_Minigun_heli", 10, 20000, "2000x6.5 mm"],  // 2.2000x6.5 mm Minigun 
    ["1000Rnd_20mm_shells", "OPT_gatling_20mm", 100, 100000, "1000x20 mm"],  // 3.1000x20 mm Minigun
    ["2000Rnd_20mm_shells", "OPT_gatling_20mm", 100, 200000, "2000x20 mm"],  // 4.2000x20 mm Minigun 
    ["300Rnd_20mm_shells", "OPT_gatling_20mm", 100, 30000, "300x20 mm"],  //      5.300x20 mm Minigun 
    ["250Rnd_30mm_HE_shells", "OPT_gatling_30mm", 300, 50000, "250x30 mm HE"],  // 6.250x30 mm HE Cannon Caseless 
    ["250Rnd_30mm_APDS_shells", "OPT_gatling_30mm", 200, 75000, "250x30 mm APDS"],  // 7.250x30 mm APSD Cannon Caseless 
    ["OPT_PylonWeapon_300Rnd_20mm_shells", "OPT_Twin_Cannon_20mm", 100, 30000, "300xTwin 20mm"]  // 8.300xTwin 20mm Cannon 
];

//Gun Fahrzeuge CSAT
//[Magazinename, Waffenname, Preis/Schuss, Preis Magazin, Boxname]
GVAR(gunVehEast) = 
[
    ["500Rnd_127x99_mag", "HMG_127", 80, 20000, "500x12.7 mm"],  // 0.500x12.7 mm AA MG
    ["200Rnd_127x99_mag", "HMG_127", 80, 16000, "200x12.7 mm"],  // 1.200x12.7 mm AA MG
    ["100Rnd_127x99_mag", "HMG_127", 80, 8000, "100x12.7 mm"],  // 2.100x12.7 mm AA MG
    ["2000Rnd_762x51_Belt", "LMG_coax", 10, 20000, "2000x7.62 mm"],  // 3.2000x7.62 mm LMG
    ["1000Rnd_762x51_Belt", "LMG_coax", 10, 10000, "1000x7.62 mm"],  // 4.1000x7.62 mm LMG
    ["2000Rnd_65x39_Belt", "LMG_RCWS", 7, 14000, "2000x6.5 mm"],  // 5.2000x6.5 mm LMG
    ["1000Rnd_65x39_Belt", "LMG_RCWS", 7, 7000, "1000x6.5 mm"],  // 6.1000x6.5 mm LMG
    ["200Rnd_40mm_G_belt", "GMG_40mm", 1000, 200000, "200x40 mm HE Grenade"],  //  7.200x40 mm HE Grenade
    ["96Rnd_40mm_G_belt", "GMG_40mm", 1000, 96000, "96x40 mm HE Grenade"],  //  8.96x40 mm HE Grenade 
    ["32Rnd_40mm_G_belt", "GMG_40mm", 1000, 32000, "32x40 mm HE Grenade"],  //  9.32x40 mm HE Grenade
    ["200Rnd_20mm_G_belt", "GMG_20mm", 250, 50000, "200x20 mm HE Grenade"],  //  10.200x20 mm HE Grenade
    ["40Rnd_20mm_g_belt", "GMG_20mm", 250, 10000, "40x20 mm HE Grenade"],  //  11.40x20 mm HE Grenade
    ["140Rnd_30mm_MP_shells", "OPT_autocannon_30mm_CTWS", 100, 14000, "140x30 mm HE"],  //  12.140x30 mm HE
    ["60Rnd_30mm_APFSDS_shells", "OPT_autocannon_30mm_CTWS", 400, 24000, "60x30 mm APFSDS"],  //  13.60x30 mm APFSDS
    ["60Rnd_40mm_GPR_shells", "OPT_autocannon_40mm_CTWS", 200, 12000, "60x40 mm HE"],  //  14.60x40 mm HE
    ["40Rnd_40mm_APFSDS_shells", "OPT_autocannon_40mm_CTWS", 700, 28000, "40x40 mm APFSDS"],  //  15.40x40 mm APFSDS
    ["2Rnd_GAT_missiles", "OPT_missiles_titan", 50000, 100000, "2xTitan AT"],  //  16.2xTitan AT  					
    ["1Rnd_GAT_missiles", "OPT_missiles_titan_static", 50000, 50000, "1xTitan AT"],  //  17.1xTitan AT					
    ["SPG9_HEAT", "launcher_SPG9", 25000, 25000, "1xSPG-9 HEAT"],  //  18.1xSPG-9 HEAT
    ["SPG9_HE", "launcher_SPG9", 1000, 1000, "1xSPG-9 HE"],  //  19.1xSPG-9 HE
    ["OPT_680Rnd_35mm_AA_shells_Tracer_Red", "OPT_autocannon_35mm", 100, 68000, "680xFlak 35 mm"],  //  20.680xFlak 35 mm
    ["OPT_1200Rnd_35mm_AA_shells_Tracer_Red", "OPT_autocannon_35mm", 100, 120000, "1200xFlak 35 mm"],  //  20.1200xFlak 35 mm
    ["4Rnd_Titan_long_missiles", "OPT_missiles_titan_AA", 12500, 50000, "4xTitan AA"],  //  22.4xTitan AA				
    ["2Rnd_Titan_long_missiles", "OPT_missiles_titan_AA", 12500, 25000, "2xTitan AA"],  //  23.2xTitan AA				
    ["32Rnd_120mm_APFSDS_shells", "cannon_120mm", 5000, 160000, "32x120mm APFSDS"],  //  24.32x120mm APFSDS
    ["30Rnd_120mm_HE_shells", "cannon_120mm", 3000, 90000, "30x120mm HE"],  //  25.30x120mm HE
    ["20Rnd_120mm_HEAT_MP", "cannon_120mm", 4500, 90000, "20x120mm HEAT"],  //  26.20x120mm HEAT
    ["20Rnd_120mm_APFSDS_shells", "cannon_120mm", 5000, 100000, "20x120mm APFSDS"],  //  27.20x120mm APFSDS
    ["16Rnd_120mm_HE_shells", "cannon_120mm", 3000, 48000, "16x120mm HE"],  //  28.16x120mm HE
    ["12Rnd_120mm_HEAT_MP", "cannon_120mm", 4500, 54000, "12x120mm HEAT"],  //  29.12x120mm HEAT
    ["12Rnd_120mm_APFSDS_shells", "cannon_120mm", 5000, 60000, "12x120mm APFSDS"],  //  30.12x120mm APFSDS
    ["8Rnd_120mm_HE_shells", "cannon_120mm", 3000, 24000, "8x120mm HE"],  //  31.8x120mm HE
    ["8Rnd_120mm_HEAT_MP", "cannon_120mm", 4500, 36000, "8x120mm HEAT"],  //  32.8x120mm HEAT
    ["24Rnd_125mm_APFSDS", "cannon_125mm", 6000, 144000, "24x125mm APFSDS"],  //  33.24x125mm APFSDS
    ["12Rnd_125mm_HE", "cannon_125mm", 3500, 42000, "12x125mm HE"],  //  34.12x125mm HE
    ["12Rnd_125mm_HEAT", "cannon_125mm", 5000, 60000, "12x125mm HEAT"],  //  35.12x125mm HEAT
    ["16Rnd_125mm_APFSDS", "cannon_125mm", 6000, 96000, "16x125mm APFSDS"],  // 36.16x125mm APFSDS
    ["8Rnd_125mm_HE", "cannon_125mm", 3500, 28000, "8x125mm HE"],  //  37.8x125mm HE
    ["4Rnd_120mm_cannon_missiles", "cannon_120mm", 50000, 200000, "4x120mm ATGM"],  // 38.4x120mm ATGM
    ["4Rnd_125mm_cannon_missiles", "cannon_125mm", 50000, 200000, "4x125mm ATGM"],  //  39.4x125mm ATGM
    ["OPT_32Rnd_155mm_Mo_shells", "OPT_mortar_155mm_AMOS", 5000, 160000, "32x155 mm HE"],  //  40.32x155 mm HE
    ["OPT_2Rnd_155mm_Mo_Cluster", "OPT_mortar_155mm_AMOS", 20000, 40000, "2xCluster"],  //  41.2xCluster Shells
    ["6Rnd_155mm_Mo_smoke", "OPT_mortar_155mm_AMOS", 500, 3000, "6xSmoke"],  //  42.6xSmoke 
    ["Vorona_HEAT", "missiles_Vorona", 500, 250000, "1xVorona-HEAT"],  //  43.vorona-test KalleK 
    ["Vorona_HE", "missiles_Vorona", 500, 150000, "1xVorona-HE"],  //  44.vorona-test KalleK 
	["28Rnd_120mm_APFSDS_shells", "cannon_120mm", 5000, 140000, "28x120mm APFSDS"],  //  45.28x120mm APFSDS
	["20Rnd_125mm_APFSDS", "cannon_125mm", 6000, 120000, "20x125mm APFSDS"],  //  46.20x125mm APFSDS
	["12Rnd_120mm_HE_shells", "cannon_120mm", 3000, 36000, "12x120mm HE"]  //  47.12x120mm HE

];

//Preis Tarnung, Drahtkäfig, Datalinksystem
GVAR(preisTarnung) = 10000;
GVAR(preisDrahtkafig) = 10000;
GVAR(preisDatalink) = 10000;

//West Einheiten
//[[Raketen], [Gun], [Drahtkäfig, Tranung], [Datalink], [Raketenmagzine, Gunmagazine]]
GVAR(pawnee) = [[0, 4, 8, 9, 10, 11], [0, 1, 2], [0, 0], [1], [2, 2]];    
GVAR(hellcat1) = [[0,4, 8, 9, 10, 11], [0, 1, 2], [0, 0], [1], [2, 2]]; 
GVAR(blackfoot) = [[0, 1, 4, 6, 8, 9, 10, 11, 12, 15], [3, 4, 5, 6, 7], [0, 0], [1], [4, 2]];
GVAR(hunterHMG) = [[], [0, 1, 2], [0, 0], [1], [0, 4]];
GVAR(hunterGMG) = [[], [7, 8, 9, 10, 11], [0, 0], [1], [0, 4]];
GVAR(prowlerHMG) = [[], [0, 1, 2, 3, 4, 5, 6], [0, 0], [1], [0, 4]];
GVAR(prowlerAT) = [[], [16, 18, 19, 43, 44], [0, 0], [1], [0, 4]];
GVAR(panther) = [[], [0, 1, 2, 7, 8, 9, 10, 11], [0, 0], [1], [0, 4]]; 
GVAR(marshall) = [[], [3, 4, 5, 6, 12, 13], [0, 0], [1], [0, 4]]; 
GVAR(mora) = [[], [3, 4, 5, 6, 14, 15], [0, 0], [1], [0, 4]]; 
GVAR(cheetah) = [[], [20, 22], [0, 0], [1], [0, 4]];
GVAR(slammerUp) = [[], [3, 4, 5, 6, 45, 27, 30, 28, 47, 31, 29, 32, 38], [0, 0], [1], [0, 4]];
GVAR(scorcher) = [[], [40, 41, 42], [0, 0], [1], [0, 4]];

//EAST Einheiten
GVAR(orca) = [[0, 4, 8, 9, 10, 11], [0, 1, 2], [0, 0], [1], [2, 2]]; 
GVAR(hellcat)  =  [[0, 4, 8, 9, 10, 11], [0, 1, 2], [0, 0], [1], [2, 2]]; 
GVAR(kajman) = [[0, 1, 4, 6, 8, 9, 10, 11, 12, 15], [3, 4, 5, 6, 7], [0, 0], [1], [4, 2]];
GVAR(irifHMG) = [[], [0, 1, 2], [0, 0], [1], [0, 4]];
GVAR(irifGMG) = [[], [7, 8, 9, 10, 11], [0, 0], [1], [0, 4]];
GVAR(striderGMG)  =  [[], [7, 8, 9, 10, 11], [0, 0], [1], [0, 4]];
GVAR(quilinHMG) = [[], [0, 1, 2, 3, 4, 5, 6], [0, 0], [1], [0, 4]];
GVAR(quilinAT) = [[], [16, 18, 19, 43, 44], [0, 0], [1], [0, 4]];
GVAR(marid) = [[], [0, 1, 2, 3, 7, 8, 9, 10, 11], [0, 0], [1], [0, 4]]; 
GVAR(gorgon) = [[], [3, 4, 5, 6, 12, 13], [0, 0], [1], [0, 4]]; 
GVAR(kamysh) = [[], [3, 4, 5, 6, 14, 15, 16, 18, 19], [0, 0], [1], [0, 4]]; 
GVAR(tigris) = [[], [20, 22], [0, 0], [1], [0, 4]];
GVAR(varsuk) = [[], [3, 4, 5, 6, 33, 46, 36, 34, 37, 35, 39], [0, 0], [1], [0, 4]];
GVAR(sochor) = [[], [40, 41, 42], [0, 0], [1], [0, 4]];

//Fahrzeuge die zugelassen sind
GVAR(vehClassWestWW) = 
[
    "OPT4_B_MBT_03_cannon_F",
    "OPT4_B_MRAP_01_gmg_F",
    "OPT4_B_MRAP_01_hmg_F",
    "OPT4_B_Heli_Attack_01_F",
    "OPT4_B_Heli_Attack_01_F",
    "OPT4_B_Heli_Light_01_armed_F",
    "OPT4_B_APC_tracked_03_cannon_F",
    "OPT4_B_APC_Wheeled_01_cannon_F",
    "OPT4_B_APC_Wheeled_01_cannon_F",
    "OPT4_B_APC_Tracked_01_rcws_F",
    "OPT4_B_APC_Tracked_01_AA_F",
    "OPT4_B_MBT_01_cannon_F",
    "OPT4_B_MBT_01_TUSK_F",
    "OPT4_B_MBT_01_arty_F",
    "OPT4_B_MRAP_03_gmg_F",
    "OPT4_B_Heli_light_03_green_F",
    "OPT4_B_MRAP_03_gmg_F",
    "OPT4_B_LSV_01_AT_F"
];

GVAR(vehClassEastWW) = 
[
    "OPT4_O_MRAP_02_hmg_F", 
    "OPT4_O_MRAP_02_gmg_F",
    "OPT4_O_Heli_light_03_F",
    "OPT4_O_Heli_Light_02_F",
    "OPT4_O_Heli_Light_02_black_F",
    "OPT4_O_Heli_Attack_02_F",
    "OPT4_O_Heli_Attack_02_black_F",
    "OPT4_O_APC_Wheeled_02_rcws_F",
    "OPT4_O_T_APC_Wheeled_02_rcws_ghex_F",
    "OPT4_O_APC_Tracked_02_cannon_F",
    "OPT4_O_T_APC_Tracked_02_cannon_ghex_F",
    "OPT4_O_APC_Tracked_02_AA_F",
    "OPT4_O_T_APC_Tracked_02_AA_ghex_F",
    "OPT4_O_MBT_02_cannon_F",
    "OPT4_O_T_MBT_02_cannon_ghex_F",
    "OPT4_O_MBT_02_arty_F",
    "OPT4_O_T_MBT_02_arty_ghex_F",
    "OPT4_O_APC_Wheeled_03_cannon_F",
    "OPT4_O_LSV_02_AT_F"
];

GVAR(textSlotWest) = 
[
    "OPT_NATO_Offizier"
];

GVAR(textSlotEast) = 
[
    "OPT_CSAT_Offizier"
];

//West Einheiten Loadouts 
//[[Raketen], [Gun], [Drahtkäfig, Tranung], [Datalink]] 
GVAR(pawneeLoadout) = [[4,4], [0], [0, 0], [0]];    
GVAR(hellcat1Loadout) = [[4,4], [0], [0, 0], [0]]; 
GVAR(blackfootLoadout) = [[4 , 4, 12, 15], [3], [0, 0], [0]];
GVAR(hunterHMGLoadout) = [[], [0], [0, 0], [0]];
GVAR(hunterGMGLoadout) = [[], [7], [0, 0], [0]];
GVAR(prowlerHMGLoadout) = [[], [0], [0, 0], [0]];
GVAR(prowlerATLoadout) = [[], [16, 16], [0, 0], [0]];
GVAR(pantherLoadout) = [[], [0, 11], [0, 0], [0]]; 
GVAR(marshallLoadout) = [[], [3, 12, 13], [0, 0], [0]]; 
GVAR(moraLoadout) = [[], [3, 14, 15], [0, 0], [0]]; 
GVAR(cheetahLoadout) = [[], [20, 22], [0, 0], [0]];
GVAR(slammerUpLoadout) = [[], [3, 45, 28, 29], [0, 0], [0]];
GVAR(scorcherLoadout) = [[], [40,40], [0, 0], [0]];

//EAST Einheiten Loadouts
GVAR(orcaLoadout) = [[4,4], [0], [0, 0], [0]]; 
GVAR(hellcatloadout)  =  [[4,4], [0], [0, 0], [0]]; 
GVAR(kajmanLoadout) = [[4 , 4, 12, 15], [3], [0, 0], [0]];
GVAR(irifHMGLoadout) = [[], [0], [0, 0], [0]];
GVAR(irifGMGLoadout) = [[], [7], [0, 0], [0]];
GVAR(striderGMGLoadout)  =  [[], [3], [0, 0], [0]];
GVAR(quilinHMGLoadout) = [[], [0], [0, 0], [0]];
GVAR(quilinATLoadout) = [[], [16, 16], [0, 0], [0]];
GVAR(maridLoadout) = [[], [0, 11], [0, 0], [0]]; 
GVAR(gorgonLoadout) = [[], [3, 12, 13], [0, 0], [0]]; 
GVAR(kamyshLoadout) = [[], [3, 14, 15], [0, 0], [0]]; 
GVAR(tigrisLoadout) = [[], [20, 22], [0, 0], [0]];
GVAR(varsukLoadout) = [[], [3, 33, 34, 35], [0, 0], [0]];
GVAR(sochoLoadout) = [[], [40,40], [0, 0], [0]];



//Pads für Bestellung und Verkauf
GVAR(pad_veh_east) =
[
FahrzeugBoxEast1,
FahrzeugBoxEast2,
FahrzeugBoxEast3,
FahrzeugBoxEast4,
FahrzeugBoxEast5,
FahrzeugBoxEast6,
FahrzeugBoxEast7,
FahrzeugBoxEast8
];

GVAR(pad_veh_west) =
[
FahrzeugBoxWest1,
FahrzeugBoxWest2,
FahrzeugBoxWest3,
FahrzeugBoxWest4,
FahrzeugBoxWest5,
FahrzeugBoxWest6,
FahrzeugBoxWest7,
FahrzeugBoxWest8
];

GVAR(pad_air_east) =
[
HeliBoxEast1,
HeliBoxEast2
];

GVAR(pad_air_west) =
[
HeliBoxWest1,
HeliBoxWest2
];

GVAR(pad_sup_east) =
[
AusruestungBoxEast1,
AusruestungBoxEast2,
AusruestungBoxEast3,
AusruestungBoxEast4,
AusruestungBoxEast5,
AusruestungBoxEast6,
AusruestungBoxEast7,
AusruestungBoxEast8
];

GVAR(pad_sup_west) =
[
AusruestungBoxWest1,
AusruestungBoxWest2,
AusruestungBoxWest3,
AusruestungBoxWest4,
AusruestungBoxWest5,
AusruestungBoxWest6,
AusruestungBoxWest7,
AusruestungBoxWest8
];

GVAR(pad_sea_west) =
[

];

GVAR(pad_sea_east) =
[

];

GVAR(pad_all_west) = GVAR(pad_veh_west) +
GVAR(pad_air_west) +
GVAR(pad_sup_west) +
GVAR(pad_sea_west);

GVAR(pad_all_east) = GVAR(pad_veh_east) +
GVAR(pad_air_east) + 
GVAR(pad_sup_east) +
GVAR(pad_sea_east);

