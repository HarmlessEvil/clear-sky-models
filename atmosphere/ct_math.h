#pragma once

namespace ct_math {

constexpr int32_t ceil(float num)
{
    return (static_cast<float>(static_cast<int32_t>(num)) == num)
        ? static_cast<int32_t>(num)
        : static_cast<int32_t>(num) + ((num > 0) ? 1 : 0);
}

constexpr int64_t ceil(double num)
{
    return (static_cast<float>(static_cast<int64_t>(num)) == num)
        ? static_cast<int64_t>(num)
        : static_cast<int64_t>(num) + ((num > 0) ? 1 : 0);
}

}