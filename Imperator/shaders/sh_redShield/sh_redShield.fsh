//
// Fragment shader for a brighter cherry red tint effect
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Sample the texture color
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Apply a brighter cherry red tint by increasing the intensity
    texColor.rgb = vec3(1.0, 0.3, 0.3); // Brighter cherry red color
    
    // Adjust the alpha (transparency) value for less transparency
    float alpha = texColor.a; // Preserve the original alpha value
    texColor.a *= 0.8; // Reduce alpha to 80% transparency
    
    // Combine the tinted color with the object's original color and transparency
    gl_FragColor = texColor * v_vColour;
}
