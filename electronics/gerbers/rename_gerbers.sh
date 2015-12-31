#!/bin/bash
front=`ls  *-F.Cu.gbr`
projname=`basename $front \-F.Cu.gbr`
 
mv -v *-F.Cu.gbr $projname.GTL
mv -v *-B.Cu.gbr $projname.GBL
mv -v *-F.Mask.gbr $projname.GTS
mv -v *-B.Mask.gbr $projname.GBS
mv -v *-F.SilkS.gbr $projname.GTO
mv -v *-B.SilkS.gbr $projname.GBO
mv -v *-Edge.Cuts.gbr $projname.GKO
mv -v *.drl $projname.XLN

