# flam3 - cosmic recursive fractal flames

This image is a distribution of the official and original fractal flame renderer by Scott Draves 

* https://flam3.com  
* https://github.com/scottdraves/flam3

It has been built from source and packaged into an image without any modifications.
You may use this image in accordance to the GNU General Public License v3.0.

## Usage

> docker run --rm -iv ${PWD}:/out xyrusworx/flam3 < your_flame.flam3

This command renders out `your_flame.flam3` in the current directory and places the result in the
current directory as well. 

You may want to use some of the available environment variables to further configure the render
process:

> docker run --rm -iv ${PWD}:/out -e prefix="render-" -e format=jpg xyrusworx/flam3 your_flame.flam3

A full list of available environment variables can be found here:

* https://github.com/scottdraves/flam3/blob/master/README.txt

You might also find useful information on how to make further use of this image in the above text file.
