## CODE BOOK FOR SAMSUNG DATA PROJECT

tidy.txt contains the mean measurement for each subject by activity of 66 measures. Thus, there are 68 columns (1 for the subject, 1 for the activity, and 1 for the mean of each of the 66 measures).

A brief description of each column follows. Additionally, it may be helpful to know the following information, which is updated from the features_info.txt file that was provided in the orignal .zip file:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals taccxyz and tgyroxyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tbodyaccxyz and tgravityaccxyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccjerkxyz and tbodygyrojerkxyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyaccxyz, fBodyaccjerkxyz, fbodygyroxyz, fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'xyz' is used to denote 3-axial signals in the x, y and z directions.

subject 
	volunteer number 1-30
                 
activity                
	6 activities of the volunteers: laying, sitting, standing, walking, walkingdownstairs, walkingupstairs

tbodyaccmeanx            
	time body accelerometer signal in x direction mean

tbodyaccmeany           
	time body accelerometer signal in y direction mean

tbodyaccmeanz            
	time body accelerometer signal in z direction mean

tbodyaccstdx            
	time body accelerometer signal in x direction standard deviation

tbodyaccstdy             
	time body accelerometer signal in y direction standard deviation

tbodyaccstdz            
	time body accelerometer signal in z direction standard deviation

tgravityaccmeanx         
	gravity accelerometer signal in x direction mean

tgravityaccmeany        
	time gravity accelerometer signal in y direction mean

tgravityaccmeanz         
	time gravity accelerometer signal in z direction mean

tgravityaccstdx         
	time gravity accelerometer signal in x direction standard deviation

tgravityaccstdy          
	time gravity accelerometer signal in y direction standard deviation

tgravityaccstdz         
	time gravity accelerometer signal in z direction standard deviation

tbodyaccjerkmeanx        
	time body accelerometer jerk signal in x direction mean

tbodyaccjerkmeany       
	time body accelerometer jerk signal in y direction mean

tbodyaccjerkmeanz        
	time body accelerometer jerk signal in z direction mean

tbodyaccjerkstdx        
	time body accelerometer jerk signal in x direction standard deviation

tbodyaccjerkstdy         
	time body accelerometer jerk signal in y direction standard deviation

tbodyaccjerkstdz        
	time body accelerometer jerk signal in z direction standard deviation

tbodygyromeanx           
	time body gyroscope signal in x direction mean 

tbodygyromeany          
	time body gyroscope signal in y direction mean 

tbodygyromeanz           
	time body gyroscope signal in z direction mean 

tbodygyrostdx           
	time body gyroscope signal in x direction standard deviation 

tbodygyrostdy            
	time body gyroscope signal in y direction standard deviation

tbodygyrostdz           
	time body gyroscope signal in z direction standard deviation

tbodygyrojerkmeanx       
	time body gyroscope jerk signal in x direction mean

tbodygyrojerkmeany      
	time body gyroscope jerk signal in y direction mean

tbodygyrojerkmeanz       
	time body gyroscope jerk signal in z direction mean

tbodygyrojerkstdx       
	time body gyroscope jerk signal in x direction standard deviation

tbodygyrojerkstdy        
	time body gyroscope jerk signal in y direction standard deviation

tbodygyrojerkstdz       
	time body gyroscope jerk signal in z direction standard deviation

tbodyaccmagmean          
	time body gyroscope accelerometer mean signal

tbodyaccmagstd          
	time body gyroscope accelerometer mean standard deviation 

tgravityaccmagmean       
	time gravity accelerometer magnitude signal mean

tgravityaccmagstd       
	time gravity accelerometer magnitude signal standard deviation

tbodyaccjerkmagmean      
	time body accelerometer jerk magnitude mean

tbodyaccjerkmagstd      
	time body accelerometer jerk magnitude standard deviation

tbodygyromagmean         
	time body gyroscope magnitude mean

tbodygyromagstd         
	time body gyroscope magnitude standard deviation

tbodygyrojerkmagmean     
	time body gyroscope jerk magnitude mean

tbodygyrojerkmagstd     
	time body gyroscope jerk magnitude standard deviation

fbodyaccmeanx            
	frequency body accelerometer signal in x direction mean

fbodyaccmeany           
	frequency body accelerometer signal in y direction mean

fbodyaccmeanz            
	frequency body accelerometer signal in z direction mean

fbodyaccstdx            
	frequency body accelerometer signal in x direction standard deviation

fbodyaccstdy             
	frequency body accelerometer signal in y direction standard deviation

fbodyaccstdz            
	frequency body accelerometer signal in z direction standard deviation

fbodyaccjerkmeanx        
	frequency body accelerometer jerk signal in x direction mean

fbodyaccjerkmeany       
	frequency body accelerometer jerk signal in y direction mean

fbodyaccjerkmeanz        
	frequency body accelerometer jerk signal in z direction mean

fbodyaccjerkstdx        
	frequency body accelerometer jerk signal in x direction standard deviation

fbodyaccjerkstdy         
	frequency body accelerometer jerk signal in y direction standard deviation

fbodyaccjerkstdz        
	frequency body accelerometer jerk signal in z direction standard deviation

fbodygyromeanx           
	frequency body gyroscope signal in x direction mean

fbodygyromeany          
	frequency body gyroscope signal in y direction mean

fbodygyromeanz           
	frequency body gyroscope signal in z direction mean

fbodygyrostdx           
	frequency body gyroscope signal in x direction standard deviation

fbodygyrostdy            
	frequency body gyroscope signal in y direction standard deviation

fbodygyrostdz           
	frequency body gyroscope signal in z direction standard deviation

fbodyaccmagmean          
	frequency body accelerometer magnitude mean

fbodyaccmagstd          
	frequency body accelerometer magnitude standard deviation

fbodybodyaccjerkmagmean  
	frequency body accelerometer jerk magnitude mean

fbodybodyaccjerkmagstd  
	frequency body accelerometer jerk magnitude standard deviation

fbodybodygyromagmean     
	frequency body gyroscope magnitude mean

fbodybodygyromagstd     
	frequency body gyroscope magnitude standard deviation

fbodybodygyrojerkmagmean 
	frequency body gyroscope jerk magnitude mean

fbodybodygyrojerkmagstd
	frequency body gyroscope jerk magnitude standard deviation 