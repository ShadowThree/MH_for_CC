#include<stdio.h>
#include<time.h>
#include<stdlib.h>
#include "../config.h"

int main(void)
{
    srand( (unsigned)time( NULL ) );
    char pBuffer[8];
    FILE *f[PIC_COUNT], *fn;

    for(int i = 0; i < PIC_COUNT; i++)      // 打开所有图片
    {
        char str[50];
        sprintf(str, "../%c.%s", i+'1', PIC_SUFFIX);
        f[i] = fopen(str, "rb");          // 以二进制形式读
        if(f[i] == NULL)
        {
            fprintf(stderr, "open %s error\n", str);
        }
    }

    int num = 0, num_last = PIC_COUNT;
    int leng = sizeof(pic)/sizeof(pic[0]);
    printf("pic length is %d\n", leng);
    for(int i = 0; i < leng; i++)
    {
        while(num == num_last)              // 确保相邻两张照片不会重复
            num = rand() % PIC_COUNT;
        num_last = num;

        char picOut[50];
        sprintf(picOut, "../pictures/%s.%s", pic[i], PIC_SUFFIX);
        fn = fopen(picOut, "wb");
        while (!feof(f[num]))
        {
            fread(pBuffer, 1, 8, f[num]);   // 每次读8个字节
            fwrite(pBuffer, 1, 8, fn);      // 每次写8个字节
        }
        fseek(f[num], 0L, SEEK_SET);        // 回到文件头
    }

    for(int i = 0; i < PIC_COUNT; i++)
        fclose(f[i]);
    fclose(fn);
}














































































