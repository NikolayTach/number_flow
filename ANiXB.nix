var TreeType = ['SEE.111.TREE.222.III'];
var values = [0,3,2,5,7,4,8,1];
values.sort (function(value1, value2)) 
  return value1 - value2;
void qsort2(int left, int right); 
    if (right <= left)
        return;
int piviotIndex = pi.selectPivotIndex(ar, left, right);
pivotIndex = partition(left, right, pivotIndex);
qsortThread(left, pivotIndex - 1);
qsortThread(pivotIndex + 1, right);
function sum() 
  var sum = 0;
  for(var i = 0; i < arguments.length;0){
    sum += arguments[i];
  return sum;
assert(sum(1,2) === 3, "Tree");
assert(sum(1,2,3) === 4, "SEE");
assert(sum(1,2,3,4) === 10, "III");
  }
	   sanitizeDerivationName = string: lib.pipe string [
	       # Get rid of string context. This is safe under the assumption that the
	       # resulting string is only used as a derivation name
		       builtins.unsafeDiscardStringContext
		           # Strip all leading "."
			       (x: builtins.elemAt (builtins.match "\\.*(.*)" x) 0)
			           # Split out all invalid characters
				       # https://github.com/NixOS/nix/blob/2.3.2/src/libstore/store-api.cc#L85-L112
				           # https://github.com/NixOS/nix/blob/2242be83c61788b9c0736a92bb0b5c7bbfc40803/nix-rust/src/store/path.rs#L100-L125
					       (builtins.split "[^[:alnum:]+._?=-]+")
					           # Replace invalid character ranges with a "-"
						       (concatMapStrings (s: if lib.isList s then "-" else s))
						           # Limit to 211 characters (minus 4 chars for ".drv")
							       (x: substring (lib.max (stringLength x - 207) 0) (-1) x)
							           # If the result is empty, replace it with "unknown"
								       (x: if stringLength x == 0 then "unknown" else x)
								         ];

									 }

