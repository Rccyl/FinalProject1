FinalProject1
=============

Settlers Of Catan

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
