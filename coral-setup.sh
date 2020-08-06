# https://coral.ai/docs/accelerator/get-started#1a-on-linux

echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | sudo tee /etc/apt/sources.list.d/coral-edgetpu.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update

# [*] lower-power runtime
sudo apt-get install libedgetpu1-std
# [ ] max performance runtime
#sudo apt-get install libedgetpu1-max

# https://www.tensorflow.org/lite/guide/python

# Choose your Python version...
# [ ] ARM 32, Python 3.5, RPi Stretch
#PYTHON_VERSION=https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp35-cp35m-linux_armv7l.whl
# [ ] ARM 32, Python 3.6	
#PYTHON_VERSION=https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp36-cp36m-linux_armv7l.whl
# [*] ARM 32, Python 3.7, RPi Buster	
PYTHON_VERSION=https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp37-cp37m-linux_armv7l.whl

# [ ] ARM 64, Python 3.5	
#PYTHON_VERSION=https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp35-cp35m-linux_aarch64.whl
# [ ] ARM 64, Python 3.6	
#PYTHON_VERSION=https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp36-cp36m-linux_aarch64.whl
# [ ] ARM 64, Python 3.7	
#PYTHON_VERSION=https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp37-cp37m-linux_aarch64.whl

pip3 install $PYTHON_VERSION
pip3 install numpy Pillow

# https://coral.ai/docs/edgetpu/api-intro/#install-the-library-and-examples
sudo apt-get install python3-edgetpu edgetpu-examples

# https://github.com/f0cal/google-coral/issues/18
# https://stackoverflow.com/questions/59994060/cant-install-scipy-to-raspberry-pi-4-raspbian
sudo apt-get install python3-dev python3-scipy 

# https://stackoverflow.com/questions/47038934/python3-modulenotfounderror-no-module-named-opengl?rq=1
pip3 install pyopengl

