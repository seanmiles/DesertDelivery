switch (mpos){
    // Return to Menu
    case 0: 
    {
        global.pause = false;
        global.energy = 60;
        room_restart();
        break;
    }
    // Return to Menu
    case 1: 
    {
        global.pause = false;
        room_goto(rm_menu);
        break;
    }
    // Quit
    case 2: 
    {
        game_end();
        break;
    }
    default:
    {
        break;
    }
}
