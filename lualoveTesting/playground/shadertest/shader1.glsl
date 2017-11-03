


uniform number time;
uniform vec2 resolution;
uniform vec2 offset;
uniform sampler2D backbuffer;

void main( void )
{
	number mx = max( resolution.x, resolution.y );
	vec2 uv = (gl_FragCoord.xy - resolution.xy*0.5)/mx;

	uv += offset*0.1;

	number r = 0.7;
	uv *= mat2(
		r, -r,
		-r, r );

	number y = uv.y*mx/20.2 - time*3.0;
	number f = fract( y );
	f = (max( 0.4, min( f, 1.1 - f ) ) + 0.4)*5.0;

	vec3 color =
		vec3(
			mod( y, 0.2 )*f,
			mod( y, 1.1 )*f,
			mod( y, 1.1 )*f )*
		abs( sin( mod(
			-0.59 - uv.x,
			uv.y - 0.99 ) ) );

	color = mix(
		Texel(
			backbuffer,
			gl_FragCoord.xy/mx ).rgb,
		color,
		0.99 );

	gl_FragColor = vec4( color, 0.2 );
}

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 pixel_coords){
    vec2 fragCoord = texture_coords * iResolution.xy;
    mainImage( color, fragCoord );
    return color;
}