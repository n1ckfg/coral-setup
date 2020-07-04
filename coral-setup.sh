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