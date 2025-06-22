function onCreatePost()
    callShader('createShader',{'blur', 'BlurEffect'})
    callShader('runShader',{{'camGame','camHUD', 'camOther'},'blur'})
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
if n == 'blur' then
shaderVar('blur', 'strength', v1)
shaderTween('blur', 'strength', 0, stepCrochet*0.001*v2, 'linear')
end
end
