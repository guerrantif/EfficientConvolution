#include "Statistics.h"
#include <algorithm> // sort

// Add value to the collection
void Statistics::addToCollection(const double value) {
    collection.push_back(value);
}

// Get Median value
double Statistics::getMedian() {
    std::sort(collection.begin(), collection.end());
    if(collection.size() % 2 != 0) {
        return collection[collection.size()/2];
    }
    return (collection[collection.size()/2] + collection[(collection.size()/2)-1])/2.0;
}

// Get Mean value
double Statistics::getMean() {
    double sum = 0.0;
    for(const auto el : collection) {
        sum += el;
    }
    return (sum / collection.size());
}
