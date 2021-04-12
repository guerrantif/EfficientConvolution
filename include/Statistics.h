#ifndef __STATISTICS_H__
#define __STATISTICS_H__

#include <vector>
#include <algorithm>

class Statistics {
private:
    std::vector<double> collection;
public:
    Statistics() {}
    void addToCollection(const double value);
    double getMedian();
    double getMean();
};

#endif
