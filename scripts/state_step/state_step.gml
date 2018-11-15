/// @desc state_step
/// Only called in step event

if (state_next != state)
{
    state = state_next;
    state_timer = 0;
    state_new = true;
}
else
{
    state_timer++;
    state_new = false;
}

if(script_exists(state))
    script_execute(state)
else
    state_switch(ds_map_find_first(state_map)); // Switch to default state
