// generated from rosidl_typesupport_fastrtps_c/resource/idl__type_support_c.cpp.em
// with input from px4_msgs:msg/ParameterSetUsedRequest.idl
// generated code does not contain a copyright notice
#include "px4_msgs/msg/detail/parameter_set_used_request__rosidl_typesupport_fastrtps_c.h"


#include <cassert>
#include <limits>
#include <string>
#include "rosidl_typesupport_fastrtps_c/identifier.h"
#include "rosidl_typesupport_fastrtps_c/wstring_conversion.hpp"
#include "rosidl_typesupport_fastrtps_cpp/message_type_support.h"
#include "px4_msgs/msg/rosidl_typesupport_fastrtps_c__visibility_control.h"
#include "px4_msgs/msg/detail/parameter_set_used_request__struct.h"
#include "px4_msgs/msg/detail/parameter_set_used_request__functions.h"
#include "fastcdr/Cdr.h"

#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-parameter"
# ifdef __clang__
#  pragma clang diagnostic ignored "-Wdeprecated-register"
#  pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
# endif
#endif
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif

// includes and forward declarations of message dependencies and their conversion functions

#if defined(__cplusplus)
extern "C"
{
#endif


// forward declare type support functions


using _ParameterSetUsedRequest__ros_msg_type = px4_msgs__msg__ParameterSetUsedRequest;

static bool _ParameterSetUsedRequest__cdr_serialize(
  const void * untyped_ros_message,
  eprosima::fastcdr::Cdr & cdr)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  const _ParameterSetUsedRequest__ros_msg_type * ros_message = static_cast<const _ParameterSetUsedRequest__ros_msg_type *>(untyped_ros_message);
  // Field name: timestamp
  {
    cdr << ros_message->timestamp;
  }

  // Field name: parameter_index
  {
    cdr << ros_message->parameter_index;
  }

  return true;
}

static bool _ParameterSetUsedRequest__cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  void * untyped_ros_message)
{
  if (!untyped_ros_message) {
    fprintf(stderr, "ros message handle is null\n");
    return false;
  }
  _ParameterSetUsedRequest__ros_msg_type * ros_message = static_cast<_ParameterSetUsedRequest__ros_msg_type *>(untyped_ros_message);
  // Field name: timestamp
  {
    cdr >> ros_message->timestamp;
  }

  // Field name: parameter_index
  {
    cdr >> ros_message->parameter_index;
  }

  return true;
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_px4_msgs
size_t get_serialized_size_px4_msgs__msg__ParameterSetUsedRequest(
  const void * untyped_ros_message,
  size_t current_alignment)
{
  const _ParameterSetUsedRequest__ros_msg_type * ros_message = static_cast<const _ParameterSetUsedRequest__ros_msg_type *>(untyped_ros_message);
  (void)ros_message;
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;

  // field.name timestamp
  {
    size_t item_size = sizeof(ros_message->timestamp);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }
  // field.name parameter_index
  {
    size_t item_size = sizeof(ros_message->parameter_index);
    current_alignment += item_size +
      eprosima::fastcdr::Cdr::alignment(current_alignment, item_size);
  }

  return current_alignment - initial_alignment;
}

static uint32_t _ParameterSetUsedRequest__get_serialized_size(const void * untyped_ros_message)
{
  return static_cast<uint32_t>(
    get_serialized_size_px4_msgs__msg__ParameterSetUsedRequest(
      untyped_ros_message, 0));
}

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_px4_msgs
size_t max_serialized_size_px4_msgs__msg__ParameterSetUsedRequest(
  bool & full_bounded,
  size_t current_alignment)
{
  size_t initial_alignment = current_alignment;

  const size_t padding = 4;
  const size_t wchar_size = 4;
  (void)padding;
  (void)wchar_size;
  (void)full_bounded;

  // member: timestamp
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint64_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint64_t));
  }
  // member: parameter_index
  {
    size_t array_size = 1;

    current_alignment += array_size * sizeof(uint16_t) +
      eprosima::fastcdr::Cdr::alignment(current_alignment, sizeof(uint16_t));
  }

  return current_alignment - initial_alignment;
}

static size_t _ParameterSetUsedRequest__max_serialized_size(bool & full_bounded)
{
  return max_serialized_size_px4_msgs__msg__ParameterSetUsedRequest(
    full_bounded, 0);
}


static message_type_support_callbacks_t __callbacks_ParameterSetUsedRequest = {
  "px4_msgs::msg",
  "ParameterSetUsedRequest",
  _ParameterSetUsedRequest__cdr_serialize,
  _ParameterSetUsedRequest__cdr_deserialize,
  _ParameterSetUsedRequest__get_serialized_size,
  _ParameterSetUsedRequest__max_serialized_size
};

static rosidl_message_type_support_t _ParameterSetUsedRequest__type_support = {
  rosidl_typesupport_fastrtps_c__identifier,
  &__callbacks_ParameterSetUsedRequest,
  get_message_typesupport_handle_function,
};

const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, px4_msgs, msg, ParameterSetUsedRequest)() {
  return &_ParameterSetUsedRequest__type_support;
}

#if defined(__cplusplus)
}
#endif
