pragma experimental SMTChecker;

contract C {
	uint[][] a;
	uint[][][] c;
	uint[] d;
	function f() public {
		a.push();
		uint[] storage b = a[0];
		c[0][0][0] = 12;
		d[5] = 7;
		b.push(8);
		assert(a[0].length == 0);
		// Safe but knowledge about `c` is erased because `b` could be pointing to `c[x][y]`.
		assert(c[0][0][0] == 12);
		// Safe but knowledge about `d` is erased because `b` could be pointing to `d`.
		// Removed assertion because current Spacer seg faults in cex generation.
		//assert(d[5] == 7);
	}
}
// ----
// Warning 6328: (193-217): CHC: Assertion violation happens here.\nCounterexample:\na = [[12, 12, 12, 12, 12, 12, 12, 6, 12, 8, 12, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12], [15, 15], [15, 15], [15, 15], [15, 15], [15, 15], [15, 15], [15, 15], [15, 15], [15, 15], [15, 15], [15, 15], [15, 15], [15, 15], [15, 15], [15, 15]], c = [], d = []\n\n\n\nTransaction trace:\nconstructor()\nState: a = [], c = [], d = []\nf()
// Warning 6328: (309-333): CHC: Assertion violation happens here.\nCounterexample:\na = [[24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 16, 24, 24, 24, 24, 24, 24, 24, 24, 17, 24, 20, 24, 22, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27], [27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27]], c = [[[3, 15, 15, 15, 15, 15], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35], [35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]], [[41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41], [41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41]]], d = []\n\n\n\nTransaction trace:\nconstructor()\nState: a = [], c = [], d = []\nf()
