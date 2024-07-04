-- premake5 build file
-- https://premake.github.io/

---@diagnostic disable
-- stylua: ignore start

require "premake-ninja.ninja"

require "hengine.premake5"

workspace "HeGame"
	configurations { "Debug", "Release" }
	platforms { "Linux", "Win64" }

	project "HeGame"
		kind "ConsoleApp"
		language "C++"
		targetdir "bin/%{cfg.buildcfg}"
		links { "raylib", "hengine/bin/hengine/Debug/Hengine:static" }

		libdirs { "hengine/src/hegine/**.hpp" }

		files {
			"src/**.hpp",
			"src/**.cpp"
		}

		filter "platforms:Linux"
			system "Linux"
			architecture "x86_64"

		filter "platforms:Win64"
			system "Windows"
			architecture "x86_64"

		filter "configurations:Debug"
			defines { "DEBUG" }
			symbols "On"

		filter "configurations:Release"
			defines { "NDEBUG" }
			optimize "On"

-- stylua: ignore end
