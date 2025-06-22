-- Configuración
local resetTime = 0.01-- Tiempo en segundos para esperar antes de reiniciar la canción (puedes cambiarlo según lo necesites)
local playerAnim = 'gameOverAnim' -- Nombre de la animación de player 1 (asegurate de tenerla definida en los assets)
local gameOverSound = 'gdead' -- Nombre del sonido de game over (asegurate de tenerlo en los assets)

function onGameOver()
    -- Detener el tiempo (pausar todo)
    setProperty('timeBar.visible', false) -- Opcional: ocultar la barra de tiempo
    setProperty('timeBarBG.visible', false) -- Opcional: ocultar el fondo de la barra de tiempo

    -- Eliminar cualquier fondo negro u objetos no deseados
    removeLuaSprite('missFlash', true) -- Eliminar el fondo negro de fallos (si lo tienes)

    -- Hacer que los objetos no se muevan (se detienen en su lugar)
    setProperty('boyfriend.velocity.x', 0)
    setProperty('boyfriend.velocity.y', 0)
    setProperty('dad.velocity.x', 0)
    setProperty('dad.velocity.y', 0)

    -- Cancelar cualquier animación anterior de BF y reemplazarla por la nueva animación de Game Over
    objectPlayAnimation('boyfriend', playerAnim, true) -- Reemplaza la animación original con la nueva animación de Game Over

    -- Reproducir el sonido de game over
    playSound(gameOverSound)

    -- Esperar el tiempo definido y luego reiniciar la canción
    runTimer('resetSong', resetTime)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'resetSong' then
        -- Reiniciar la canción después del tiempo
        runHaxeCode([[
            game.restartSong();
        ]]) 
    end
end