## Concept

It is meant to extend the 
[CLHEP](http://proj-clhep.web.cern.ch/proj-clhep/)
[Units](http://proj-clhep.web.cern.ch/proj-clhep/manual/UserGuide/Units/units.html)
Module.

Units.h is a copy of
[CLHEP/Units/SystemOfUnits.h](http://proj-clhep.web.cern.ch/proj-clhep/manual/RefGuide/Units/SystemOfUnits_h.html)
with the following extensions
- kpc
- light_year, lightyear, ly
- astronomical_unit, AU

Constants.h is a copy of
[CLHEP/Units/PhysicalConstants.h](http://proj-clhep.web.cern.ch/proj-clhep/doxygen/html/PhysicalConstants_8h-source.html)
with the following extensions
- fourpi, pi4, pi3
- fermi_const, GF

Everything is nested in a namespace called ```UNIC```.
The reason not to have nested namespaces,
such as ```UNIC::Unit```, ```UNIC::Const``` and ```UNIC::Math```,
is to save typing.

## Installation

Modify the prefix in the first line of Makefile and ```make```.
After a successful installation,
header files are copied to ```/prefix/include/UNIC/```.

## Usage

```cpp
#include <UNIC/Units.h>
using namespace UNIC;
```
