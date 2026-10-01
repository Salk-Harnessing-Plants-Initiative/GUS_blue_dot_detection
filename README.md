# Protocol to run GUS blue dot detection pipeline

## 1.	Create environment 
In command line, type:
`conda env create -f environment.yml`

Note: 
you just need to create environment once.

You can check whether the environment exists by typing:
`conda info –envs`

If there is an environment named “yolo82”, you can skip this step and go to step 2 to activate the environment.
 
## 2.	Activate the environment: 
In command line, type:
`conda activate yolo82`

## 3.	Reorganize your folder
Change the ‘img_folder’ in pipeline.sh line #5 to the folder where you save your images.

You will need to organize your image folder and pipeline folder in this way:
```
Root folder/
├── pipeline folder
├── image folder
│   ├──subfolders of your image folder
```

## 4.	run the pipeline.sh by typing:
In command line, type: `sh pipeline_all.sh`.
 
 
## 5.	You can check results in the folder named ‘predictions’.

## 6.	Note:

If you don’t need the visualization of box predictions (the blue dots were drawn in each original image), you can comment or delete lines #206-216. This will save you ~1/3 time to run the pipeline.

