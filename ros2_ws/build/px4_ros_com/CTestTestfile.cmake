# CMake generated Testfile for 
# Source directory: /home/joshua_caratao/ros2_ws/src/px4_ros_com
# Build directory: /home/joshua_caratao/ros2_ws/build/px4_ros_com
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(copyright "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/copyright.xunit.xml" "--package-name" "px4_ros_com" "--output-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/ament_copyright/copyright.txt" "--command" "/opt/ros/foxy/bin/ament_copyright" "--xunit-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/copyright.xunit.xml")
set_tests_properties(copyright PROPERTIES  LABELS "copyright;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/joshua_caratao/ros2_ws/src/px4_ros_com" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_copyright/cmake/ament_copyright.cmake;41;ament_add_test;/opt/ros/foxy/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;18;ament_copyright;/opt/ros/foxy/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;128;ament_package;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;0;")
add_test(cppcheck "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/cppcheck.xunit.xml" "--package-name" "px4_ros_com" "--output-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/ament_cppcheck/cppcheck.txt" "--command" "/opt/ros/foxy/bin/ament_cppcheck" "--xunit-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/cppcheck.xunit.xml" "--include_dirs" "/home/joshua_caratao/ros2_ws/src/px4_ros_com/include" "/home/joshua_caratao/ros2_ws/src/px4_ros_com/include/px4_ros_com")
set_tests_properties(cppcheck PROPERTIES  LABELS "cppcheck;linter" TIMEOUT "300" WORKING_DIRECTORY "/home/joshua_caratao/ros2_ws/src/px4_ros_com" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_cppcheck/cmake/ament_cppcheck.cmake;61;ament_add_test;/opt/ros/foxy/share/ament_cmake_cppcheck/cmake/ament_cmake_cppcheck_lint_hook.cmake;83;ament_cppcheck;/opt/ros/foxy/share/ament_cmake_cppcheck/cmake/ament_cmake_cppcheck_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;128;ament_package;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;0;")
add_test(cpplint "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/cpplint.xunit.xml" "--package-name" "px4_ros_com" "--output-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/ament_cpplint/cpplint.txt" "--command" "/opt/ros/foxy/bin/ament_cpplint" "--xunit-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/cpplint.xunit.xml")
set_tests_properties(cpplint PROPERTIES  LABELS "cpplint;linter" TIMEOUT "120" WORKING_DIRECTORY "/home/joshua_caratao/ros2_ws/src/px4_ros_com" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_cpplint/cmake/ament_cpplint.cmake;68;ament_add_test;/opt/ros/foxy/share/ament_cmake_cpplint/cmake/ament_cmake_cpplint_lint_hook.cmake;35;ament_cpplint;/opt/ros/foxy/share/ament_cmake_cpplint/cmake/ament_cmake_cpplint_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;128;ament_package;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;0;")
add_test(flake8 "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/flake8.xunit.xml" "--package-name" "px4_ros_com" "--output-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/ament_flake8/flake8.txt" "--command" "/opt/ros/foxy/bin/ament_flake8" "--xunit-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/flake8.xunit.xml")
set_tests_properties(flake8 PROPERTIES  LABELS "flake8;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/joshua_caratao/ros2_ws/src/px4_ros_com" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_flake8/cmake/ament_flake8.cmake;48;ament_add_test;/opt/ros/foxy/share/ament_cmake_flake8/cmake/ament_cmake_flake8_lint_hook.cmake;18;ament_flake8;/opt/ros/foxy/share/ament_cmake_flake8/cmake/ament_cmake_flake8_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;128;ament_package;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;0;")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/lint_cmake.xunit.xml" "--package-name" "px4_ros_com" "--output-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/foxy/bin/ament_lint_cmake" "--xunit-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/joshua_caratao/ros2_ws/src/px4_ros_com" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;41;ament_add_test;/opt/ros/foxy/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;21;ament_lint_cmake;/opt/ros/foxy/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;128;ament_package;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;0;")
add_test(pep257 "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/pep257.xunit.xml" "--package-name" "px4_ros_com" "--output-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/ament_pep257/pep257.txt" "--command" "/opt/ros/foxy/bin/ament_pep257" "--xunit-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/pep257.xunit.xml")
set_tests_properties(pep257 PROPERTIES  LABELS "pep257;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/joshua_caratao/ros2_ws/src/px4_ros_com" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_pep257/cmake/ament_pep257.cmake;41;ament_add_test;/opt/ros/foxy/share/ament_cmake_pep257/cmake/ament_cmake_pep257_lint_hook.cmake;18;ament_pep257;/opt/ros/foxy/share/ament_cmake_pep257/cmake/ament_cmake_pep257_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;128;ament_package;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;0;")
add_test(uncrustify "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/uncrustify.xunit.xml" "--package-name" "px4_ros_com" "--output-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/ament_uncrustify/uncrustify.txt" "--command" "/opt/ros/foxy/bin/ament_uncrustify" "--xunit-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/uncrustify.xunit.xml")
set_tests_properties(uncrustify PROPERTIES  LABELS "uncrustify;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/joshua_caratao/ros2_ws/src/px4_ros_com" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_uncrustify/cmake/ament_uncrustify.cmake;65;ament_add_test;/opt/ros/foxy/share/ament_cmake_uncrustify/cmake/ament_cmake_uncrustify_lint_hook.cmake;34;ament_uncrustify;/opt/ros/foxy/share/ament_cmake_uncrustify/cmake/ament_cmake_uncrustify_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;128;ament_package;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;0;")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/xmllint.xunit.xml" "--package-name" "px4_ros_com" "--output-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/ament_xmllint/xmllint.txt" "--command" "/opt/ros/foxy/bin/ament_xmllint" "--xunit-file" "/home/joshua_caratao/ros2_ws/build/px4_ros_com/test_results/px4_ros_com/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/joshua_caratao/ros2_ws/src/px4_ros_com" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_xmllint/cmake/ament_xmllint.cmake;50;ament_add_test;/opt/ros/foxy/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;18;ament_xmllint;/opt/ros/foxy/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;128;ament_package;/home/joshua_caratao/ros2_ws/src/px4_ros_com/CMakeLists.txt;0;")
