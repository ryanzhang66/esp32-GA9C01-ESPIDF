# Install script for directory: E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/main")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "E:/Program_Files/esp32/Espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/build_info.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/compat-2.x.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_crypto.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_from_psa.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_from_legacy.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_superset_legacy.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/config_adjust_ssl.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/config_adjust_x509.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/lms.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/mbedtls_config.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/pkcs7.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/private_access.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/sha3.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/build_info.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_adjust_auto_enabled.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_key_pair_types.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_synonyms.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_builtin_key_derivation.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_config.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_key_derivation.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_legacy.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_types.h"
    "E:/Program_Files/esp32/Espressif/frameworks/esp-idf-v5.1.2/components/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

