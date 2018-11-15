/// @desc Actor Create

enum ActorState
{
    Idle,
    Run,
    Attack,
};

state_machine_init();

state_create(ActorState.Idle,   actor_idle_scr);
state_create(ActorState.Run,    actor_run_scr);
state_create(ActorState.Attack, actor_attack_scr);

state_set_default(ActorState.Idle);

vel_x = 0;
vel_y = 0;
