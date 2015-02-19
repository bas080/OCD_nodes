ocd = {}

ocd.init = function( )
  local mods = {
    'farming',
    'default',
    'flowers'
  }
  for i, mod in ipairs(mods) do
    if minetest.get_modpath( mod ) then
      dofile( minetest.get_modpath( "ocd_nodeboxes" ) .. "/" .. mod .. ".lua" )
    end
  end
end

ocd.node = function ( node, nodebox )
  minetest.override_item( node, {
    drawtype = "nodebox",
    inventory_image = nil,
    paramtype = "light",
    node_box = {
      type = "fixed",
      fixed = nodebox
    },
    collision_box = {
      type = "fixed",
      fixed = nodebox,
    },
    selection_box = {
      type = "fixed",
      fixed = nodebox,
    },
  })
end

ocd.node = function ( node, nodebox, texture )
  minetest.override_item( node, {
    drawtype = "nodebox",
    tiles = texture,
    inventory_image = nil,
    paramtype = "light",
    node_box = {
      type = "fixed",
      fixed = nodebox
    },
    collision_box = {
      type = "fixed",
      fixed = nodebox,
    },
    selection_box = {
      type = "fixed",
      fixed = nodebox,
    },
  })
end

ocd.init()
