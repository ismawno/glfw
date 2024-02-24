project "glfw"
language "C"

staticruntime "off"
kind "StaticLib"

targetdir("bin/" .. outputdir)
objdir("build/" .. outputdir)

files
{
   "include/**.h",
   "src/glfw_config.h",
   "src/context.c",
   "src/egl_context.c",
   "src/init.c",
   "src/input.c",
   "src/monitor.c",
   "src/vulkan.c",
   "src/window.c",
   "src/internal.h",
   "src/platform.h",
   "src/mappings.h",
   "src/platform.c",
   "src/egl_context.c",
   "src/osmesa_context.c",
   "src/null_platform.h",
   "src/null_joystick.h",
   "src/null_init.c",
   "src/null_monitor.c",
   "src/null_window.c",
   "src/null_joystick.c"
}

filter "system:macosx"
   pic "On"

   files
   {
      "src/cocoa_platform.h",
      "src/cocoa_joystick.h",
      "src/cocoa_time.h",
      "src/cocoa_time.c",
      "src/posix_thread.h",
      "src/posix_module.c",
      "src/posix_thread.c",
      "src/cocoa_init.m",
      "src/cocoa_joystick.m",
      "src/cocoa_monitor.m",
      "src/cocoa_window.m",
      "src/nsgl_context.m"
   }

   defines "_GLFW_COCOA"

filter "system:windows"

   files
   {
      "src/win32_init.c",
      "src/win32_joystick.c",
      "src/win32_monitor.c",
      "src/win32_time.h",
      "src/win32_thread.h",
      "src/win32_time.c",
      "src/win32_thread.c",
      "src/win32_module.c",
      "src/win32_window.c",
      "src/wgl_context.c",
   }

   defines 
   { 
      "_GLFW_WIN32",
      "_CRT_SECURE_NO_WARNINGS"
   }

