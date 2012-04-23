========================================================================
				Taleworlds HDR Image Converter Tool  
========================================================================

This program is created to generate HDR images of Mount&Blade:Warband from .hdr files.
We are using RGBE format for hdr and storing the RGB components in DXT1 type surface, 
halfsized E component image with L16 type surface. This program gets an input of "image.hdr" file, 
then exports image_rgb.dds and image_exp.dds files. You should manually convert image's surface 
type if you want to use DXT1 and L16 compression.

Example usage:
1. Open the application directly and enter the filename of your image
2. Or you can directly drag&drop you hdr image file onto the exe file
3. We have used panoroma images which have black half bottom area, so there is an option that clips that black half-bottom part for you. 
	>> Do you want to use only the upper half of the image? (y/n) -> press 'y' to use (InputWidth)x(InputHeight/2) image as source

4. Program will process the image:
 >> - hdrImageRGB.loadHDR(skyimage)... .. ..OK
 >> - hdrImageExp.resize(4096, int(4096 / ratio))... OK
 >> - ...
 
 
5. Then, program will tell you the necessary scale and bias values for the required RGBE conversion. Type them into your material properties
   >> scale: 14.9718
   >> bias: -2.2926
   
   Put these values to the specularcolor .rg part of your material. You can find our skybox materials in materials.brf file. 
   Dont forget non-HDR rendering option and set the input_filename.dds output image of the program as diffusemap.
   RGB image should be used as second diffuse map.
   EXP image should be used as environment map.
   
6. Finished.

Feel free to give your feedback and report any issues about the program to our forums: 
http://forums.taleworlds.com

Taleworlds Entertainment
www.taleworlds.com