# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/bootloader/subproject"
  "E:/Program_Files/esp32/my/spi_ga9c01/build/bootloader"
  "E:/Program_Files/esp32/my/spi_ga9c01/build/bootloader-prefix"
  "E:/Program_Files/esp32/my/spi_ga9c01/build/bootloader-prefix/tmp"
  "E:/Program_Files/esp32/my/spi_ga9c01/build/bootloader-prefix/src/bootloader-stamp"
  "E:/Program_Files/esp32/my/spi_ga9c01/build/bootloader-prefix/src"
  "E:/Program_Files/esp32/my/spi_ga9c01/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "E:/Program_Files/esp32/my/spi_ga9c01/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "E:/Program_Files/esp32/my/spi_ga9c01/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
