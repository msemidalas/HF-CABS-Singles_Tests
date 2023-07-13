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
default,cc-pVDZ-PP-F12
set,df
default,cc-pVDZ-PP-F12/MP2Fit
set,jk
default,cc-pVDZ-PP-F12/JKFIT
set,ri
default,def2-QZVPP/JKFIT
}
{df-hf,df_basis=jk
wf,,,$multiplicity-1
print,orbitals
maxit,300}
{df-cabs,gem_beta=0.9,df_basis=df,df_basis_exch=jk,ri_basis=ri,thrcabs=1d-9,thrcabs_rel=1d-9;explicit,ignore_bad_singl=1}
