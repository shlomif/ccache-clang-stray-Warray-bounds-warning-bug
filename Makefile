all:

CCACHE_CLANG = $(HOME)/bin/clang
SYSTEM_CLANG = /usr/bin/clang

bad:
	 $(CCACHE_CLANG) -DFCS_COMPILE_DEBUG_FUNCTIONS=1 -DFCS_DBM_USE_LIBAVL=1 -DFCS_DBM_WITHOUT_CACHES=1 -DFCS_DEBONDT_DELTA_STATES=1 -I/home/shlomif/progs/freecell/git/fc-solve/fc-solve/source/libavl -I/home/shlomif/progs/freecell/git/fc-solve/fc-solve/B -I/home/shlomif/progs/freecell/git/fc-solve/fc-solve/source -I/home/shlomif/progs/freecell/git/fc-solve/fc-solve/source/patsolve-shlomif/patsolve  -O2 -g -DNDEBUG   -fvisibility=hidden -march=corei7-avx -fomit-frame-pointer -c pi_make_microsoft_freecell_board.c

good:
	$(SYSTEM_CLANG) -Warray-bounds -DFCS_COMPILE_DEBUG_FUNCTIONS=1 -DFCS_DBM_USE_LIBAVL=1 -DFCS_DBM_WITHOUT_CACHES=1 -DFCS_DEBONDT_DELTA_STATES=1 -I/home/shlomif/progs/freecell/git/fc-solve/fc-solve/source/libavl -I/home/shlomif/progs/freecell/git/fc-solve/fc-solve/B -I/home/shlomif/progs/freecell/git/fc-solve/fc-solve/source -I/home/shlomif/progs/freecell/git/fc-solve/fc-solve/source/patsolve-shlomif/patsolve  -O2 -g -DNDEBUG   -fvisibility=hidden -march=corei7-avx -fomit-frame-pointer -c pi_make_microsoft_freecell_board.c
