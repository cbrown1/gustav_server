

-- Documentation
-- http://www.unifiedremote.com/api

-- OS Library
-- http://www.unifiedremote.com/api/libs/os

local keyboard = require("keyboard");
local utf8 = require("utf8");
local script = libs.script;

local _cs = "python2 ~/psylab16/Python/test_pyro_client.py";

_running = false;

--@help Response 1
actions.resp = function(id)
	local cmd = string.gsub("_cs _id", "_cs", _cs);
	cmd = string.gsub(cmd, "_id", id);

	local pout = "";
	local presult = 0;
	local perr = "";

	local success, ex = pcall(function ()
		pout,perr,presult = libs.script.shell(cmd);
		-- sys.exit(0) = ,,0
		-- sys.exit('some message') = , some message, 1
	end);

	if (success) then
		layout.output.text = perr;
	else
		layout.output.text = "Error: " .. ex;
	end

end

--@help Start
actions.start = function()
	if _running == false then
		actions.resp("0");
		_running = true;
		layout.start.text = "Quit";
	else
		action.resp("-1");
		layout.output.text = "Experiment ended by participant";
	end
end

--@help Response 1
actions.resp01 = function()
	actions.resp("1")
end

--@help Response 2
actions.resp02 = function()
	actions.resp("2")
end

--@help Response 3
actions.resp03 = function()
	actions.resp("3")
end

--@help Response 4
actions.resp04 = function()
	actions.resp("4")
end

--@help Response 5
actions.resp05 = function()
	actions.resp("5")
end

--@help Response 6
actions.resp06 = function()
	actions.resp("6")
end

--@help Response 7
actions.resp07 = function()
	actions.resp("7")
end

--@help Response 8
actions.resp08 = function()
	actions.resp("8")
end

--@help Response 9
actions.resp09 = function()
	actions.resp("9")
end

--@help Response 10
actions.resp10 = function()
	actions.resp("10")
end

--@help Response 11
actions.resp11 = function()
	actions.resp("11")
end

--@help Response 12
actions.resp12 = function()
	actions.resp("12")
end

--@help Response 13
actions.resp13 = function()
	actions.resp("13")
end

--@help Response 14
actions.resp14 = function()
	actions.resp("14")
end

--@help Response 15
actions.resp15 = function()
	actions.resp("15")
end
