## makes an HTTP connection to port 80 and echo true or false on successful connection
wget http://google.com:80 -q --spider
if [ $? -eq 0 ]
then
    echo true
else
    echo false
fi

## makes a HTTPS connection to port 443 and echo true or false on successful connection
wget https://google.com:443 -q --spider
if [ $? -eq 0 ]
then
    echo true
else
    echo false
fi

## attempt to make an HTTPS connection on port 80
wget https://google.com:80 -q --spider
if [ $? -eq 0 ]
then
    echo true
else
    echo false
fi