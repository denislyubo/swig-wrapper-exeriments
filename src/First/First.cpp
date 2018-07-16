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
#	ifdef FIRST_LIB_DLL
#		ifdef FIRST_LIB_DLL_EXPORTS
#			define FIRST_API __attribute__ ((visibility("default")))
#		else
#			define FIRST_API __attribute__ ((visibility("default")))
#		endif
#	else
#		define FIRST_API
#	endif
#endif

