# Unidata-IDV
Utilizes Unidata's 
[Integrated Data Viewer (IDV)](https://www.unidata.ucar.edu/software/idv/)

If running Windows, open an MS-DOS prompt and type the following:
```
cd "C:\Program Files\IDV_X.Y"
```
(where X.Y refers to the version of IDV you have installed)

Once you're in that directory, you can run a command like the following example:

```
runIDV C:/data/events/19800513/idv/radar.isl
```
The '.isl' refers to IDV Scripting Language, which is described [here](https://www.unidata.ucar.edu/software/idv/docs/userguide/isl/index.html).

I use these to call [IDV bundles (.xidv)](https://www.unidata.ucar.edu/software/idv/docs/userguide/Bundles.html) to create plots for a series of files.
