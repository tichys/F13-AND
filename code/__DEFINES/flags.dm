
/// Return this from `/datum/component/Initialize` or `datum/component/OnTransfer` to have the component be deleted if it's applied to an incorrect type.
/// `parent` must not be modified if this is to be returned.
/// This will be noted in the runtime logs
#define COMPONENT_INCOMPATIBLE 1
/// Returned in PostTransfer to prevent transfer, similar to `COMPONENT_INCOMPATIBLE`
#define COMPONENT_NOTRANSFER 2

/// Return value to cancel attaching
#define ELEMENT_INCOMPATIBLE 1

// /datum/element flags
/// Causes the detach proc to be called when the host object is being deleted
#define ELEMENT_DETACH		(1 << 0)
/**
 * Only elements created with the same arguments given after `id_arg_index` share an element instance
 * The arguments are the same when the text and number values are the same and all other values have the same ref
 */
#define ELEMENT_BESPOKE		(1 << 1)


#define ALL_CARDINALS (NORTH|SOUTH|EAST|WEST)


/*
	These defines are specific to the atom/flags_1 bitmask
*/
#define ALL (~0) //For convenience.
#define NONE 0

//for convenience
#define ENABLE_BITFIELD(variable, flag) (variable |= (flag))
#define DISABLE_BITFIELD(variable, flag) (variable &= ~(flag))
#define CHECK_BITFIELD(variable, flag) (variable & (flag))
#define TOGGLE_BITFIELD(variable, flag) (variable ^= (flag))

GLOBAL_LIST_INIT(bitflags, list(1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768))

// for /datum/var/datum_flags
#define DF_USE_TAG		(1<<0)
#define DF_VAR_EDITED	(1<<1)
#define DF_ISPROCESSING (1<<2)

//FLAGS BITMASK

#define HEAR_1						(1<<3)		// This flag is what recursive_hear_check() uses to determine wether to add an item to the hearer list or not.
#define CHECK_RICOCHET_1			(1<<4)		// Projectiels will check ricochet on things impacted that have this.
#define CONDUCT_1					(1<<5)		// conducts electricity (metal etc.)
#define NODECONSTRUCT_1				(1<<7)		// For machines and structures that should not break into parts, eg, holodeck stuff
#define OVERLAY_QUEUED_1			(1<<8)		// atom queued to SSoverlay
#define ON_BORDER_1					(1<<9)		// item has priority to check when entering or leaving
#define PREVENT_CLICK_UNDER_1		(1<<11)	    //Prevent clicking things below it on the same turf eg. doors/ fulltile windows
#define HOLOGRAM_1					(1<<12)
#define TESLA_IGNORE_1				(1<<13)     // TESLA_IGNORE grants immunity from being targeted by tesla-style electricity
#define INITIALIZED_1				(1<<14)     //Whether /atom/Initialize() has already run for the object
#define ADMIN_SPAWNED_1			    (1<<15) 	//was this spawned by an admin? used for stat tracking stuff.

//turf-only flags
#define NOJAUNT_1					(1<<0)
#define UNUSED_RESERVATION_TURF_1	(1<<1)
#define CAN_BE_DIRTY_1				(1<<2)      // If a turf can be made dirty at roundstart. This is also used in areas.
#define NO_LAVA_GEN_1				(1<<6) 		//Blocks lava rivers being generated on the turf
#define NO_RUINS_1					(1<<10) 	//Blocks ruins spawning on the turf
#define CAN_HAVE_NATURE				(1<<16)
#define ADJACENCIES_OVERLAY			(1<<17)

// flags_2, because we ran out of bits


#define GLOBAL_LIGHT_TURF_2         (1<<0)     //Sets any light emitted by this turf to GLOBAL_LIGHTING, isn't affected by other GLOBAL_LIGHTING lights
#define BLOCK_RADIO_2               (1<<1)     //Check if turf is blocking radio signals (because underground, or something) - encyption keys override


/*
	These defines are used specifically with the atom/pass_flags bitmask
	the atom/checkpass() proc uses them (tables will call movable atom checkpass(PASSTABLE) for example)
*/
//flags for pass_flags
#define PASSTABLE		(1<<0)
#define PASSGLASS		(1<<1)
#define PASSGRILLE		(1<<2)
#define PASSBLOB		(1<<3)
#define PASSMOB			(1<<4)
#define PASSCLOSEDTURF	(1<<5)
#define LETPASSTHROW	(1<<6)
#define PASSCRAWL	    (1<<7)

//Movement Types
#define GROUND (1<<0)
#define FLYING (1<<1)

// Flags for reagents
#define REAGENT_NOREACT (1<<0)

//Fire and Acid stuff, for resistance_flags
#define LAVA_PROOF		(1<<0)
#define FIRE_PROOF		(1<<1) //100% immune to fire damage (but not necessarily to lava or heat)
#define FLAMMABLE		(1<<2)
#define ON_FIRE			(1<<3)
#define UNACIDABLE		(1<<4) //acid can't even appear on it, let alone melt it.
#define ACID_PROOF		(1<<5) //acid stuck on it doesn't melt it.
#define INDESTRUCTIBLE	(1<<6) //doesn't take damage
#define FREEZE_PROOF	(1<<7) //can't be frozen

//tesla_zap
#define TESLA_MACHINE_EXPLOSIVE		(1<<0)
#define TESLA_ALLOW_DUPLICATES		(1<<1)
#define TESLA_OBJ_DAMAGE			(1<<2)
#define TESLA_MOB_DAMAGE			(1<<3)
#define TESLA_MOB_STUN				(1<<4)

#define TESLA_DEFAULT_FLAGS ALL

//EMP protection
#define EMP_PROTECT_SELF (1<<0)
#define EMP_PROTECT_CONTENTS (1<<1)
#define EMP_PROTECT_WIRES (1<<2)

//FACTIONS
#define HAVE_FREQ 1
#define HAVE_FLAG 2
#define DONATE 4