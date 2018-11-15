/// @desc state_machine_init
/// Initilize the variables required for the state engine.

state        = noone;             // Current script id
state_next   = state;             // Next script id
state_timer  = 0;                 // Step
state_map    = ds_map_create();   
state_keys   = ds_map_create();   // The inverse map of the state map.
state_stack  = ds_stack_create(); 
state_new    = true;              // true in the first frame of new state, false otherwise
state_var[0] = 0;                 // Useful for storing variables specific to a specific state.

//Add any new variables you might need for your game here.
// state_can_interrupt = true;
// Good examples might be
//      state_can_interrupt = false;
//      state_is_invincible = false;
//      state_direction = -1;