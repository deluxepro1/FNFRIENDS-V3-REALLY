#pragma header
uniform float uBlocksize;

void main()
{
    vec2 blocks = openfl_TextureSize / uBlocksize;
    gl_FragColor = texture2D(bitmap, floor(openfl_TextureCoordv * blocks) / blocks);
}