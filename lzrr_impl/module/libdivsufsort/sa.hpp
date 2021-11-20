#pragma once
#include <unordered_set>
#include <cassert>
#include <string>
#include <vector>
#include <limits>

namespace stool
{

std::vector<uint64_t> construct_suffix_array(const std::vector<uint8_t> &text);
std::vector<uint64_t> construct_suffix_array(const std::vector<char> &text);


} // namespace stool