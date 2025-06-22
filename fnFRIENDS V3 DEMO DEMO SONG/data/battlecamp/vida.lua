-- Variables globales
local healthImages = { -- Tabla con las imágenes y sus rangos
    {image = 'vidaf1', minHealth = 0.75, maxHealth = 1.0}, -- Imagen 1: 75%-100% vida
    {image = 'vidaf2', minHealth = 0.50, maxHealth = 0.74}, -- Imagen 2: 50%-74% vida
    {image = 'vidaf3', minHealth = 0.25, maxHealth = 0.49}, -- Imagen 3: 25%-49% vida
    {image = 'vidaf4', minHealth = 0.00, maxHealth = 0.24}, -- Imagen 4: 0%-24% vida
}
local currentImage = nil -- Imagen actualmente mostrada

function onCreate()
    -- Crear sprites para las imágenes, pero mantenerlos ocultos inicialmente
    for _, data in ipairs(healthImages) do
        makeLuaSprite(data.image, data.image, 0, 0) -- Ajusta las coordenadas según tu preferencia
        setObjectCamera(data.image, 'hud') -- Ubicar en el HUD
        setProperty(data.image .. '.alpha', 0) -- Iniciar invisibles
        addLuaSprite(data.image, true)
    end
end

function onUpdate()
    -- Obtener la vida actual
    local health = getProperty('health')
    
    -- Determinar la imagen correspondiente al rango de vida
    for _, data in ipairs(healthImages) do
        if health >= data.minHealth and health <= data.maxHealth then
            if currentImage ~= data.image then
                -- Cambiar la imagen mostrada
                if currentImage then
                    setProperty(currentImage .. '.alpha', 0) -- Ocultar la imagen actual
                end
                currentImage = data.image
                setProperty(currentImage .. '.alpha', 1) -- Mostrar la nueva imagen
            end
            break
        end
    end
end