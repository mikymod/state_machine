sprite_index = actor_spr;

var key_up = input_manager_obj.key_up;
var key_down = input_manager_obj.key_down;
var key_left = input_manager_obj.key_left;
var key_right = input_manager_obj.key_right;
var key_attack = input_manager_obj.key_a;

if (key_up || key_down || key_left || key_right)
{
	state_switch(ActorState.Run, true);
}
else if (key_attack)
{
	state_switch(ActorState.Attack, true);
}

vel_x = 0;
vel_y = 0;