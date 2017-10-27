if y >= gr {
    vsp = 0 y = gr
} else {
    vsp += global.grav * mass//(ity)
    //hsp *= .9
}

x += hsp * global.timescale
y += vsp * global.timescale
