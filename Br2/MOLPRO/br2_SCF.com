gprint,basis
gthresh,energy=1d-9
ANGSTROM
geomtyp=xyz
charge=0
multiplicity=1
nosym
geom={
Br 	0.0000 	0.0000 	1.1405
Br 	0.0000 	0.0000 	-1.1405
}

basis={
default,cc-pVDZ-PP
set,jk
default,cc-pVDZ-PP/JKFIT
}
{df-hf,df_basis=jk
wf,,,$multiplicity-1
print,orbitals
maxit,300}

basis={
default,cc-pVTZ-PP
set,jk
default,cc-pVTZ-PP/JKFIT
}
{df-hf,df_basis=jk
wf,,,$multiplicity-1
print,orbitals
maxit,300}

basis={
default,cc-pVQZ-PP
set,jk
default,cc-pVQZ-PP/JKFIT
}
{df-hf,df_basis=jk
wf,,,$multiplicity-1
print,orbitals
maxit,300}

basis={
default,cc-pV5Z-PP
set,jk
default,cc-pV5Z-PP/JKFIT
}
{df-hf,df_basis=jk
wf,,,$multiplicity-1
print,orbitals
maxit,300}
