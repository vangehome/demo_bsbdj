//
//  UIView+XMGExtension.m
//  baisi
//
//  Created by ANDY on 16/4/8.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "UIView+XMGExtension.h"

@implementation UIView (XMGExtension)
-(void)setSize:(CGSize)size{
    CGRect frame=self.frame;
    frame.size=size;
    self.frame=frame;
}
-(void)setWidth:(CGFloat)width{
    
    CGRect frame=self.frame;
    frame.size.width=width;
    self.frame=frame;

}
-(void)setHeight:(CGFloat)height{
    
    CGRect frame=self.frame;
    frame.size.height=height;
    self.frame=frame;
}

-(CGFloat)width{
    return self.frame.size.width;
}
-(CGFloat)height{
    return self.frame.size.height;
}
-(CGSize)size{
    return self.frame.size;
}
@end
