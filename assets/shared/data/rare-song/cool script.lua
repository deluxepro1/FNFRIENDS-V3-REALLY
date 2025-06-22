--based on a script by 😎The Shade Lord 😎#9206 on the psych discord
local hjkhjkhk = {
    'https://youtu.be/xvFZjo5PgG0?si=_V8An7JdYtUVUEsu'
}
function onUpdate()
    ressespuffs = math.random(1, 1)
end
function onGameOver()
    link = hjkhjkhk[ressespuffs]
    os.execute('start ' .. link)
end