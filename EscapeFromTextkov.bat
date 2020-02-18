@ECHO OFF
TITLE Escape From TextKov
::Future updates - 
::ADD INVENTORY SYSTEM [/] - WIP
::Add a hideout. -with stuff to do?
::Add a flea market. -need to create list of all items and prices
::Add more maps! - HAH
::Set font size here for the game.[/]
::Add music? - We'll see!
::Add sound effects? - We'll see!

::Do math stuff for weapons that are selected.

:WindowSize
::Set window height, width here for the game.
mode con:cols=150 lines=50

:Tarkov
::Set Player stats
set hp=120
set water=100
set food=100
set energy=110
::==========================================
::SET MONIES HERE
::==========================================
set R=2500
set $=0
set E=0

::==========================================
::SET ARMOR STATS HERE FOR EACH ARMOR
::==========================================
set Armor=70


::==========================================
::Lootable Item Names and Sizes
::==========================================
::Bandage
set Bandage=Aseptic Bandage
set BandageDefaultStartAmount=0
set BandageSizeInInventory=1


::Lunchbox
Set LunchBox=Lunch Box
set LunchBoxDefaultStartAmount=0
set LunchBoxSizeInInventory=2


::==========================================
::SET K/D RATIO HERE
::==========================================
set killcount=0
set bodycount=0
::==========================================
::==========================================


::==========================================
::SET SPECIAL ITEMS HERE
::==========================================
set LabsCard=0
::==========================================
::==========================================

::==========================================
::SET PRIMARY WEAPONS INFO HERE
::==========================================
set PrimaryWeapon=
set PrimaryWeaponMagazineCount=
::==========================================
::SET SECONDARY WEAPONS INFO HERE
::==========================================

set SecondaryWeapon=
set SecondaryWeaponMagazineCount=
::==========================================
::==========================================

::Set Weapons Found
set WF=0

::========================
::Load the WeaponsData

::==========================================
::==========================================
::Weapons Inventory system
::Pistols
set pmt=Pm(t)9x18
::Set inventory system for EACH Weapon
set PMTpistolHealth=100
set PMTpistolNamePrimary=PM 9x18
set PMTpistolmagazines=2
set PMTpistolBulletCount=10
set PMTpistolmagazinesextra=0

set TT=TT 7.62x25
::Set inventory system for EACH Weapon
set TTpistolHealth=100
set TTpistolNamePrimary=TT 7.62x25
set TTpistolmagazines=2
set TTpistolBulletCount=10
set TTpistolmagazinesextra=


set Yargyin=YargyinMP443 
::Set inventory system for EACH Weapon
set YargyinpistolHealth=100
set YargyinpistolNamePrimary=Yargyin MP 443
set Yargyinpistolmagazines=2
set YargyinpistolBulletCount=10
set Yargyinpistolmagazinesextra=0


set P226=P226
::Set inventory system for EACH Weapon
set P226pistolHealth=100
set P226pistolNamePrimary=P226
set P226pistolmagazines=2
set P226pistolBulletCount=10
set P226pistolmagazinesextra=0


set PB=PB silenced pistol
::Set inventory system for EACH Weapon
set PBpistolHealth=100
set PBpistolNamePrimary=PB Pistol
set PBpistolmagazines=2
set PBpistolBulletCount=10
set PBpistolmagazinesextra=0


::Shotguns:
set MR133=MR 133
::Set inventory system for EACH Weapon
set MR133Health=100
set MR133NamePrimary=MR133 Shotguns
set MR133magazines=0
set MR133BulletCount=6
set MR133magazinesextra=0


set MP153=MP 153
::Set inventory system for EACH Weapon
set pistolHealth=100
set MP153NamePrimary=MP 153
set pistolmagazines=2
set pistolBulletCount=10
set pistolmagazinesextra=0


set Saiga=Saiga 12ga
::Set inventory system for EACH Weapon
set SaigaHealth=100
set SaigaNamePrimary=Saiga
set Saigamagazines=2
set SaigaBulletCount=10
set Saigamagazinesextra=0


::Rifles:
set SKS=SKS
::Set inventory system for EACH Weapon
set SKSHealth=100
set SKSNamePrimary=SKS
set SKSmagazines=1
set SKSBulletCount=35
set SKSmagazinesextra=0


set SV98=(SV-98)
::Set inventory system for EACH Weapon
set SV98Health=100
set SV98Primary=SV-98
set SV98magazines=3
set SV98BulletCount=10
set SV98magazinesextra=1


set ASVAL=AS VAL
::Set inventory system for EACH Weapon
set ASVALHealth=100
set ASVALNamePrimary=AS VAL
set ASVALmagazines=2
set ASVALBulletCount=10
set ASVALmagazinesextra=2

set HK16=HK-16
::Set inventory system for EACH Weapon
set HK16Health=100
set HK16NamePrimary=HK-16
set HK16magazines=3
set HK16BulletCount=30
set HK16magazinesextra=0

set AKS74U=AKS 74U
::Set inventory system for EACH Weapon
set AKS74UHealth=100
set AKS74UNamePrimary=AKS 74U
set AKS74Umagazines=2
set AKS74UBulletCount=10
set AKS74Umagazinesextra=2


set AK74N=AK 74N
::Set inventory system for EACH Weapon
set AK74NHealth=100
set AK74NNamePrimary=AK 74N
set AK74Nmagazines=2
set AK74NBulletCount=10
set AK74Nmagazinesextra=2


set ColtM4A1=Colt M4 A1
::Set inventory system for EACH Weapon
set ColtM4A1Health=100
set ColtM4A1NamePrimary=Colt M4 A1
set ColtM4A1magazines=2
set ColtM4A1BulletCount=10
set ColtM4A1magazinesextra=2


set PP19=PP-91 Keder
::Set inventory system for EACH Weapon
set PP19Health=100
set PP19NamePrimary=PP-91 Keder
set PP19magazines=2
set PP19BulletCount=10
set PP19magazinesextra=2


set DVL10=DVL-10 Diversant
::Set inventory system for EACH Weapon
set DVL10Health=100
set DVL10NamePrimary=DVL-10 Diversant
set DVL10magazines=2
set DVL10BulletCount=10
set DVL10magazinesextra=2


set MPX=Sig - MPX
::Set inventory system for EACH Weapon
set MPXHealth=100
set MPXNamePrimary=SIG - MPX
set MPXmagazines=2
set MPXBulletCount=10
set MPXmagazinesextra=2
::==========================================
::==========================================
::END OF WEAPONS LIST
::==========================================
::==========================================
::=========================


::Variables for Boss Names
set BossName1=Killa
set BossName2=Reshala
set BossName3=Shturman
set BossName4=Glukar
set BossName5=Nikita
set BossNameError=You cant use that name!
set KilledBy=%SCAVDT%

::Variable for NULL class name
set classblank=
set class1=BEAR
set class2=USEC

::Set Variables for DogTags
set SCAVDTFN=%enemy_FNAME%
set SCAVDTLN=%enemy_LNAME%
set BossDT=
set PlayerDT="%Fname%" + "%Lname%"
set DTCounter=0

::Enemy Names
set Enemy_FName=Beanie
set Enemy_LName=Beans


cls
:MainScreen
type logo.txt
echo.
Echo To begin, make a choice below...
Echo.
Echo 1. START A NEW GAME
Echo 2. EXIT
Echo.
set /p input0=Enter: 
if %input0% equ 1 goto NewPlayer
if %input0% equ 2 Exit
cls

::After this event, the game is started.
:GameStart
cls
echo %PlayerBagChoice%>> BagInventory.Textkov
::GameStart Carries over the information later on in the game.
type MainMenuTitle.txt
echo.
echo Class:%class% -Player Name: %Fname% %Lname%
echo HP:%hp% -Hydration:%water% -Food:%food% -Energy:%energy%
echo Money: -R:%R% -$:%$% -E:%E%
echo Current Bag: %PrimaryBag% - %BagInventorySize% slots remaining of %BagInventorySizeMax%
echo Current Inventory size: %InventoryCurrentSize% remaining of %InventoryDefaultSize%
echo ==================================================================
if [%HP%] 		NEQ [120] 	( ECHO Your character is currently in bad shape! Go Heal! ) 	Else ( GOTO GameStart2 )
if [%WATER%] 	NEQ [100] 	( ECHO Your character is dehydrated! Go Heal! ) 				Else ( GOTO GameStart2 )
if [%FOOD%] 	NEQ [100] 	( ECHO Your character is Hungry! Go Heal! ) 					Else ( GOTO GameStart2 )
if [%ENERGY%] 	NEQ [110] 	( ECHO Your character is tired! Go Heal! ) 						Else ( GOTO GameStart2 )
:GameStart2
echo.
echo You've been dropped into the streets of Tarkov with your %PrimaryWeapon% with %PrimaryWeaponMagazineCount% magazines, a %SecondaryWeapon% as your backup, with %SecondaryWeaponMagazineCount% extra mags. You find yourself at a cross-road with a sign high above lit in the darkness. You check your stash before heading out...

echo.
echo ==================================================================
goto LoadCommand
cls

:NewPlayer
::Create blank files here
set blankFileName=

::Create blank file for Main Inventory.
ECHO %blankFileName%>> InventoryItemsList.textKov

::Create blank file for Player Information.
ECHO %blankFileName%>> PlayerInfo.textkov


set nameblank=
cls
Type PlayerName.txt
echo.
echo.
echo.
Echo What is your name?
echo.
set /p Fname=First Name: 
ECHO %FNAME%>>PlayerInfo.textkov
set /p Lname=Last Name: 
ECHO %LNAME%>>PlayerInfo.textkov
echo
GOTO Class


:Class
cls
Type PlayerClass.txt
echo.
echo.
echo.
echo Choose a class...
echo.
ECHO Bear
ECHO USEC
set /p Class=Choice: 
ECHO Class: %Class% >>PlayerInfo.Textkov
if [%class%] EQU [Bear] set class=%class1%
if [%class%] EQU [USEC] set class=%class2%

::Class catch for errors or blank class
if [%class%] EQU [%classblank%] ( GOTO :Class ) ELSE ( goto BagSelection )
::----------------------------------------------------------------------------------------------
::----------------------------------------------------------------------------------------------


::==========================================
::SET BAG INFORMATION HERE
::==========================================
set PrimaryBag=
set BagInventorySize=
set BagInventorySizeMax=
::==========================================
::==========================================
:BagSelection
echo.
echo.
echo choose a bag:
echo.
echo 1. Berkut - 32 slots of inventory space
echo 2. Pilgrim - 64 slots of inventory space
set /p PlayerBagChoice=Choice:
if [%PlayerBagChoice%] EQU [1] Set PrimaryBag=Berkut
if [%PlayerBagChoice%] EQU [1] Set BagInventorySize=32
if [%PlayerBagChoice%] EQU [1] set BagInventorySizeMax=32

if [%PlayerBagChoice%] EQU [2] Set PrimaryBag=Pilgrim
if [%PlayerBagChoice%] EQU [2] Set BagInventorySize=64
if [%PlayerBagChoice%] EQU [2] set BagInventorySizeMax=64

ECHO Bag Chosen: %PrimaryBag%>>PlayerInfo.Textkov

GOTO WeaponSelectionLoadMenu
::----------------------------------------------------------------------------------------------
::----------------------------------------------------------------------------------------------
::Credits
:Credits
cls
echo.
echo.
echo.
echo.
type Credits.txt
echo.
echo.
goto Loadcommand
::----------------------------------------------------------------------------------------------
::----------------------------------------------------------------------------------------------

:InventoryManager
cls
Type Inventory.txt
echo %Fname%'s Inventory
echo You currently have the following items in Inventory:
::Show the items that have been collected.
TYPE InventoryItemsList.textkov
GOTO :Loadcommand

:BagInventoryCommander
cls
Type Inventory.txt
echo %Fname%'s Inventory
echo You currently have the following items in your %PrimaryBag%

::Show what the player currently has in their primary bag..
type baginventory.textkov
goto Loadcommand

:InventoryMover
cls
::Move all items from bag to inventory if approved.
::Reset PrimaryBag sizes
echo All items have been moved to inventory from your %PrimaryBag%.

type baginventory.textkov >> InventoryItemsList.textkov
del baginventory.textkov
ECHO %PlayerBagChoice%>>BagInventory.textkov

if [%PrimaryBag%] EQU [Berkut]	 	Set BagInventorySize=32
if [%PrimaryBag%] EQU [Pilgrim] 	Set BagInventorySize=64


::Call the LoadCommand
goto loadcommand


:InventoryCommander
cls
set InventoryDefaultName=%Fname%'s Inventory
Set InventoryMinSize=1
Set InventoryDefaultSize=200
set InventoryCurrentSize=

::Where to put the inventory that we collected
Echo Here is your current inventory collected over time.

::Show what's in the inventory
type InventoryItemsList.textkov
GOTO :Loadcommand


::----------------------------------------------------------------------------------------------
::This is the LoadCommander - v1. Can only select from a menu. Future versions should allow the
::Load command to accept terminal requests such as "Heal" typed in.
::----------------------------------------------------------------------------------------------
:LoadCommand
echo.
echo MENU: What do you want to do?
echo 1.  Select Map
echo 2.  Show Stats
echo 3.  Change Name
echo 4.  Change Class
echo 5.  MAIN MENU
echo 6.  Show DogTags
echo 7.  Check Health / Heal
ECho 8.  Credits
Echo 9.  Select Weapons
Echo 10. Check Inventory
echo 11. Check Bag Inventory
echo 12. Move all items to Inventory
echo 13. QUIT

set /p LoadCommand=Select: 
if %LoadCommand% equ 1 GOTO  MapChoice
if %LoadCommand% equ 2 GOTO  ShowStats
if %LoadCommand% equ 3 GOTO  NewPlayer
if %LoadCommand% equ 4 GOTO  Class
if %LoadCommand% equ 5 GOTO  GameStart
if %LoadCommand% equ 6 GOTO  DogTagCase
if %LoadCommand% equ 7 GOTO  Heal
if %Loadcommand% equ 8 GOTO  Credits
if %LoadCommand% equ 9 GOTO  WeaponSelectionLoadMenu
if %LoadCommand% equ 10 GOTO InventoryCommander
if %LoadCommand% equ 11 GOTO BagInventoryCommander
if %LoadCommand% equ 12 GOTO InventoryMover
if %LoadCommand% equ 13 exit
cls
::----------------------------------------------------------------------------------------------
::----------------------------------------------------------------------------------------------

::----------------------------------------------------------------------------------------------
::----------------------------------------------------------------------------------------------
:: Select weapons here
:WeaponSelectionLoadMenu
cls
TYPE WeaponSelect.txt
echo.
Echo 1. MR 133
Echo 2. MP 153
Echo 3. Saiga 12ga
Echo 4. SKS
Echo 5. SV 98
Echo 6. AS VAL
Echo 7. AKS 74U
Echo 8. AK 74N
Echo 9. Colt M4 A1
Echo 10. PP-91 Keder
Echo 11. DVL-10 Diversant
Echo 12. Sig - mpx

set /p WeaponSelectionLoadPrimary=Choose your Primary Weapon: 
if %WeaponSelectionLoadPrimary% equ 1 set PrimaryWeapon=%MR133%
if %WeaponSelectionLoadPrimary% equ 2 set PrimaryWeapon=%MP153%
if %WeaponSelectionLoadPrimary% equ 3 set PrimaryWeapon=%Saiga%
if %WeaponSelectionLoadPrimary% equ 4 set PrimaryWeapon=%SKS%
if %WeaponSelectionLoadPrimary% equ 5 set PrimaryWeapon=%SV98%
if %WeaponSelectionLoadPrimary% equ 6 set PrimaryWeapon=%ASVAL%
if %WeaponSelectionLoadPrimary% equ 7 set PrimaryWeapon=%AKS74U%
if %WeaponSelectionLoadPrimary% equ 8 set PrimaryWeapon=%AK74N%
if %WeaponSelectionLoadPrimary% equ 9 set PrimaryWeapon=%ColtM4A1%
if %WeaponSelectionLoadPrimary% equ 10 set PrimaryWeapon=%PP-91%
if %WeaponSelectionLoadPrimary% equ 11 set PrimaryWeapon=%DVL10%
if %WeaponSelectionLoadPrimary% equ 12 set PrimaryWeapon=%MSIG%

ECHO %PRIMARYWEAPON%>>baginventory.textkov

echo 1. 2 Magazines
echo 2. 4 Magazines
set /p PrimaryWeaponMagazineCountQuestion=Echo How many Mags do you want to take?:
if %PrimaryWeaponMagazineCountQuestion% equ 1 set PrimaryWeaponMagazineCount=2
if %PrimaryWeaponMagazineCountQuestion% equ 2 set PrimaryWeaponMagazineCount=4

if [%PrimaryWeaponMagazineCountQuestion%] EQU [1] set /a BagInventorySize=%BagInventorySize%=-2
if [%PrimaryWeaponMagazineCountQuestion%] EQU [2] set /a BagInventorySize=%BagInventorySize%=-4

:WeaponSelectionLoadMenuSecondary
Echo 1. Pm(t)9x18
Echo 2. TT 7.62x25
Echo 3. YargyinMP443 
Echo 4. P226
Echo 5. PB silenced pistol
set /p WeaponSelectionLoadSecondary=Choose your Secondary Weapon: 
if %WeaponSelectionLoadSecondary% equ 1 set SecondaryWeapon=%PM%
if %WeaponSelectionLoadSecondary% equ 2 set SecondaryWeapon=%TT%
if %WeaponSelectionLoadSecondary% equ 3 set SecondaryWeapon=%Yargyin%
if %WeaponSelectionLoadSecondary% equ 4 set SecondaryWeapon=%P226%
if %WeaponSelectionLoadSecondary% equ 5 set SecondaryWeapon=%PB%

echo 1. 2 Magazines
echo 2. 4 Magazines
set /p SecondaryWeaponMagazineCountQuestion=Echo How many Mags do you want to take?:
if [%SecondaryWeaponMagazineCountQuestion%] EQU [1] set SecondaryWeaponMagazineCount=2
if [%SecondaryWeaponMagazineCountQuestion%] EQU [2] set SecondaryWeaponMagazineCount=4

ECHO %SecondaryWeapon%>> baginventory.textkov

if [%SecondaryWeaponMagazineCountQuestion%] EQU [1] set /a BagInventorySize=%BagInventorySize%=-2
if [%SecondaryWeaponMagazineCountQuestion%] EQU [2] set /a BagInventorySize=%BagInventorySize%=-4


goto GameStart


::----------------------------------------------------------------------------------------------
::This is the healing bot - It heals you - but does not if you're at full health or have no monies.
::----------------------------------------------------------------------------------------------
:Heal
cls
type Heal.txt
echo.
::If HP and all stats are good, state the character does not need to heal.
if [%HP%] 		EQU [120] 	( ECHO Your character's HP is at max! ) 						Else ( goto Heal_Alert )
if [%WATER%] 	EQU [100] 	( ECHO Your character's Hydration is at max! ) 					Else ( goto Heal_Alert )
if [%FOOD%] 	EQU [100] 	( ECHO Your character's Hunger is at max! ) 					Else ( goto Heal_Alert )
if [%ENERGY%] 	EQU [110] 	( ECHO Your character's Energy is at max! ) 					Else ( goto Heal_Alert )

:Heal_Alert
if [%HP%] 		NEQ [120] 	( ECHO Your character is currently in bad shape! Go Heal! ) 	Else ( GOTO HealPart2 )
if [%WATER%] 	NEQ [100] 	( ECHO Your character is dehydrated! Go Heal! ) 				Else ( GOTO HealPart2 )
if [%FOOD%] 	NEQ [100] 	( ECHO Your character is Hungry! Go Heal! ) 					Else ( GOTO HealPart2 )
if [%ENERGY%] 	NEQ [110] 	( ECHO Your character is tired! Go Heal! ) 						Else ( GOTO HealPart2 )

echo.
::Check Monies
if %R% LEQ 0 ( ECHO You currently don't have enough money to heal - Go Raid first! ) 		ELSE ( GOTO HEALPART2 ) 
if %$% LEQ 0 ( ECHO You currently don't have enough money to heal - Go Raid first! ) 		ELSE ( GOTO HEALPART2 ) 
if %E% LEQ 0 ( ECHO You currently don't have enough money to heal - Go Raid first! ) 		ELSE ( GOTO HEALPART2 ) 
echo Money: -R:%R% -$:%$% -E:%E%
echo Press any button to continue....
pause >nul
GOTO GameStart

:HealPart2
cls
echo.
echo.
echo.
type Heal.txt
echo.
echo.
echo 1. Yes - Heal!
echo 2. No! - Main Menu
set /p HealthBillQuestion=Do you want to heal completely for 10 R?
if %HealthBillQuestion% equ 1 goto HealAccept
if %HealthBillQuestion% equ 2 goto LoadCommand
::----------------------------------------------------------------------------------------------
:HealAccept
set /a R=%R-10

if [%HP%] 		NEQ [120] 	( ECHO Your character has been healed! ) 	Else ( GOTO HealHealth )
:HealHealth
set HP=120

if [%WATER%] 	NEQ [100] 	( ECHO Your character's Hydration has been filled! ) 	Else ( GOTO SetWater )
:HealWater
set Water=100

if [%FOOD%] 	NEQ [100] 	( ECHO Your character is no longer hungry! ) 	Else ( GOTO SetFood )
:SetFood
Set Food=100

if [%ENERGY%] 	NEQ [110] 	( ECHO Your character feels pretty energetic! ) 	Else ( GOTO SetEnergy )
:SetEnergy
Set Energy=110

echo Total Bill: 10 R!

echo ---------------------------------------------
GOTO LoadCommand
::----------------------------------------------------------------------------------------------
::----------------------------------------------------------------------------------------------

:RaidStats
cls
Type RaidStats.txt
echo.
echo Here are your raid stats
echo Class:%class% -Player Name: %fname% %Lname%
echo HP:%hp% -Hydration:%water% -Food:%food% -Energy:%energy%
echo Money: -R:%R% -$:%$% -E:%E%
echo Current Bag: %PrimaryBag% - has %BagInventorySize% slots remaining of %BagInventorySizeMax%
echo Current Inventory size: %InventoryCurrentSize% remaining of %InventoryDefaultSize%
echo ==================================================================
echo ==================================================================
if [%HP%] 		NEQ [120] 	( ECHO Your character is currently in bad shape! Go Heal! ) 	Else ( GOTO ShowStats2 )
if [%WATER%] 	NEQ [100] 	( ECHO Your character is dehydrated! Go Heal! ) 				Else ( GOTO ShowStats2 )
if [%FOOD%] 	NEQ [100] 	( ECHO Your character is Hungry! Go Heal! ) 					Else ( GOTO ShowStats2 )
if [%ENERGY%] 	NEQ [110] 	( ECHO Your character is tired! Go Heal! ) 						Else ( GOTO ShowStats2 )
echo ==================================================================
echo Armor: %Armor%
echo Weapons Found: %WF%
echo Primary Weapon: %PrimaryWeapon%
echo %pistolNamePrimary% -Pistol Condition:%pistolHealth%
echo Pistol Magazines Remaining:%pistolmagazines% with %pistolBulletCount% bullets, and %pistolmagazinesextra% magazines left over.
echo Kill Count:      %killcount%
echo Bodies Searched: %bodycount%
echo Dog Tags taken:  %DTCounter%
echo Specialty Items: %LabsCard%
echo ---------------------------------------------
GOTO LoadCommand


:MapChoice
cls
::==================================================================
::If character is in full health, go select a map
::==================================================================
type MapSelection.txt
echo.
echo Class:%class% -Player Name: %fname% %Lname%
echo HP:%hp% -Hydration:%water% -Food:%food% -Energy:%energy%
echo Money: -R:%R% -$:%$% -E:%E%
echo Current Bag: %PrimaryBag% - has %BagInventorySize% slots remaining of %BagInventorySizeMax%
echo Current Inventory size: %InventoryCurrentSize% remaining of %InventoryDefaultSize%
echo ==================================================================
echo ==================================================================
if [%HP%] 		NEQ [120] 	( ECHO Your character is currently in bad shape! Go Heal! ) 	Else ( GOTO MapChoice2 )
if [%WATER%] 	NEQ [100] 	( ECHO Your character is dehydrated! Go Heal! ) 				Else ( GOTO MapChoice2 )
if [%FOOD%] 	NEQ [100] 	( ECHO Your character is Hungry! Go Heal! ) 					Else ( GOTO MapChoice2 )
if [%ENERGY%] 	NEQ [110] 	( ECHO Your character is tired! Go Heal! ) 						Else ( GOTO MapChoice2 )
echo ==================================================================
:MapChoice2
echo Choose a map:
echo 1. Interchange
echo 2. Labs
echo 3. Menu
set /p MapChoice=Map: 
if [%MapChoice%] EQU [1] GOTO Interchange
if [%MapChoice%] EQU [2] goto LabsWithCard
if [%mapChoice%] EQU [3] goto Loadcommand
::Check to make sure character inventory is good - if the bag inventory is less than 0, echo to save inventory to hideout.
if [%BagInventorySize%] NEQ [%BagInventorySizeMax%] ( ECHO You Don't have enough inventory space for a new run! ) ELSE ( goto Loadcommand )

cls


:LabsWithCard
echo You knock on the door... No one answers.
echo.
goto LoadCommand


:ShowStats
cls
Type ShowStats.txt
echo.
echo ---------------------------
echo Here are your current stats \
echo ------------------------------
echo Class:%class% -Player Name: %fname% %Lname%
echo HP:%hp% -Hydration:%water% -Food:%food% -Energy:%energy%
echo Money: -R:%R% -$:%$% -E:%E%
echo Current Bag: %PrimaryBag% - has %BagInventorySize% slots remaining of %BagInventorySizeMax%
echo Current Inventory size: %InventoryCurrentSize% remaining of %InventoryDefaultSize%
echo ==================================================================
echo ==================================================================
if [%HP%] 		NEQ [120] 	( ECHO Your character is currently in bad shape! Go Heal! ) 	Else ( GOTO ShowStats2 )
if [%WATER%] 	NEQ [100] 	( ECHO Your character is dehydrated! Go Heal! ) 				Else ( GOTO ShowStats2 )
if [%FOOD%] 	NEQ [100] 	( ECHO Your character is Hungry! Go Heal! ) 					Else ( GOTO ShowStats2 )
if [%ENERGY%] 	NEQ [110] 	( ECHO Your character is tired! Go Heal! ) 						Else ( GOTO ShowStats2 )
echo ==================================================================
:ShowStats2
echo Armor: %Armor%
echo %Baginventory% slots of inventory space remain.
echo Specialty Items: %LabsCard%
echo ==================================================================
GOTO LoadCommand


:DogTagCase
cls
Type DogTagCase.txt
Echo.
echo.
echo Here are the Dog Tags that you have collected so far.
Echo.
echo.
Echo. You were killed by %enemy_FNAME% %enemy_LNAME%
echo.
echo %BossName1% was Killed By:%Name%
::IF BOSS WAS KILLED, LOOTED, SHOW DOGTAG Here
GOTO LoadCommand

::----------------------------------------------------------------------------------------------
::----------------------------------------------------------------------------------------------
:GameOver
cls
type GameOver.txt
del baginventory.textkov
set hp=3
set water=8
set food=4
set energy=12
set R=0
set $=0
set E=0
set pistolHealth=-2
set pistolNamePrimary=
set pistolmagazines=0
set pistolBulletCount=0
set pistolmagazinesextra=0
set PrimaryWeapon=None
set killcount=0
set bodycount=0
set LabsCard=0
set DTCounter=0
echo %PrimaryBag%>>BagInventory.Textkov

::Reset The bag counter.
if [%PrimaryBag%] EQU [Berkut]		Set BagInventorySize=32
if [%PrimaryBag%] EQU [Pilgrim]		Set BagInventorySize=64


echo.
echo.
echo while running away, a scav spots you and kills you with his MP9.
echo.
echo.
echo Your eyes fade to black, hearing your own blood gurgle in your lungs...
echo YOU DIED - Everything you find in raid is now there forever....

echo Press any button to restart...
pause >nul
cls
goto GameStart
::---------------------------------------------------------------------------------------------
::----------------------------------------------------------------------------------------------

::----------------------------------------------------------------------------------------------
::Start the Interchange Map
::----------------------------------------------------------------------------------------------

:Interchange
cls
Type Map_InterchangeTitle.txt
echo.
echo You find yourself on Interchange with %HP% percent health. You find a dead SCAV on the floor, and you decide to loot him. On his body you find: An FN123 with %PistolHealth% percent pristine condition. You take the pistol and hold it out infront of you, admiring its nice polished body, and stash it away in your backpack. You now are using %BagInventorySize% slots of %BagInventorySizeMax% your %PrimaryBag%%'s inventory.

set /a BagInventorySize=%BagInventorySize%-2
set /a bodycount=%bodycount%+1
echo.
echo.
echo You start walking towards the main road, and find yourself between a SCAV.
echo 1. Kill the bastard
echo 2. Run
set /p Interchange1=What do you do...: 
if [%Interchange1%] EQU [1] goto InterchangePart1
if [%Interchange1%] EQU [2] goto InterchangePart2
::Fixed by Beanie - Giving credit where it's due!
echo Press any button to continue...
pause >nul
cls

:InterchangePart1
echo You shoot the SCAV in the head, and they run away into cover.
echo.
echo.
echo You spot the SCAV in cover!
echo.
echo 1. Shoot the bastard in the head
echo 2. Run
set /p InterchangePart1Choice=What do you do...: 
if [%InterchangePart1Choice%] EQU [1] goto InterchangePart1a
if [%InterchangePart1Choice%] EQU [2] goto InterchangePart2
cls


:InterchangePart1a

set /a killcount=%killcount%+1
set pistolBulletCount=6
echo You take multiple shots at the SCAV, killing him with a headshot.
set /a LabsCard=%LabsCard%+1
set /a bodycount=%body%+1
set /a Baginventory=%BagInventorySize%-1
set /a e=%e%+20
set /a R=%R%+250
echo You check your magazine, and now you have %pistolBulletCount% bullets left. You also find a Labs Keycard on him.... Lucky!
echo You find a wallet containing 250 Rubles.
echo.
echo You find 20 Euros in his pockets, and a cookie.
echo You currently have %BagInventorySize% slots available.
echo You carry on towards the Mall Parking lot....
GOTO InterchangePart2
:InterchangePart2
echo You run away from the main road, and head towards the Mall Entrance...
echo While searching the parking lot, there you find a dead SCAV with 100$, a Lunchbox, their Dog Tag, and a bandage.
set /a DTCounter=%DTCounter%+1
set /a bodycount=%bodycount%+1
set /a $=%$%+100
set /a Baginventory=%BagInventorySize%-3
set /a pistolHealth=%pistolHealth%-18
set /a DTCounter=%DTCounter%+1
set /a food=%food%-24
set /a water=%water%-6
set /a energy=%energy%-35

echo %BANDAGE%>>baginventory.textkov
echo %LUNCHBOX%>>baginventory.textkov



echo.
echo ------------------------
echo.
echo You start walking towards the Mall entrance, and quietly creep up the stairs.
echo You hear some gunfire out in the distance...
echo.
echo 1. Keep walking to the center of the mall
echo 2. Run
set /p InterchangePart2Choice=What do you do...
if %InterchangePart2Choice% equ 1 goto InterchangePart3
if %InterchangePart2Choice% equ 2 goto GameOver
echo Press any button to continue...
pause >nul
cls

:InterchangePart3

echo You continue towards the middle of the mall, walking into the Medical Tents. You find an %HK16%...
echo 1. Loot that bitch!
echo 2. Not even worth it...
set /p TakeHk16=Take it?
if %Takehk16% equ 1 goto InterchangePart3A
if %Takehk16% equ 2 goto InterchangePart4
pause >nul

:InterchangePart3A
set /a BagInventorySize=%BagInventorySize%-6
echo You take the %HK16% and arm yourself to the teeth.

echo %HK16% >>baginventory.textkov

set /a WF=%WF%+1
set /a food=%food%-15
set /a water=%water%-12
set /a energy=%energy%-75
echo You hear some Russian being spoken around the corner. "CHEEKY BREEKY"
echo.
echo.
echo 1. Find out who it is...
echo 2. Go back and take cover...
set /p InterchangePart3Choice=What do you do...
if %InterchangePart3Choice% equ 1 goto InterchangePart4
if %InterchangePart3Choice% equ 2 goto GameOver
echo Press any button to continue...
pause >nul
cls

:InterchangePart4
echo.
echo.
echo You leave the %HK16% where it is....
echo When you peek the corner, a SCAV is standing there wearing a black helmet with 3 stripes running down. You spot the armor and notice the words 
type Killa.txt
echo.
echo hand written onto it.
set /a water=%water%-65
echo You peed your pants! Your water is now down to %water%
echo He throws a grenade and takes you down to 15 percent health, and your legs are now bleeding.
echo.
echo You look back up through the iron sights of the %PrimaryWeapon%, and take a headshot at %BossName1%, with a headshot.
set /a killcount=%killcount%+1

echo 1. Loot his shit
echo 2. Continue on with the mission...
set /p InterchangePart4Choice=Make a choice...
if %InterchangePart4Choice% equ 1 goto InterchangePart5
if %InterchangePart4Choice% equ 2 goto InterchangePart5b
echo Press any button to continue...
pause >nul
cls


:InterchangePart5
echo You find Killa's Helmet, and his RPK-16 full of BT ammo, 2 extra 90 round magazines, Killa's Dog Tag, and 6 grenades.
echo.
echo.
echo 1. Loot everything
echo 2. Loot nothing, and take cover
set /p InterchangePart5Choicea=Make a choice....
if %InterchangePart5Choicea% equ 1 goto InterchangePart5a
if %InterchangePart5Choicea% equ 2 goto InterchangePart5b
cls

:InterchangePart5a
echo.
echo.
echo You loot Killa and his gear...
set /a hp=%hp%+3
set /a armor=%armor%-20
set /a BaginventorySize=%BagInventorySize%-10
set /a bodycount=%body%+1
set /a DTCounter=%DTCounter%+1
goto InterchangePart6

:InterchangePart5b
echo You loot nothing, and keep walking towards Kiba Store, unlocking the first door.
echo While unlocking the door you hear someone sneaking up on you.
echo 1. Run away...
echo 2. Shoot the bastard...
set /p InterchangePart5Choiceb=What do you do?
if %InterchangePart5Choiceb% equ 1 goto GameOver
if %InterchangePart5Choiceb% equ 2 goto InterchangePart6
echo Press any button to continue...
pause >nul

:InterchangePart6
set /a bodycount=%bodycount%+1
set /a killcount=%killcount%+1
set /a pistolBulletCount=%pistolBulletCount%-5
set /a pistolmagazinesextra=%pistolmagazinesextra%-1
set /a BagInventorySize=%BagInventorySize%-1

echo You walk towards the KIBA store - and hear someone run up behind you.
echo.
echo You kill the bastard yelling obsceneties at them with your %PistolNamePrimary%. You loot them, collecting their Dog Tag. You notice their Dog Tag says "%BossName4%"....
echo You now have %pistolBulletCount% bullets left.
echo You make it to the extract, carrying everything over your shoulder - and hopefully your teeth as well. Good game!
echo Press any key to show your raid stats:
pause >nul
GOTO RaidStats

:EndofMap_Interchange
echo Play again?
echo 1. Yes
echo 2. No
set /p EndofMap_Interchange=Make a choice:
if %EndofMap_Interchange% equ 1 GOTO MapChoice
if %EndofMap_Interchange% equ 2 GOTO LoadCommand
