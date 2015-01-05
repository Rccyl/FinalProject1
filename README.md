FinalProject1
=============

Settlers Of Catan

20150105
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
