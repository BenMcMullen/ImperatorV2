// @description PB CD
priming = false;
firing = false;
with (obj_payloadParticleCannonBeam) {
    instance_destroy();
}
global.frigateParticleCannonFiring = false;
image_index= 0;
alarm[0]= 600;