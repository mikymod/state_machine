/// @desc state_switch(state <script or name>,<push to stack?>)
/// @arg name
/// @arg push_to_stack

var _push = true;
if (argument_count > 1)
    _push = argument[1];
  
if (ds_map_exists(state_map, argument[0]))
{
    state_next = ds_map_find_value(state_map, argument[0]);
}
else
{
    show_debug_message("Tried to switch to a non-existent state.  Moving to default state.")
    state_next = ds_map_find_first(state_map);
}

if (_push) 
    ds_stack_push(state_stack, state_next); // Add state to history
