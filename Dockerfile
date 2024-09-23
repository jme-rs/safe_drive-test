FROM ros:humble

RUN mkdir -p /root/ros2_ws/src
RUN echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc

RUN apt-get update && apt-get install -y \
    python3-pip

RUN pip3 install \
    git+https://github.com/tier4/colcon-cargo.git \
    git+https://github.com/colcon/colcon-ros-cargo.git

RUN git clone https://github.com/tier4/cargo-ament-build.git \
    cargo install --path ./cargo-ament-build
