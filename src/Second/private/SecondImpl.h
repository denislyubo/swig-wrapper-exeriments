#pragma once

#include <unordered_map>
#include <cstdlib>
#include <iostream>
#include <ctime>

#include "../../Common/Engine.h"

class SecondImpl {
static std::unordered_map<uint32_t, Engine> engineMap;

public:
    static uint32_t CreateSecond() {
        std::srand(std::time(nullptr));
        uint32_t handler = std::rand();
        engineMap[handler] = Engine();

        return 0;
    }

    static void DeleteSecond(uint32_t handler) {
        auto it = engineMap.find(handler);

        if (it != engineMap.end())
            engineMap.erase(it);
    }
};

std::unordered_map<uint32_t, Engine> SecondImpl::engineMap{};
