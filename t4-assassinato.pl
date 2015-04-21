% Assassinada
vitima(anita).

% A consulta já diz rsrs
insano(adriano).
insano(maria).

% Interesse
pobre(bernardo).
pobre(bia).
pobre(pedro).
pobre(maria).
rico(adriano).
rico(caren).
rico(alice).
rico(henrique).

% Quem, dia e local
local(pedro, segunda, sm).
local(pedro, terca, sm).
local(pedro, quarta, poa).
local(pedro, quinta, sm).
local(pedro, sexta, apt).

local(caren, segunda, poa).
local(caren, terca, poa).
local(caren, quarta, poa).
local(caren, quinta, sm).
local(caren, sexta, apt).

local(henrique, segunda, apt).
local(henrique, terca, poa).
local(henrique, quarta, apt).
local(henrique, quinta, apt).
local(henrique, sexta, apt).

local(bia, segunda, apt).
local(bia, terca, poa).
local(bia, quarta, poa).
local(bia, quinta, sm).
local(bia, sexta, apt).

local(adriano, segunda, apt).
local(adriano, terca, apt).
local(adriano, quarta, sm).
local(adriano, quinta, apt).
local(adriano, sexta, apt).

local(alice, segunda, apt).
local(alice, terca, poa).
local(alice, quarta, poa).
local(alice, quinta, apt).
local(alice, sexta, apt).

local(bernardo, segunda, sm).
local(bernardo, terca, sm).
local(bernardo, quarta, poa).
local(bernardo, quinta, sm).
local(bernardo, sexta, apt).

local(maria, segunda, apt).
local(maria, terca, sm).
local(maria, quarta, sm).
local(maria, quinta, sm).
local(maria, sexta, apt).

% Casais
casal(anita,bernardo).
casal(caren,bernardo).
casal(pedro,anita).
casal(pedro,alice).
casal(alice,henrique).
casal(henrique,maria).
casal(maria,adriano).
casal(adriano,caren).

% Local do crime e a chave
apt(X) :- local(X,quinta,apt); local(X,sexta,apt).
chave(X) :- local(X,quarta,sm); local(X,terca,sm).

% Arma do crime
arma(X) : - local(X, quinta,poa); local(X,quarta,sm); local(X,quinta,apt); local(X,quarta,apt).	

% 1 dos motivos
ciumes(X,Y) :- casal(X,Z), casal(Y,Z).

% Arma, chave e quem estava no apt
acesso(X) :- arma(X), chave(X), apt(X).

% Motivo do assassinato
motivo(X) :- pobre(X); insano(X); ciumes(X,anita).

% Quem matou?
assassino(X) :- motivo(X),acesso(X). 