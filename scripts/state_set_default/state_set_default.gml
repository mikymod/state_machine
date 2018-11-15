/// @desc state_set_default
/// @arg enum
/// Sets the default state (which is even the first running state) for the object. 
/// Only called in the create event.

state = ds_map_find_value(state_map, argument[0]);
state_next = state;
ds_stack_push(state_stack, state);
state_new = true;
