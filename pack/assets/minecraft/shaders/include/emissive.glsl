// Emissive item rules. Plain GLSL with no imports so every version can include it.

// Models tinted #32FFFF (constant tint 3342335) render fullbright.
bool is_fullbright_tint(vec4 color) {
    return all(lessThan(abs(color.rgb - vec3(50.0 / 255.0, 1.0, 1.0)), vec3(0.5 / 255.0)));
}

// Texture pixels with alpha 252 glow: unlit and drawn fully opaque.
bool is_emissive_alpha(float alpha) {
    return int(round(alpha * 255.0)) == 252;
}
