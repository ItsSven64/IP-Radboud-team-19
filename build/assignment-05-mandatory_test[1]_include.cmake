if(EXISTS "C:/Users/svend/Desktop/IP-Radboud-team-19/build/assignment-05-mandatory_test[1]_tests.cmake")
  include("C:/Users/svend/Desktop/IP-Radboud-team-19/build/assignment-05-mandatory_test[1]_tests.cmake")
else()
  add_test(assignment-05-mandatory_test_NOT_BUILT assignment-05-mandatory_test_NOT_BUILT)
endif()
