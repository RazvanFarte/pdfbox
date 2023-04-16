# pdfbox
A docker image helps use Apache PDFBox in Command Line.

## Enrypt File

```
docker run -it -v $PWD:/data chigix/pdfbox Encrypt -U <password> -keyLength 256 <input> <output>
```

## Decrypt File

```
docker run -it -v $PWD:/data chigix/pdfbox Decrypt -password <password> <input> <output>
```

## PDFToImage

```
docker run --rm -it -v $PWD:/data chigix/pdfbox PDFToImage -imageType png <InputFileName>
```
