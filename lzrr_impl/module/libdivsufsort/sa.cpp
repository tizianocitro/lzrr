#include "sa.hpp"
#include "divsufsort.h"
#include "divsufsort64.h"

namespace stool
{

std::vector<uint64_t> construct_suffix_array(const std::vector<uint8_t> &text)
{
    std::vector<uint64_t> sa;

    uint64_t n = text.size();
    sa.resize(n);

    divsufsort64((const unsigned char *)&text[0], (int64_t *)&sa[0], n);
    return sa;
}

std::vector<uint64_t> construct_suffix_array(const std::vector<char> &text)
{
    std::vector<uint64_t> sa;

    uint64_t n = text.size();
    sa.resize(n);

    divsufsort64((const unsigned char *)&text[0], (int64_t *)&sa[0], n);
    return sa;
}


} // namespace stool