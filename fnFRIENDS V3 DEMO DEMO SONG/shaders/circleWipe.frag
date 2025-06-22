#pragma header
uniform float iTime;
uniform bool isNegative;

void main()
{
	vec2 uv = openfl_TextureCoordv;
	
    vec2 coords = uv * 2.0 - 1.0;						
    coords.x *= 1.77;

	if(isNegative){
		gl_FragColor = texture2D(bitmap, uv);
	}else{
		gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
	}			

	float l_time = min(iTime / 2.5, 1.0);
    float l_radius = 2.2;
    
	if (length(coords) < l_time * l_radius) 
    {   
	    if(isNegative){
			vec4 textureColor = texture2D(bitmap,uv);
			gl_FragColor = vec4(1.0 - textureColor.r,1.0 -textureColor.g,1.0 -textureColor.b,1);
		}else{
			gl_FragColor = texture2D(bitmap, uv);
		}
    }
}