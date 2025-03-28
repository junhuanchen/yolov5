python3 -m pip install -r 00_requirements.txt

if [ ! -f weights/yolov5s.pt ]; then
  wget https://github.com/ultralytics/yolov5/releases/download/v2.0/yolov5s.pt -O weights/yolov5s.pt
fi

python3 detect.py --source ./inference/images/ --weights weights/yolov5s.pt --conf 0.4

ffplay inference/output/bus.jpg
