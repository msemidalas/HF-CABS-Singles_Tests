gprint,basis
gthresh,energy=1d-9
ANGSTROM
geomtyp=xyz
charge=0
multiplicity=1
nosym
geom={
Cl 	0.0000 	0.0000 	0.0000
Cl 	0.0000 	0.0000 	1.9879
}

basis={
default,aug-cc-pVQZ
set,jk
default,aug-cc-pVQZ/JKFIT
}
{df-hf,df_basis=jk
wf,,,$multiplicity-1
print,orbitals
maxit,300}
