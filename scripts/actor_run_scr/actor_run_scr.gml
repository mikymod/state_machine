sprite_index = actor_spr;

var key_up    = input_manager_obj.key_up;
var key_down  = input_manager_obj.key_down;
var key_left  = input_manager_obj.key_left;
var key_right = input_manager_obj.key_right;
var key_attack = input_manager_obj.key_a;

if (key_up)	vel_y = -2;
else if (key_down) vel_y = 2;
else vel_y = 0;

if (key_left) vel_x = -2;
else if (key_right) vel_x = 2;
else vel_x = 0;

if (key_attack)
{
	vel_x = 0;
	vel_y = 0;
	state_switch(ActorState.Attack, true);
}

if (!key_up && !key_down && !key_left && !key_right)
{
	vel_x = 0;
	vel_y = 0;
	state_switch(ActorState.Idle);
}