{
A brings '11' and '22' 
 A by 1 number seq in .A
  take gor = brings [A.A.B.B.A.A]
    gor = 3 As B(11122) popups (nosign!!)
      gor = form !B folowing brings '11'
        B brings '22' and '11' 
	  B by 1 number seq in .B
	   take gor = brings [B.B.B.B.B.B]
	   }
{
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
