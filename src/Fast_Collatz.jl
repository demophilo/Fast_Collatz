module Fast_Collatz

struct Pow2Int
	mant::UInt128   # always odd
	exp::UInt32

	# Inner constructor enforces the invariant
	function Pow2Int(m::UInt128, e::UInt32)
		if iseven(m)
			throw(ArgumentError("Mantissa must be odd!"))
		end
		new(m, e)
	end
end



end # module Fast_Collatz
