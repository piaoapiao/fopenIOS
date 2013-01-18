//
//  ViewController.m
//  encrypt
//
//  Created by wgdadmin on 13-1-17.
//  Copyright (c) 2013年 wgdadmin. All rights reserved.
//

#import "ViewController.h"
#include "stdio.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 60, 30)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(grab) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn release];
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"王123" ofType:@"txt"];
//    int lenth = 0;
//    NSLog(@"begin");
//    NSString *prePath = [path stringByDeletingPathExtension];
//    prePath = [prePath stringByAppendingString:@"encrypt.txt"];
//    FILE *fp = fopen([path UTF8String],"rb+");
//    
//    fseek(fp, 0L, SEEK_END);
//    lenth = ftell(fp);
//    NSLog(@"lenth:%d",lenth);
//    
//    fseek(fp, 0L, SEEK_SET);
//    
//    char *buf = malloc(lenth);
//    memset(buf, 0, lenth);
//    
//    int readLenth = fread(buf, 1, lenth, fp);
//    NSLog(@"readLenth:%d",readLenth);
//    
//    for(int i =0;i<readLenth;i++)
//    {
//        buf[i] = buf[i]^123;
//    }
//    
//    FILE *fout =  fopen([prePath UTF8String], "wb+");
//    fwrite(buf, 1, lenth, fout);
//    fclose(fout);
//    fclose(fp);
//    free(buf);
//    NSLog(@"finish");
//    
//    //    char ch=fgetc(fp);
//    //    printf("%c",ch);
//    //    while (ch!=EOF)
//    //    {
//    //        ch=fgetc(fp);
//    //     //   printf("%c",ch);
//    //        lenth ++;
//    //    }
//    //        NSLog(@"lenth:%d",lenth);
//    ////    printf("\nlenth:%i",lenth);
//   // remove([prePath UTF8String]);
    
    

//    NSString *path = [[NSBundle mainBundle] pathForResource:@"ziyun_model1d" ofType:@"txt"];
//    int lenth = 0;
//    NSLog(@"begin");
//   // NSString *prePath = [path stringByDeletingPathExtension];
//    NSString *prePath = [path stringByDeletingLastPathComponent];
//   // prePath = [prePath stringByAppendingString:@"en.txt"];
//     prePath = [prePath stringByAppendingPathComponent:@"en.txt"];
//    FILE *fp = fopen([path UTF8String],"rw+");
//    
//    fseek(fp, 0L, SEEK_END);
//    lenth = ftell(fp);
//    NSLog(@"lenth:%d",lenth);
//    
//    fseek(fp, 0L, SEEK_SET);
//    
//    char *buf = malloc(lenth);
//    memset(buf, 0, lenth);
//    
//    int readLenth = fread(buf, 1, lenth, fp);
//    NSLog(@"readLenth:%d",readLenth);
//    
////    for(int i =0;i<readLenth;i++)
////    {
////        buf[i] = buf[i]^123;
////    }
//    
//    NSFileManager *fm = [[NSFileManager alloc]init];
//    
//    BOOL isExist;
//    
//    isExist = [fm fileExistsAtPath:prePath isDirectory:NULL];
//    
//    [fm createFileAtPath:prePath contents:nil attributes:nil];
//
//    if(isExist == YES)
//    {
//        NSLog(@"%@ exist file",prePath);
//        [fm removeItemAtPath:prePath error:nil];
//              NSLog(@"%@ exist file",prePath);
//    }
//    else
//    {
//        NSLog(@"%@ don't exist file",prePath);    
//    }
//    
//    FILE *fout =  fopen([prePath UTF8String], "w+");
//    fwrite(buf, lenth, 1, fout);
//    fclose(fout);
    
//    char *textbuf = malloc(lenth*8);
//    memset(textbuf, 0, lenth*8);
//    
//    for(int i = 0;i< lenth;i++)
//    {
//        for(int j =0 ;j<8;j++)
//        {
//            int temp = 1<<j;
//            if((buf[i]&temp) >0)
//            {
//                textbuf[i*8+j] = 1;
//            }
//        }
//    }
//    
//    FILE *fout =  fopen([prePath UTF8String], "w");
//    for(int i=0 ;i<lenth*8;i++)
//    {
//        fprintf(fout,"%d",(int)textbuf[i]);
//    }
//    fclose(fout);
    
    
//    fwrite(textbuf, lenth*8, 1, fout);
//    fclose(fout);
//    fclose(fp);
//    free(buf);
//    NSLog(@"finish");
    
    //    char ch=fgetc(fp);
    //    printf("%c",ch);
    //    while (ch!=EOF)
    //    {
    //        ch=fgetc(fp);
    //     //   printf("%c",ch);
    //        lenth ++;
    //    }
    //        NSLog(@"lenth:%d",lenth);
    ////    printf("\nlenth:%i",lenth);
    // remove([prePath UTF8String]);
   
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)grab
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ziyun_model1d" ofType:@"txt"];
    int lenth = 0;
    NSLog(@"begin");
    // NSString *prePath = [path stringByDeletingPathExtension];
    NSString *prePath = [path stringByDeletingLastPathComponent];
    // prePath = [prePath stringByAppendingString:@"en.txt"];
    prePath = [prePath stringByAppendingPathComponent:@"en.txt"];
    FILE *fp = fopen([path UTF8String],"rw+");
    
    fseek(fp, 0L, SEEK_END);
    lenth = ftell(fp);
    NSLog(@"lenth:%d",lenth);
    
    fseek(fp, 0L, SEEK_SET);
    
    char *buf = malloc(lenth);
    memset(buf, 0, lenth);
    
    int readLenth = fread(buf, 1, lenth, fp);
    NSLog(@"readLenth:%d",readLenth);
    
    //    for(int i =0;i<readLenth;i++)
    //    {
    //        buf[i] = buf[i]^123;
    //    }
    
//    NSFileManager *fm = [[NSFileManager alloc]init];
//    
//    BOOL isExist;
//    
//    isExist = [fm fileExistsAtPath:prePath isDirectory:NULL];
//    
//    [fm createFileAtPath:prePath contents:nil attributes:nil];
//    
//    if(isExist == YES)
//    {
//        NSLog(@"%@ exist file",prePath);
//       // [fm removeItemAtPath:prePath error:nil];
//        NSLog(@"%@ exist file",prePath);
//    }
//    else
//    {
//        NSLog(@"%@ don't exist file",prePath);
//    }
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    //creates paths so that you can pull the app's path from it
    
    NSString *documentsDirectory = [paths objectAtIndex:0];
    //gets the applications directory on the users iPhone
    
    NSString *scoreFileName = @"/en.txt";
    
    const char *scoreFile = [[documentsDirectory stringByAppendingString:scoreFileName] UTF8String];
    
    FILE *fout =  fopen(scoreFile, "w+");
    fwrite(buf, lenth, 1, fout);
    fclose(fout);
}

@end
