// Vertical
repeat(abs(vsp)) {
    if (!place_meeting(x, y + sign(vsp), par_tile))
        y += sign(vsp); 
    else {
        vsp = 0;
        break;
    }
}

// Horizontal
repeat(abs(hsp)) {
    // Move up slope
    if (place_meeting(x + sign(hsp), y, par_tile) && !place_meeting(x + sign(hsp), y - 1, par_tile))
        --y;
    
    // Move down slope
    if (!place_meeting(x + sign(hsp), y, par_tile) && !place_meeting(x + sign(hsp), y + 1, par_tile) && place_meeting(x + sign(hsp), y + 2, par_tile))
        ++y; 

    if (!place_meeting(x + sign(hsp), y, par_tile))
        x += sign(hsp); 
    else {
        hsp = 0;
        break;
    }
}

// Sprite Directional Correction
if(image_xscale == 0)
{
    image_xscale = 1;
}
