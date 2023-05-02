# IMU_Project
IMU Project for ECE 4820 REPO - USING PRXYS IMU

The Prxys imu is based on Arduino Leonardo Architecture, I suppose they use the same IC as:
- https://docs.arduino.cc/hardware/leonardo

About the professor that we work with:
- https://www.westernu.edu/faramarzi/people.html

Babak's Previous Project:
- https://vetsci.org/search.php?where=aview&id=10.4142/jvs.2018.19.4.557&code=0118JVS&vmode=PUBREADER
- https://www.scopus.com/record/display.uri?eid=2-s2.0-85104245548&origin=inward&txGid=319a70bd4f74ce18d34ff25225f8071b
- https://www.sciencedirect.com/science/article/pii/S0737080622000739?casa_token=OBTzkOxCFJYAAAAA:YD8eZqBtNn3c27STNEBOy8704GqOQ4AzqWZnxzzEJ4xOlZJ7NgdgTgSouj3iXZDxi-IeUawqOQ
- https://www.wageningenacademic.com/doi/abs/10.3920/CEP190066
- https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5508962/
- https://anatomypubs.onlinelibrary.wiley.com/doi/full/10.1002/ar.a.20173
- https://avmajournals.avma.org/view/journals/ajvr/70/11/ajvr.70.11.1354.xml
- https://synapse.koreamed.org/articles/1099239 -> This one with AN Nguyen
- https://www.sciencedirect.com/science/article/pii/S0737080622000739?casa_token=qqv1ey9sdQkAAAAA:Z6bMti7AyL7ZxakvFsOUFtI9mBa3hGfcVOJ2bL1bh8fDzN4y8Lrsn3Dgr034vLF3qV1AQ_K_-A
- https://www.sciencedirect.com/science/article/pii/S0737080613009568?casa_token=Ed8oKLGb2d0AAAAA:v02z7U0LwtYOi8pigsQCKbzIluyrl8RNYtk7qpM0uov60gBSFS7EpwPMjlWv68JeskxWKgEGKQ
- https://www.sciencedirect.com/science/article/pii/S0737080620302999?casa_token=4y7e6JugI-oAAAAA:phgbaoVIG-N8A--IQZvDTCpvffR8HqruyHS-XysYAMJIpk-Y1EkyJCiYnbQC6ugW1bExXA2n9w
- https://www.sciencedirect.com/science/article/pii/S0737080618301849?casa_token=8SY7FAIfuUIAAAAA:nmIGkD3mGMAI_DOPVGZpVAbYRd61b24NxXUinV78NwTAH5HjyPksesQtO1aZikN6xivceyrkEg

============================================================================================

Notes to check on:
- DEEP LEARNING
- - https://blogs.nvidia.com/blog/category/deep-learning/

- Basic UNDERSTANDING OF IMU
- - https://stanford.edu/class/ee267/lectures/lecture10.pdf
- - https://wiki.dfrobot.com/How_to_Use_a_Three-Axis_Accelerometer_for_Tilt_Sensing#Yaw-Pitch-Roll
- - https://www.allaboutcircuits.com/technical-articles/how-to-interpret-IMU-sensor-data-dead-reckoning-rotation-matrix-creation/
- - 

- Other Projects using IMU / more documentations:
- - https://stanford.edu/class/ee267/notes/ee267_notes_imu.pdf
- - https://stanford.edu/class/ee267/notes/ee267_notes_tracking.pdf
- - https://www.youtube.com/watch?v=vZMe6denCBs
- - https://stanford.edu/class/ee267/notes/ee267_notes_graphicspipeline.pdf
- - https://stanford.edu/class/ee267/notes/sutherland_hmd.pdf
- - https://josephmalloch.wordpress.com/portfolio/imu-sensor-fusion/
- - 
- - 

- QUARTERNIONS
- - https://www.allaboutcircuits.com/technical-articles/dont-get-lost-in-deep-space-understanding-quaternions/
- - https://en.wikipedia.org/wiki/Quaternion
- - https://en.wikipedia.org/wiki/Quaternions_and_spatial_rotation
- - https://stackoverflow.com/questions/5782658/extracting-yaw-from-a-quaternion
- - 

- Computer Vision with Python
- - https://www.youtube.com/watch?v=01sAkU_NvOY&t=1839s
- - 

- App that they use to estimate angles:
- - https://imagej.nih.gov/ij/index.html

============================================================================================

Other IMU + maybe some documentation:
- 6 DOF
- - https://www.adafruit.com/product/4502
- - https://www.adafruit.com/product/3886
- - https://www.adafruit.com/product/4464
- - https://invensense.tdk.com/products/motion-tracking/6-axis/icm-20649/
- - https://learn.adafruit.com/lsm6dsox-and-ism330dhc-6-dof-imu

- I'm leaning towards this one and the 9DOF: (>> please checks <<)
- - https://www.seeedstudio.com/Seeed-XIAO-BLE-Sense-nRF52840-p-5253.html
- - 

- 9 DOF
- - https://www.adafruit.com/product/4754
- - https://www.adafruit.com/product/2472

- - https://www.adafruit.com/product/4517
- - https://www.adafruit.com/product/4646?gclid=Cj0KCQiAw8OeBhCeARIsAGxWtUxEOS5hOkX3tUtJgrs0Xik7Dnsjhd6MCaFoZPZftOwcQ8dZmMkbl1oaAqUsEALw_wcB
- - https://files.seeedstudio.com/wiki/XIAO-BLE/ST_LSM6DS3TR_Datasheet.pdf
- - https://learn.adafruit.com/adafruit-bno055-absolute-orientation-sensor
- - 

============================================================================================

Good Link for understanding more of IMU and how to interpret it
- https://www.mdpi.com/1424-8220/14/4/6891
- https://www.mdpi.com/1424-8220/19/18/3827
- https://ieeexplore.ieee.org/abstract/document/6091743
- https://ieeexplore.ieee.org/abstract/document/8141959
- https://ieeexplore.ieee.org/abstract/document/5975346
- https://d1wqtxts1xzle7.cloudfront.net/89189534/9da5f9798a2a1caabd3dfb96ff794768a625-libre.pdf?1659401284=&response-content-disposition=inline%3B+filename%3DReviews_on_Various_Inertial_Measurement.pdf&Expires=1675287324&Signature=f4mQPEl1N6ZXsMgPJSTabUAeQ9~iEgn2cFJOKAoycNR9BhifvIcRrT3kMo7fSFBwCFpYZXJU1m8nXeiCz~NOYoQZEL9umiD7-2zVxXcFWRZ8TqrQIRyuhz-3j7ubM~SUnZZ1C9sMfnmvMsg0ZYgTu6gtgmKuroT0tCVHz~2uFOXeXEuYsNfEKxTGtaQuP4FblJgMS~itOdX3Lr9Rlb0GmeoU9xtH9mOYO8LuFpK8PhWL0Qal07JdSYvOX1W3TYSOI5S3L63BbnqTReXdUTj8GB~GllY1jzrN0nqmY~4BTi1c9j5jS3EouIJrv0lZ-YzfTJtUxltDBXKmfCCb8yrUhg__&Key-Pair-Id=APKAJLOHF5GGSLRBV4ZA
- https://ieeexplore.ieee.org/abstract/document/4637877
- https://d1wqtxts1xzle7.cloudfront.net/71039855/826-829-libre.pdf?1633208543=&response-content-disposition=inline%3B+filename%3DA_Review_of_Accelerometer_Sensor_and_Gyr.pdf&Expires=1675287397&Signature=gw0TuWcegHXkPn6jtdRh7BIMtyFpwZ4xWck8lKQphV-Y7bMA0yj9Uc6k1~deLGda6Mlf2Ytox-mXV0SgfVs6BncW68IO77EIBJgU0CL95Uk0sS8oKU5mf3OBxmCP1FC93TJ7j1lelfETRQi0i5P583IMddcRKoET0dwRFizsiHH1PxxOVEwbzDB2jBymaS9F46hE31ZfItk1DSnsguWG09QbMz7vjKOYCPpn2QSulT8pGrcD92jVyp3tOdZC43jBIgKTJ1ZMcwXJM1OzJqkOpE-FgUm96O9VhV-ir3I9KZ~gFmJPRCxWzpfeWPqz9Nzn64U7EgfDlQZgGbMSXCoCdw__&Key-Pair-Id=APKAJLOHF5GGSLRBV4ZA
- https://ieeexplore.ieee.org/abstract/document/8606925
- https://arxiv.org/abs/1904.06064
- https://lup.lub.lu.se/luur/download?func=downloadFile&recordOId=8996696&fileOId=8996707
- https://bme.lth.se/fileadmin/biomedicalengineering/Examensarbeten/1913_Ahmed_art.pdf
- https://koreascience.kr/article/JAKO201106736916884.pdf
- https://ieeexplore.ieee.org/abstract/document/8323826/references#references
- https://ieeexplore.ieee.org/abstract/document/7778173
- https://www.mdpi.com/1424-8220/12/2/2255
- https://citeseerx.ist.psu.edu/document?repid=rep1&type=pdf&doi=cc2ba84a4d6e06fd85ad434f5b1a8545c1cc993c
- https://www.mdpi.com/1424-8220/19/13/2945
- https://ieeexplore.ieee.org/abstract/document/8434292


Really Good Stuffs:
- https://ieeexplore.ieee.org/abstract/document/8944545/references#references
- https://ieeexplore.ieee.org/abstract/document/7516603
- https://ieeexplore.ieee.org/abstract/document/7370310
- https://ieeexplore.ieee.org/abstract/document/5975346
- https://towardsdatascience.com/gradient-descent-algorithm-a-deep-dive-cf04e8115f21
- 
- 

Professional Applications:
- https://www.microstrain.com/inertial/imu?utm_source=google&utm_medium=cpc&utm_campaign=microstrain-inertial-namerica&sc=sensing-microstrain-google_adwords_fy22&utm_content=imu&gclid=Cj0KCQjwhY-aBhCUARIsALNIC05JefiB0X_B1yqp4Zk0QtZbYQeuvQew__PYBbcgkEzLdPd05ErhMCoaArglEALw_wcB
- https://www.ecapturecamera.com/skeleton
- https://optitrack.com/


WiFi Capability / Improvement:
- (send data remotely over wifi) 
https://forum.arduino.cc/t/send-sensor-data-remotely-over-wifi/616490 
- (skeleton modelling over MATLAB) 
https://www.researchgate.net/figure/Skeleton-model-imported-in-MATLAB-The-angles-of-knee-angle-can-be-calculated-using-simple_fig3_275605753
- (Body Tracking and Skeleton Modelling)
https://www.stereolabs.com/docs/body-tracking/

============================================================================================

Other keywords:
deptheye, icm 073lat imu, icm-20649, e0s16 IC, Gradient Descent Algorithm


Parts:
8ya17 RW213 (FLASH MEMORY)


