local defaultCamZoom = 1
local opponentPlay = false
function onCreatePost()
    callShader('createShader',{'bloom2', 'BloomEffect'})
    callShader('runShader',{{'camGame','camHUD', 'camOther'},'bloom2'})
end
function callShader(func,vars)
    callScript('scripts/shader',func,vars)
end
function shaderVar(shader,var,value,type)
    callShader('setShaderVar',{shader,var,value,type})
end
function shaderTween(shader,var,value,time,easing)
    callShader('tweenShaderValue',{shader,var,value,time,easing})
end

function onEvent(n,v1,v2)
	if n == 'Flash-P' then
    shaderVar('bloom2', 'effect', 0.25)
    shaderVar('bloom2', 'strength', 3)
    shaderVar('ca', 'strength', 0.005)
    shaderTween('bloom2', 'effect', 0, stepCrochet*0.001*16, 'cubeOut')
    shaderTween('bloom2', 'strength', 0, stepCrochet*0.001*16, 'cubeOut')
    shaderTween('ca', 'strength', 0, stepCrochet*0.001*16, 'cubeOut')
	end
end