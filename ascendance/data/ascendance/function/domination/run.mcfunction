data modify storage super_server:ascendance kill set string entity @a[scores={MAIN_Game=1,AS_Mode=1,AS_Kills=1..},limit=1] UUID[0]
data modify storage super_server:ascendance death set string entity @a[scores={MAIN_Game=1,AS_Mode=1,AS_Deaths=1..},limit=1] UUID[0]

function ascendance:domination/macros/kill with storage super_server:ascendance
function ascendance:domination/macros/death with storage super_server:ascendance