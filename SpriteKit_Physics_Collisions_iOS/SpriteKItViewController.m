//
//  ViewController.m
//  SpriteGameDemo
//
//  Created by Steve Park on 2013. 6. 12..
//  Copyright (c) 2013년 Steve Park. All rights reserved.
//

#import "SpriteKItViewController.h"

#import "APLSpaceScene.h"

@implementation SpriteKItViewController

- (void)loadView {
    [super loadView];
    
    // 스프라이트뷰는 디렉터의 개념. 화면을 만듬. 디렉터 혹은 씬의 개념. 아니면 그 중간...
    // 모든 콘텐츠는 이 뷰에서 그려짐. 이녀석인 제일 중요한 뷰가됨 결국. 
    self.skView = [[SKView alloc]initWithFrame:self.view.frame];
    self.skView.showsDrawCount = YES;
    self.skView.showsNodeCount = YES;
    self.skView.showsFPS = YES;

    self.view = self.skView;
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create and configure the scene.
    // 씬을 구성한다...기본적으로 노드. 모든 비쥬얼 콤포넌트는 노드. 노드트리를 구성함. 
    //SKScene * scene = [MyScene sceneWithSize:self.skView.bounds.size];
    SKScene * scene = [APLSpaceScene sceneWithSize:self.skView.bounds.size];
    
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    // 구성한 씬을 화면에 뿌린다...
    [self.skView presentScene:scene];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
