
_pq = _pq or {}

local inc = { "pq.server/", ".lua" {
	"pq.log",
	"pq.base",
	"pq.score",
	"pq.timer",
	"pq.config",
	"pq.library",
} }
for a, b in ipairs( inc[3] ) do
	include( inc[1]..b..inc[2] )
end

local csl = { "pq.client/", ".lua" {
} }
for a, b in ipairs( csl[3] ) do
	AddCSLuaFile( csl[1]..b..csl[2] )
end

do
	_pq.Print( [[

	   _  _  _
	 _| |_\||/
	|_   _|
	  |_|
	Purge.

	]], 4 )
end

local cfg = {
	function() if ( _pq.cfg[1] < 24 ) then return 1, math.random( 0, 24 ) end end,
	function() if ( _pq.cfg[2] < 60 ) then return 2, math.random( 0, 60 ) end end,
	function() if ( _pq.cfg[3] < game.MaxPlayers() ) then return 3, 5 end end,
	function() if ( _pq.cfg[4] < game.MaxPlayers() ) then return 4, 3 end end,
}
for a = 1, #cfg, 1 do
	local w, v = cfg[a]
	_pq.cfg[w] = v
end

do
	_pq.Print( [[ +" has finished loading! ]], 4 )
end