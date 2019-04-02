opam init -a -y
opam update -y
opam upgrade -y
opam switch create 4.06.1 -y
opam switch set 4.06.1 -y
eval `opam env`
rm -rf tezos
git clone https://gitlab.com/tezos/tezos.git/
cd tezos 
gmake build-deps 
gmake
./tezos-node run
