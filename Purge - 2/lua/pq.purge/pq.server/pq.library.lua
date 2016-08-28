
_pq = _pq or {}

local colors = {
	[1] = Color( 63, 255, 0 ),
	[2] = Color( 253, 238, 0 ),
	[3] = Color( 255, 36, 0 ),
	[4] = Color( 0, 127, 255 ),
}

_pq.Print = function( a, b )
	MsgC( colors[b], a.."\n" )
end