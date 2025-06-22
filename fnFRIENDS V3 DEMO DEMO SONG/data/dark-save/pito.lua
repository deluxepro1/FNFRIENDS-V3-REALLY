-- Configuración de los eventos y tiempos
local events = {
    { time = 65, actions = { -- Minuto 1:19
        { type = "event", name = "change", value1 = "fase2", value2 = "" },
        { type = "changeCharacter", target = "bf", character = "gaelexe" },
        { type = "changeCharacter", target = "dad", character = "jcexe" }
    }},
    { time = 126, actions = { -- Minuto 2:20
        { type = "event", name = "change", value1 = "fire", value2 = "fire" },
        { type = "changeCharacter", target = "bf", character = "gaelexe01" },
        { type = "changeCharacter", target = "dad", character = "jcexe01" }
    }},
    { time = 161, actions = { -- Minuto 3:05
        { type = "event", name = "change", value1 = "fase1", value2 = "" },
        { type = "event", name = "change", value1 = "fire", value2 = "fire" },
        { type = "changeCharacter", target = "bf", character = "a" },
        { type = "changeCharacter", target = "dad", character = "jcexe11" }
    }},
    { time = 191, actions = { -- Minuto 3:25
        { type = "event", name = "change", value1 = "fire", value2 = "fire" },
        { type = "changeCharacter", target = "bf", character = "gaelexe01" },
        { type = "changeCharacter", target = "dad", character = "jcexe01" },
        { type = "event", name = "Hide HealthBar", value1 = "", value2 = "" }
    }}
}

function onUpdate(elapsed)
    local currentTime = math.floor(getSongPosition() / 1000) -- Tiempo actual en segundos

    for _, event in ipairs(events) do
        if currentTime == event.time and not event.triggered then
            for _, action in ipairs(event.actions) do
                if action.type == "event" then
                    triggerEvent(action.name, action.value1, action.value2)
                elseif action.type == "changeCharacter" then
                    triggerEvent("Change Character", action.target, action.character)
                end
            end
            event.triggered = true -- Evitar ejecutar múltiples veces
        end
    end
end