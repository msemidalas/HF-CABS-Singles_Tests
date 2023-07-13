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
default,cc-pVTZ-F12
set,df
default,cc-pVTZ-F12/MP2Fit
set,jk
default,cc-pVTZ-F12/JKFIT
set,ri
default,cc-pVTZ-F12/OptRI
}
{df-hf,df_basis=jk
wf,,,$multiplicity-1
print,orbitals
maxit,300}
{df-cabs,gem_beta=0.9,df_basis=df,df_basis_exch=jk,ri_basis=ri,thrcabs=1d-9,thrcabs_rel=1d-9;explicit,ignore_bad_singl=1}
