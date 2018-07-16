include_directories(

)

set(SOURCES_SECOND_LIB
		../../src/Second/Second.h
		../../src/Second/private/Second.cpp
)

add_library(Second SHARED ${SOURCES_SECOND_LIB})

set_target_properties(Second PROPERTIES COMPILE_FLAGS -DSECOND_LIB_DLL)
add_definitions(-DSECOND_LIB_DLL_EXPORTS)

set_target_properties(
		Second
		PROPERTIES
		LINK_FLAGS "-lrt"
    )


target_link_libraries (Second )
	

install(TARGETS Second
		CONFIGURATIONS Release Debug RelWithDebInfo
		RUNTIME DESTINATION lib COMPONENT Libraries
		LIBRARY DESTINATION lib COMPONENT Libraries
		ARCHIVE DESTINATION lib COMPONENT Libraries
		)

install(DIRECTORY ${Second_SOURCE_DIR}/../../include  DESTINATION include
		PATTERN ".svn" EXCLUDE
		PATTERN ".hg" EXCLUDE
		PATTERN "${Second_SOURCE_DIR}/../../include/*"
		PERMISSIONS OWNER_WRITE OWNER_READ
		GROUP_EXECUTE GROUP_READ
		)

