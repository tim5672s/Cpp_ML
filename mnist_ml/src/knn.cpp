#include <cmath>
#include <limits>
#include <map>
#include "stdint.h"
#include "../include/knn.hpp"
#include "../include/data_handler.hpp"

knn::knn(int val){
    k = val;
}

knn::knn(){
    //
}

knn::~knn(){
    //
}

void knn::find_knearest(data *query_point){
    neighbors = new std::vector<data *>;
    double min = std::numeric_limits<double>::max();
    double previous_min = min;
    int index = 0;
    for(int i = 0; i < k; i++){
        if(i == 0){
            for(int j= 0; j < training_data->size(); j++){
                double distance = calculate_distance(query_point, training_data->at(j));
                training_data->at(j)->set_distance(distance);
                if(distance < min){
                    min = distance;
                    index = j;
                }
            }
            neighbors->push_back(training_data->at(index));
            previous_min = min;
            min = std::numeric_limits<double>::max();
        }
        else{
            for(int j = 0; j < training_data->size(); j++){
                double distance = training_data->at(j)->get_distance();
                if(distance > previous_min && distance < min){
                    index = j;
                }
            }
        }
        neighbors->push_back(training_data->at(index));
        previous_min = min;
        min = std::numeric_limits<double>::max();
    }
}

void knn::set_training_data(std::vector<data *> *vect){
    training_data =  vect;
}
void knn::set_test_data(std::vector<data *> *vect){
    test_data = vect;
}

void knn::set_validation_data(std::vector<data *> *vect){
    validation_data = vect;
}
void knn::set_k(int val){
    k = val;
}

int knn::predict(){
    std::map<uint8_t, int> class_freq;
    for(int i = 0; i < neighbors->size(); i++){
        if(class_freq.find(neighbors->at(i)->get_label()) == class_freq.end()){
            class_freq[neighbors->at(i)->get_label()] = 1;
        }
        else{
            class_freq[neighbors->at(i)->get_label()]++;
        }
    }
    int best = 0;
    int max = 0;

    for(auto&& [keyVal : class_freq] : class_freq){
        if(keyVal.second > max){
            max = keyVal.second;
            best = keyVal.first;
        }
    }
    neighbors->clear();
    return best;
}

double knn::calculate_distance(data *query_point, data * input){
    double distance = 0.0;
    if(query_point->get_feature_vector_size() != input->get_feature_vector_size()){
        printf("ERROR - Vector size missmatch\n");
        exit(1);
    }
    #ifdef EUCLID
    for(unsigned i = 0; i < query_point->get_feature_vector_size(); i++){
        distance += pow(query_point->get_feature_vector()->at(i) - input->get_feature_vector()-at(i), 2);
    }
    distance = sqrt(distance);
    #elif defined MANHATTAN
    //PUT MANHATTAN imple here
    #endif
}
double knn::validate_performance(){
    double current_performance = 0;
    int count = 0;
    int data_index = 0;
    for(data *query_point : *validation_data){
        find_knearest(query_point);
        int prediction = predict();
        if(prediction == query_point->get_label()){
            count++;
        }
        printf("Current Performance: %.3f %%\n", ((double)count*100.0) / ((double)data_index));
    }
    printf("Validation Performance for K = %d: %.3f %%\n", k,((double)count*100.0) / ((double)validation_data->size()));
    return ((double)count*100.0) / ((double)validation_data->size()); 
}

double knn::test_performance(){
    double current_performance = 0;
    int count = 0;
    int data_index = 0;
    for(data *query_point : *test_data){
        find_knearest(query_point);
        int prediction = predict();
        if(prediction == query_point->get_label()){
            count++;
        }
    }
    printf("Tested Performance: %.3f %%\n",((double)count*100.0) / ((double)test_data->size())); 
    return ((double)count*100.0) / ((double)test_data->size());
}

