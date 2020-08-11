//
//  AASeries.m
//  AAChartKit
//
//  Created by An An on 17/1/19.
//  Copyright © 2017年 An An. All rights reserved.
//
//*************** ...... SOURCE CODE ...... ***************
//***...................................................***
//***    https://github.com/AAChartModel/AAChartKit     ***
//***...................................................***
//*************** ...... SOURCE CODE ...... ***************
//

/*
 
 * -------------------------------------------------------------------------------
 *
 * 🌕 🌖 🌗 🌘  ❀❀❀   WARM TIPS!!!   ❀❀❀ 🌑 🌒 🌓 🌔
 *
 * Please contact me on GitHub,if there are any problems encountered in use.
 * GitHub Issues : https://github.com/AAChartModel/AAChartKit/issues
 * -------------------------------------------------------------------------------
 * And if you want to contribute for this project, please contact me as well
 * GitHub        : https://github.com/AAChartModel
 * StackOverflow : https://stackoverflow.com/users/7842508/codeforu
 * JianShu       : https://www.jianshu.com/u/f1e6753d4254
 * SegmentFault  : https://segmentfault.com/u/huanghunbieguan
 *
 * -------------------------------------------------------------------------------
 
 */

#import "AASeries.h"
#import "NSString+toPureJSString.h"

@implementation AASeries

AAPropSetFuncImplementation(AASeries, NSNumber     *, borderRadius) 
AAPropSetFuncImplementation(AASeries, AAMarker     *, marker) 
AAPropSetFuncImplementation(AASeries, NSString     *, stacking) 
AAPropSetFuncImplementation(AASeries, AAAnimation  *, animation) 
AAPropSetFuncImplementation(AASeries, NSArray      *, keys) 
//AAPropSetFuncImplementation(AASeries, BOOL , colorByPoint) //设置为 true 则是给每个点分配颜色。
AAPropSetFuncImplementation(AASeries, BOOL ,          connectNulls) 
AAPropSetFuncImplementation(AASeries, AAEvents *, events)
AAPropSetFuncImplementation(AASeries, AAShadow *, shadow)
AAPropSetFuncImplementation(AASeries, AADataLabels *, dataLabels)
AAPropSetFuncImplementation(AASeries, AAStates *, states)
AAPropSetFuncImplementation(AASeries, NSNumber *, borderRadiusTopLeft)
AAPropSetFuncImplementation(AASeries, NSNumber *, borderRadiusTopRight)
AAPropSetFuncImplementation(AASeries, NSNumber *, borderRadiusBottomLeft)
AAPropSetFuncImplementation(AASeries, NSNumber *, borderRadiusBottomRight)

@end


@implementation AAEvents

//AAPropSetFuncImplementation(AAEvents, NSString     *, legendItemClick)

- (void)setLegendItemClick:(NSString *)legendItemClick {
    _legendItemClick = [legendItemClick aa_toPureJSString];
}

- (AAEvents * (^) (NSString * legendItemClick))legendItemClickSet {
    return ^(NSString * legendItemClick) {
        self->_legendItemClick = [legendItemClick aa_toPureJSString];
        return self;
    };
}

@end
