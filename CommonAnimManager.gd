@tool 

class_name CommonAnimManager
extends Node

@export var anims: AnimationPlayer

var Idle : String
	
var toCrouch : String
var Crouch : String
var leaveCrouch : String

var JumpSquat : String
var JumpStartN : String
var JumpStartF : String
var JumpStartB : String
var JumpFallN : String
var JumpFallF : String
var JumpFallB : String
var JumpLand : String
	
var WalkF : String
var WalkB : String

var DashF : String
var DashB : String

var HurtHighLight : String
var HurtHighHard : String
var HurtLowLight : String
var HurtLowHard : String
var HurtCrouchLight : String
var HurtCrouchHard : String

var HurtLaunch : String
var HurtLaunchUp : String
var HurtSpin : String
var HurtTwirl : String
var HurtLand : String
var AirTech : String
var HurtBounce : String
var HurtWallbounce : String
var HurtWallbounceLand : String

var BlockStartHigh : String
var BlockStartLow : String
var BlockStartAir : String
	
var BlockHitHigh : String
var BlockHitLow : String
var BlockHitAir : String

func get_anim(a):
	return get(a)

func _get_property_list() -> Array[Dictionary]:
	var properties : Array[Dictionary] = []
	
	if anims:
		var anim_vals := []
		for anim in anims.get_animation_list():
			anim_vals.append(anim)
		properties.append({
			"name": "Idles",
			"type": TYPE_STRING,
			"usage": PROPERTY_USAGE_GROUP
		})
		properties.append({
			"name": "Idle",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals),
		},)
		properties.append({
			"name": "toCrouch",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "Crouch",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "leaveCrouch",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "Jumps",
			"type": TYPE_STRING,
			"usage": PROPERTY_USAGE_GROUP
		})
		properties.append({
			"name": "JumpSquat",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "JumpStartN",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "JumpStartF",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "JumpStartB",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "JumpFallN",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "JumpFallF",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "JumpFallB",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "JumpLand",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "Ground Movement",
			"type": TYPE_STRING,
			"usage": PROPERTY_USAGE_GROUP
		})
		properties.append({
			"name": "WalkF",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "WalkB",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "DashF",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "DashB",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "Ground Hurts",
			"type": TYPE_STRING,
			"usage": PROPERTY_USAGE_GROUP
		})
		properties.append({
			"name": "HurtHighLight",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "HurtHighHard",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "HurtLowLight",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "HurtLowHard",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		
		properties.append({
			"name": "Hurt Air",
			"type": TYPE_STRING,
			"usage": PROPERTY_USAGE_GROUP
		})
		properties.append({
			"name": "HurtLaunch",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "HurtLaunchUp",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "HurtSpin",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "HurtTwirl",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "AirTech",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		
		properties.append({
			"name": "Downed Hurts",
			"type": TYPE_STRING,
			"usage": PROPERTY_USAGE_GROUP
		})
		properties.append({
			"name": "HurtLand",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "HurtBounce",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		
		properties.append({
			"name": "Hurt Special",
			"type": TYPE_STRING,
			"usage": PROPERTY_USAGE_GROUP
		})
		properties.append({
			"name": "HurtWallbounce",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "HurtWallbounceLand",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		
		properties.append({
			"name": "Blocks",
			"type": TYPE_STRING,
			"usage": PROPERTY_USAGE_GROUP
		})
		properties.append({
			"name": "BlockStartHigh",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "BlockStartLow",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "BlockStartAir",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "BlockHitHigh",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "BlockHitLow",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
		properties.append({
			"name": "BlockHitAir",
			"type": TYPE_STRING,
			"hint": PROPERTY_HINT_ENUM,
			"hint_string": ",".join(anim_vals)
		},)
	return properties
