vec3 distortShadowClipPos(vec3 shadowClipPos) {
    float distortionFactor = length(shadowClipPos.xy); // distance fromt he player in the shadow clip space
    distortionFactor += 0.1; // very small distances could maybe cause issues so this can reduce the distortion

    shadowClipPos.xy /= distortionFactor;
    shadowClipPos.z *= 0.5; // increases shadow distance on the Z axis, which helps when the sun is very low in the sky
    return shadowClipPos;
}