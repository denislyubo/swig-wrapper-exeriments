#include "../Second.h"
#include "SecondImpl.h"

SECOND_API uint32_t CreateSecond() {
    return SecondImpl::CreateSecond();
}

SECOND_API void DeleteSecond(uint32_t handler) {
    SecondImpl::DeleteSecond(handler);
}

