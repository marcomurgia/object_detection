# Object Detection

To the Italian Traffic Sign launch the following command:

./bin/object_detection --config=traffic_signs/yolov3_training_signs.cfg --model=traffic_signs/yolov3_training_signs.weights --classes=traffic_signs/classes_signs.txt --width=416 --height=416 --scale=0.0392 --rgb

To detect pedestrians, bicycles and motorcycles launch the following command:

./bin/object_detection --config=pbm/yolov3_training_pbm.cfg --model=pbm/yolov3_training_pbm.weights --classes=pbm/classes_pbm.txt --width=416 --height=416 --scale=0.0392 --rgb

To detect car and truck launch the following command: 

./bin/object_detection --config=car_truck/yolov3_training_car_truck.cfg --model=car_truck/yolov3_training_car_truck.weights --classes=car_truck/classes_car_truck.txt --width=416 --height=416 --scale=0.0392 --rgb
# object_detection
