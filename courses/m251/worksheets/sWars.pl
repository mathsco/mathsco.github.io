female(leia).
female(mara).
female(padme).
male(jaina).
male(luke).
male(anakin).
male(maul).
male(han).
male(yoda).
male(anakin).
male(anakin2).
male(jacen).
male(obi-wan).
wife(leia, han).
wife(mara, luke).
wife(padme, anakin).
parent(anakin, luke).
parent(anakin, leia).
parent(padme, leia).
parent(padme, luke).
parent(han, jaina).
parent(leia, jaina).
parent(han, jacen).
parent(leia, jacen).
parent(han, anakin2).
parent(leia, anakin2).
jedi(anakin).
jedi(yoda).
jedi(obi-wan).
jedi(luke).
jedi(qui-gon).
jedi(qui-gon).
jedi(dooku).
jedi(kyleKatarn).
sith(vader, anakin).
sith(sidious, palpatine).
sith(maul,maul).
sith(dooku,dooku).
master(sidious, maul).
master(sidious, vader).
master(sidious, dooku).
master(sidious, mara).
master(luke, mara).
master(kyleKatarn, mara).
master(qui-gon, obi-wan).
master(dooku, qui-gon).
master(yoda, luke).
master(yoda, dooku).
master(obi-wan, anakin).

husband(X, Y) :- wife(Y, X).
