#ifndef __CHRONOMETER_H__
#define __CHRONOMETER_H__

#include <chrono>

class Chronometer {
public:
    enum class timeUnit : uint8_t {
        SECONDS,
        MILLI_SECONDS,
        MICRO_SECONDS,
    };
private:
    using timeType = std::chrono::time_point<std::chrono::steady_clock>;
    timeType startTime;
    timeType endTime;
    timeUnit unit = timeUnit::MILLI_SECONDS;

public:
    Chronometer() {}
    void start();
    void stop();
    void setTimeUnit(timeUnit&& newUnit);
    float getTime();
};

#endif