file(READ "${RunCMake_TEST_BINARY_DIR}/build.ninja" build_ninja)
if(NOT build_ninja MATCHES "build empty_cmd_output[^:]*: phony")
  set(RunCMake_TEST_FAILED
    "Expected evaluated-empty custom command to generate a phony Ninja rule")
endif()
