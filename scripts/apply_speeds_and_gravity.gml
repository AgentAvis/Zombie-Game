oldgrounded = grounded
grounded = false // am i on the ground

if y >= gr {
    vsp = 0 y = gr // i am on or under the ground, stop me
    grounded = true //save that i'm on the ground
} else {
    grav_add_on = global.grav * mass //i'm flying through the air, wee!
    if vsp + grav_add_on < global.termvel { vsp += grav_add_on }
    if vsp > global.termvel { vsp *= .99 } //air drag
}



if !grounded { //if we aren't on the ground, check for roof collisions
    with (oRoof_top) { 
        if place_meeting(x,y,other) {
            with (other) {
                if vsp < 0 {
                    //we're going up, so ignore roof collisions
                } else {
                    if y > other.y+9 {
                        //we're over half way under, just fall
                    } else {
                        //snap us onto the roof and cancel out all vsp
                        vsp = 0
                        y = other.y+8
                        grounded = true
                    }
                }
            }    
        }
    }
}

x += hsp * global.timescale
y += vsp * global.timescale


if ((oldgrounded = false) and (grounded = true)) { ysquish = .75 } else { ysquish = lerp(ysquish,1,.1) }
