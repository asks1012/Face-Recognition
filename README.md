# Face-Recognition
## Description :
cv2 module is used to access the camera, and detect the human face, crop it and save to a directory. After saving the cropped faces, we will train the LBPH model, with our face samples collected. After that, we make the LBPH model to recognize our face. If the face is successfully recognized, python will call terraform and terraform will launch an EC2 Instance for us.
