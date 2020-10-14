# BorisBikes

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

bike = bike object
dock bike = dock_bike method

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

object              methods
bike                working
DockingStation      release, docks, has_bike?
user


As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.


USER

DOCKING STATION > release bike only if bike