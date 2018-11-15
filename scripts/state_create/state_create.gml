/// @desc state_create
/// @arg enum
/// @arg script_id
/// Create a state

ds_map_replace(state_map, argument[0], argument[1]);
ds_map_replace(state_keys, argument[1], argument[0]);