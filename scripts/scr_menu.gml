switch (mpos){
    // Play
    case 0: 
    {
        room_goto(rm_level1);
        break;
    }
    // Quit
    case 1: 
    {
        game_end();
        break;
    }
    default:
    {
        break;
    }
}
