 local enemy = ...

-- Red Pengator.
sol.main.load_file("enemies/generic_towards_hero")(enemy)
enemy:set_properties({
  sprite = "enemies/" .. enemy:get_breed(),
  life = 12,
  damage = 12,
  normal_speed = 32,
  faster_speed = 48,
  fire_reaction = 6,
  movement_create = function()
    local m = sol.movement.create("random")
    m:set_smooth(true)
    return m
  end
})