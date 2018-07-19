/*! made by www.steamcommunity.com/id/nubikkk/ */

if (!getroottable().rawin("state"))
{
	local entHolder = Entities.FindByClassname(null, "worldspawn");
	local entState = Entities.CreateByClassname("info_target");
	entHolder.SetOwner(entState);

	entState = entHolder.GetOwner();
	if (entState.ValidateScriptScope()) 
		::state <- entState.GetScriptScope();

	::state.exists <- function(var)
	{
		return ::state.rawin(var);
	}

	::state.define <- function(key, val)
	{
		if (!::state.exists(key))
			::state[key] <- val;
	}
}
