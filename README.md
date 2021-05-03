# raspbian-ntp

**tl;dr**
> Docker image creating a ntp server over a Raspberry Pi (but it can be used with other GNU/Linux distributions).

## Instructions

Clone this repository:

    git clone https://github.com/doztrock/raspbian-ntp.git
    cd raspbian-ntp/

Build the Docker image:

    docker build -t raspbian-ntp:latest .

Run the container:

    docker run -d --name ntp -p 123:123/udp raspbian-ntp:latest

Set container to be running after reboot:

    docker update docker --restart unless-stopped ntp

