project "Box2D"
    kind "StaticLib"
    language "C++"

    targetdir ("%{wks.location}/bin/" .. bin_folder .. "/") -- make a variable called "bin_folder" in main premake5.lua file
    objdir ("%{wks.location}/bin/" .. bin_folder .. "/obj")

    files {
        "src/**.cpp",
        "src/**.h",
    }
    includedirs {
        "include"
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release_Debug"
		runtime "Release"
		optimize "on"

	filter "configurations:Production"
		runtime "Release"
		optimize "on"
		symbols "off"
