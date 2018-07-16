#pragma once

#include <cstdint>

#ifdef WINDOWS
#	ifdef FIRST_LIB_DLL
#		ifdef FIRST_LIB_DLL_EXPORTS
#			define FIRST_API __declspec(dllexport)
#		else
#			define FIRST_API __declspec(dllimport)
#		endif
#	else
#		define FIRST_API
#	endif
#else
#	ifdef SECOND_LIB_DLL
#		ifdef SECOND_LIB_DLL_EXPORTS
#			define SECOND_API __attribute__ ((visibility("default")))
#		else
#			define SECOND_API __attribute__ ((visibility("default")))
#		endif
#	else
#		define FIRST_API
#	endif
#endif

extern "C" {
SECOND_API uint32_t CreateSecond();
SECOND_API void DeleteSecond(uint32_t);
}