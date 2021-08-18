#include "Statistics.h"
#include <algorithm> // sort
#include <iostream>

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

// Get Min value
double Statistics::getMin() {
    auto min = collection[0];
    for(const auto el : collection) {
        if(el < min) min = el;
    }
    return min;
}
