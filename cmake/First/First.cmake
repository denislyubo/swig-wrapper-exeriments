include_directories(

)

set(SOURCES_FIRST_LIB
		../../src/First/First.h
		../../src/First/First.cpp
)

add_library(First SHARED ${SOURCES_FIRST_LIB})

set_target_properties(First PROPERTIES COMPILE_FLAGS -DFIRST_LIB_DLL)
add_definitions(-DFIRST_LIB_DLL_EXPORTS)

set_target_properties(
		First
		PROPERTIES
		LINK_FLAGS "-lrt"
    )


target_link_libraries (First )
	

install(TARGETS First
		CONFIGURATIONS Release Debug RelWithDebInfo
		RUNTIME DESTINATION lib COMPONENT Libraries
		LIBRARY DESTINATION lib COMPONENT Libraries
		ARCHIVE DESTINATION lib COMPONENT Libraries
		)

install(DIRECTORY ${First_SOURCE_DIR}/../../include  DESTINATION include
		PATTERN ".svn" EXCLUDE
		PATTERN ".hg" EXCLUDE
		PATTERN "${First_SOURCE_DIR}/../../include/*"
		PERMISSIONS OWNER_WRITE OWNER_READ
		GROUP_EXECUTE GROUP_READ
		)

