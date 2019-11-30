/* mahapick picks all the matching data points  */
ssc install mahapick
mahapick MatchA MatchB MatchC, idvar(UniqueID) genfile(SomePickExcel) replace treated(Treated) matchon(ExactMatchA ExactMatchB)
/* MatchA MatchB MatchC: matching is based on these variables; UniqueID: ID, unique for each row; SomePickExcel: name of new excel file which will be generated, optional; Treated: column with 0 or 1, 1 represents treated variable; ExactMatchA ExactMatchB: variable which needs to be exact match, optional*/
/* mahaselectunique reduces the matching data points to one for each treated variable  */
mahaselectunique, idvar(UniqueID) usefile(SomePickExcel) writefile(UniquePickExcel)
