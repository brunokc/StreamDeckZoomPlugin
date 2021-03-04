include(ExternalProject)

ExternalProject_Add(
  wil_source
  URL https://github.com/microsoft/wil/archive/master.zip
  URL_HASH SHA512=fda5dfc880fa6a64573eb9819dd6606a4f6e9eae031bc47c9283b18cc183e5bb16725a079f4d44d0a58305ee6b53d6ac414124c8219ff6636463c70419d2f042
  CONFIGURE_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND ""
)
ExternalProject_Get_Property(wil_source SOURCE_DIR)
add_library(wil INTERFACE)
add_dependencies(wil wil_source)
target_include_directories(
  wil
  INTERFACE
  ${SOURCE_DIR}/include
)
