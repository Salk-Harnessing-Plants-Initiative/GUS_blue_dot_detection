#!/bin/bash

START_TIME=$(date +%s)
rm -r ../predictions
python pipeline_predict.py --img_folder ../images_test --pred_folder ../predictions --overlap 256
python pipeline_get_traits.py --yolo_box_csv ../predictions/box_output.csv --traits_csv ../predictions/traits.csv

END_TIME=$(date +%s)
RUNTIME=$((END_TIME-START_TIME))
RUNTIME_MIN=$((RUNTIME/60))
echo "Script execution time: $RUNTIME seconds"
echo "Script execution time: $RUNTIME_MIN minutes"
