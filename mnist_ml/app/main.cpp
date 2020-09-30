#include <fstream>
#include <vector>
#include <string>
#include <map>
#include <unordered_set>

#include "stdint.h"
#include "data_handler.hpp"
#include "data.hpp"
#include "knn.hpp"

/*
int main(){
    data_handler *dh = new data_handler();
    
    dh->read_feature_vector("../../mnist_data/train-images-idx3-ubyte");
    dh->read_feature_label("../../mnist_data/train-labels-idx1-ubyte");
    dh->data_handler::split_data();
    dh->data_handler::count_classes();
}
*/

int main(){
    data_handler *dh = new data_handler();
    dh->read_feature_vector("../mnist_data/train-images-idx3-ubyte");
    dh->read_feature_label("../mnist_data/train-labels-idx1-ubyte");
    dh->split_data();
    dh->count_classes();
    knn *knearest = new knn();
    knearest->set_training_data(dh->get_training_data());
    knearest->set_test_data(dh->get_test_data());
    knearest->set_validation_data(dh->get_validation_data());

    double performance = 0;
    double best_performance = 0;
    int best_k = 1;
    for(int i = 1; i <= 4; i++){
        if(i == 1){
            knearest->set_k(i);
            performance = knearest->validate_performance();
            best_performance = performance;
        }
        else{
            knearest->set_k(i);
            performance = knearest->validate_performance();
            if(performance > best_performance){
                best_performance = performance;
                best_k = i;
            }
        }
    }
    knearest->set_k(best_k);
    knearest->test_performance();
}