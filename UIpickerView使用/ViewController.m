//
//  ViewController.m
//  UIpickerView使用
//
//  Created by Linjiasong_Mac on 15-4-7.
//  Copyright (c) 2015年 Linjiasong_Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDelegate,UIPickerViewDataSource>

@property (nonatomic,strong) NSArray * array;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  self.array  = @[@"1",@"2",@"3",@"4",@"5"];
  
  self.pickerView.delegate = self;
  self.pickerView.dataSource = self;
}

//多少列
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
  return 1;
}
//多少行
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
  return self.array.count;
}
// 设置当前行的内容，若果行没有显示则自动释放
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
  return self.array[row];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
  NSString * result = [self.array objectAtIndex:row];
  NSLog(@"%ld---%ld  == %@",row,component,result);
  self.resultLable.text = result;
}
//- (void)setString:(id)sender
//{
//  // 传递值
//  if (_type ==0) {
//    [_delegate setSomthing:contentview.text name:@"star"];
//  }else {
//    [_delegate setSomthing:contentview.text name:@"xueli"];
//  }
//  [self.navigationController popViewControllerAnimated:YES];
//  [self.navigationController pushViewController:_delegate animated:YES];
//  [self.navigationController setNavigationBarHidden:NO];
//}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
