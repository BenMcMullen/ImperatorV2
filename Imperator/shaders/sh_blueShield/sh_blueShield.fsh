//
// Fragment shader for a brighter see-through blue tint effect
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Sample the texture color
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Apply a brighter blue tint by increasing the intensity
    texColor.rgb = vec3(0.0, 0.3, 1.0); // Brighter blue color
    
    // Adjust the alpha (transparency) value to make the tint see-through
    float alpha = texColor.a; // Preserve the original alpha value
    texColor.a *= 0.5; // Reduce alpha to 50% transparency
    
    // Combine the tinted color with the object's original color and transparency
    gl_FragColor = texColor * v_vColour;
}
