FinalProject1
=============

Settlers Of Catan

2015-01-20
    -removed cities and facilities, working with only settlements
    -button functionality added
        -can build (sort of) a settlement
        -can build (sort of) a road
        -can end player turn (definitely so) and move from one player to next
    -players now have their own colors so everything they "own" (settlements, roads) will also have the same color

2015-01-19:
    -player actions buttons position adjusted
    -added additional stats
    -created functions to add settlements, cities, and roads to player's inventory as well as updating player stat data
    -working on build settlement function

2015-01-18:
    -player stats added
    -title added
    -current player's stats is highlighted
    -buttons for possible moves/actions will show up only on the status bar of the current player (i.e., if it's not a player turn, no buttons appear and text won't be highlighted)
    -NEED TO: figure out which button user clicked on (if they did)

2015-01-16:
    -biomes successfully randomized on tiles
    -map appearance readjusted

2015-01-15:
    -Working map created
    -minor bug with tile colors on map fixed
    -TO FIX: shuffle method so that biomes are randomized on tiles

2015-01-14:
    -edited map stuff
    -Tiles now being displayed
    -TO FIX/NOTE: there are two setTile methods--> which one to use?

2015-01-13:
    -began development of map
    -removed sprite class

2015-01-12:
    Better starter guide for understanding sprite animation: http://gamedevelopment.tutsplus.com/tutorials/an-introduction-to-spritesheet-animation--gamedev-13099
    
    FIXED:
    -changed file name so no nested enclosed issue (http://stackoverflow.com/questions/17379921/processing-java-error-the-nested-type-node-cannot-hide-an-enclosing-type)
    -gave int[] variable dimension, since will always have/need same amount of types of resources (http://stackoverflow.com/questions/18548344/android-customadapter-variable-must-provide-either-dimension-expressions-or-an)
    -edited setTiles so constructor would work
    
    TO FIX: how to set up tiles? (makeTile  in setTiles brings up error, not sure yet how to fix)
        -will add basic sprite animation stuff


2015-01-09: 
    Fixed Merge Conflict:
    -git fetch origin
    -git pull origin master
    - *add and commit files*
    -git pull origin master
    -git push origin master (and enter user and pass)
    (Source: http://stackoverflow.com/questions/161813/fix-merge-conflicts-in-git)

2015-01-08:
    Equation for Tile Placement: k*(abs((5-i)/2)+1)

2015-01-07:  
    Sprite Programming Ref (for coders): https://sites.google.com/site/javagamescorner/home/creating-sprites
    Map Outline:https://www.dropbox.com/s/pik1ibon5hoo9fn/Photo%20Jan%2007%2C%208%2017%2023%20AM.png?dl=0
    Classes:
        -Tiles
        -Buildings
            -Facilities
                -Settlements
                -Cities
            -Roads
    Variables and Methods
        -Tiles: Production
        -Buildings: Cost, Color, Check method (abstract)
            -Facilities: Production (checks tiles), Port Access, Check for roads
            -Roads: Check for roads/facilities

2015-01-06 : https://www.dropbox.com/s/c9hyuxkinlvh848/Photo%20Jan%2005%2C%203%2019%2057%20PM.png?dl=0

2015-01-05
- Associating resource tiles with direction numbers to detail "coordinates" of buildings (resource tile #, direction #)
-map created by offsetting rows
    MAP: 5 rows x 9 columns
    _ _ _ _ _ _ _ _ _
    _ _ O _ O _ O _ _
    _ _ _ _ _ _ _ _ _
    _ O _ O _ O _ O _
    _ _ _ _ _ _ _ _ _
    O _ O _ O _ O _ O
    _ _ _ _ _ _ _ _ _
    _ O _ O _ O _ O _
    _ _ _ _ _ _ _ _ _
    _ _ O _ O _ O _ _
    _ _ _ _ _ _ _ _ _
    --where O are the tiles; rows w/o any Os are for buildings only, row w/ Os are for tiles only
    --check overlap by top 3 tiles above and below buildings
    offset/move over from beginning by 5-(number of tiles in the row)


Goals
1. Tile Class and Subclasses
    - Resource Tiles
    - Trading Tiles
2. Buidling Class and Subclasses
    - 5 settlements max for each player
3. Map Recognition
3. Player Stat Interface
4. Random Generation
5. Game Start/End
    - creation of 4 players max; 2 min
    - distance of player settlements at start
    - if player has 10 but not his turn, hold until it is or until other player achieves 10
6. Theif Mechanics
7. Card Implementation



project files for AP CS (P6)
