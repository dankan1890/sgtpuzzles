# -*- makefile -*-

TOWERS_EXTRA        = LATIN
TOWERS_EXTRA_SOLVER = LATIN_SOLVER

towers    : [X] GTK COMMON towers TOWERS_EXTRA towers-icon|no-icon

towers    : [G] WINDOWS COMMON towers TOWERS_EXTRA towers.res|noicon.res

towerssolver : [U] towers[STANDALONE_SOLVER] TOWERS_EXTRA_SOLVER STANDALONE
towerssolver : [C] towers[STANDALONE_SOLVER] TOWERS_EXTRA_SOLVER STANDALONE

ALL += towers[COMBINED] TOWERS_EXTRA

!begin am gtk
GAMES += towers
!end

!begin >list.c
    A(towers) \
!end

!begin >gamedesc.txt
towers:towers.exe:Towers:Tower-placing Latin square puzzle:Complete the latin square of towers in accordance with the clues.
!end
