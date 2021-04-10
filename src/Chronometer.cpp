#include "Chronometer.hh"

// start
void Chronometer::start() {
    startTime = std::chrono::steady_clock::now();
}

// stop
void Chronometer::stop() {
    endTime = std::chrono::steady_clock::now();
}

// setTimeUnit
void Chronometer::setTimeUnit(timeUnit&& newUnit) {
    unit = newUnit;
}

// getTime
float Chronometer::getTime() {
    switch (this->unit) {
    case timeUnit::SECONDS:
        return (float)std::chrono::duration_cast<std::chrono::microseconds>(endTime - startTime).count()/(1000.0*1000.0);
        break;
    case timeUnit::MILLI_SECONDS:
        return (float)std::chrono::duration_cast<std::chrono::microseconds>(endTime - startTime).count()/1000.0;
        break;
    case timeUnit::MICRO_SECONDS:
        return (float)std::chrono::duration_cast<std::chrono::microseconds>(endTime - startTime).count();
        break;
    }
}