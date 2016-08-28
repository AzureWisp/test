
_pq = _pq or {}

_pq.cfg = {}

/*/
	How many hours a day will this run?
		number/string
		0 - 24
	If the number is above 24 then it will be random. 
/*/
_pq.cfg[1] = 24

/*/
	At what time will the purge start in the hour?
		number
		0 - 60
		61 - math.huge
	If the number is above 60 then it will be random.
/*/
_pq.cfg[2] = 10

/*/
	How many people are being tracked when purge is active?
		number
		0 - game.MaxPlayers()
	If the number is above game.MaxPlayers() then it will be 5.
/*/
_pq.cfg[3] = 5

/*/
	How many people are being rewarded when the purge ends?
		number
		0 - game.MaxPlayers()
	If the number is above game.MaxPlayers() then it will be 3.
/*/
_pq.cfg[4] = 3

/*/
	What are the rewards?
		string/number, table{ string/number, string/number, string... } 
		{ "balrog" }
		{ 5000 }
		{ "random", { 1000, 5000 } }
		{ "random", { "balrog", "bak", "steyr_aug" } }
/*/
_pq.cfg[5] = {
	[1] = { 
		{ "fiveseven" },
		{ "random", { 500, 1000 } }
	},
	[2] = {
		{ "random", { 100, 500 } }
	}
}