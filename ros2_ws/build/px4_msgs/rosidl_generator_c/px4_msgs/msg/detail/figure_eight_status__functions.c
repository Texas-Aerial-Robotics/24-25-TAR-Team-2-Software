// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from px4_msgs:msg/FigureEightStatus.idl
// generated code does not contain a copyright notice
#include "px4_msgs/msg/detail/figure_eight_status__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"


bool
px4_msgs__msg__FigureEightStatus__init(px4_msgs__msg__FigureEightStatus * msg)
{
  if (!msg) {
    return false;
  }
  // timestamp
  // major_radius
  // minor_radius
  // orientation
  // frame
  // x
  // y
  // z
  return true;
}

void
px4_msgs__msg__FigureEightStatus__fini(px4_msgs__msg__FigureEightStatus * msg)
{
  if (!msg) {
    return;
  }
  // timestamp
  // major_radius
  // minor_radius
  // orientation
  // frame
  // x
  // y
  // z
}

bool
px4_msgs__msg__FigureEightStatus__are_equal(const px4_msgs__msg__FigureEightStatus * lhs, const px4_msgs__msg__FigureEightStatus * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // timestamp
  if (lhs->timestamp != rhs->timestamp) {
    return false;
  }
  // major_radius
  if (lhs->major_radius != rhs->major_radius) {
    return false;
  }
  // minor_radius
  if (lhs->minor_radius != rhs->minor_radius) {
    return false;
  }
  // orientation
  if (lhs->orientation != rhs->orientation) {
    return false;
  }
  // frame
  if (lhs->frame != rhs->frame) {
    return false;
  }
  // x
  if (lhs->x != rhs->x) {
    return false;
  }
  // y
  if (lhs->y != rhs->y) {
    return false;
  }
  // z
  if (lhs->z != rhs->z) {
    return false;
  }
  return true;
}

bool
px4_msgs__msg__FigureEightStatus__copy(
  const px4_msgs__msg__FigureEightStatus * input,
  px4_msgs__msg__FigureEightStatus * output)
{
  if (!input || !output) {
    return false;
  }
  // timestamp
  output->timestamp = input->timestamp;
  // major_radius
  output->major_radius = input->major_radius;
  // minor_radius
  output->minor_radius = input->minor_radius;
  // orientation
  output->orientation = input->orientation;
  // frame
  output->frame = input->frame;
  // x
  output->x = input->x;
  // y
  output->y = input->y;
  // z
  output->z = input->z;
  return true;
}

px4_msgs__msg__FigureEightStatus *
px4_msgs__msg__FigureEightStatus__create()
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  px4_msgs__msg__FigureEightStatus * msg = (px4_msgs__msg__FigureEightStatus *)allocator.allocate(sizeof(px4_msgs__msg__FigureEightStatus), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(px4_msgs__msg__FigureEightStatus));
  bool success = px4_msgs__msg__FigureEightStatus__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
px4_msgs__msg__FigureEightStatus__destroy(px4_msgs__msg__FigureEightStatus * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    px4_msgs__msg__FigureEightStatus__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
px4_msgs__msg__FigureEightStatus__Sequence__init(px4_msgs__msg__FigureEightStatus__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  px4_msgs__msg__FigureEightStatus * data = NULL;

  if (size) {
    data = (px4_msgs__msg__FigureEightStatus *)allocator.zero_allocate(size, sizeof(px4_msgs__msg__FigureEightStatus), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = px4_msgs__msg__FigureEightStatus__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        px4_msgs__msg__FigureEightStatus__fini(&data[i - 1]);
      }
      allocator.deallocate(data, allocator.state);
      return false;
    }
  }
  array->data = data;
  array->size = size;
  array->capacity = size;
  return true;
}

void
px4_msgs__msg__FigureEightStatus__Sequence__fini(px4_msgs__msg__FigureEightStatus__Sequence * array)
{
  if (!array) {
    return;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();

  if (array->data) {
    // ensure that data and capacity values are consistent
    assert(array->capacity > 0);
    // finalize all array elements
    for (size_t i = 0; i < array->capacity; ++i) {
      px4_msgs__msg__FigureEightStatus__fini(&array->data[i]);
    }
    allocator.deallocate(array->data, allocator.state);
    array->data = NULL;
    array->size = 0;
    array->capacity = 0;
  } else {
    // ensure that data, size, and capacity values are consistent
    assert(0 == array->size);
    assert(0 == array->capacity);
  }
}

px4_msgs__msg__FigureEightStatus__Sequence *
px4_msgs__msg__FigureEightStatus__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  px4_msgs__msg__FigureEightStatus__Sequence * array = (px4_msgs__msg__FigureEightStatus__Sequence *)allocator.allocate(sizeof(px4_msgs__msg__FigureEightStatus__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = px4_msgs__msg__FigureEightStatus__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
px4_msgs__msg__FigureEightStatus__Sequence__destroy(px4_msgs__msg__FigureEightStatus__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    px4_msgs__msg__FigureEightStatus__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
px4_msgs__msg__FigureEightStatus__Sequence__are_equal(const px4_msgs__msg__FigureEightStatus__Sequence * lhs, const px4_msgs__msg__FigureEightStatus__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!px4_msgs__msg__FigureEightStatus__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
px4_msgs__msg__FigureEightStatus__Sequence__copy(
  const px4_msgs__msg__FigureEightStatus__Sequence * input,
  px4_msgs__msg__FigureEightStatus__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(px4_msgs__msg__FigureEightStatus);
    px4_msgs__msg__FigureEightStatus * data =
      (px4_msgs__msg__FigureEightStatus *)realloc(output->data, allocation_size);
    if (!data) {
      return false;
    }
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!px4_msgs__msg__FigureEightStatus__init(&data[i])) {
        /* free currently allocated and return false */
        for (; i-- > output->capacity; ) {
          px4_msgs__msg__FigureEightStatus__fini(&data[i]);
        }
        free(data);
        return false;
      }
    }
    output->data = data;
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!px4_msgs__msg__FigureEightStatus__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
