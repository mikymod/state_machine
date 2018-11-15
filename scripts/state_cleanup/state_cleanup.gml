/// @desc state_cleanup
/// Cleanup data structures
/// Only called in destroy event

ds_map_destroy(state_map);
ds_map_destroy(state_keys);
ds_stack_destroy(state_stack);