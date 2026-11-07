package com.android.server.wm;

/* JADX INFO: renamed from: com.android.server.wm.-$$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c implements SurfaceAnimator.OnAnimationFinishedCallback {
    public final /* synthetic */ ScreenRotationAnimation.SurfaceRotationAnimationController f$0;

    public /* synthetic */ $$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c(ScreenRotationAnimation.SurfaceRotationAnimationController surfaceRotationAnimationController) {
        this.f$0 = surfaceRotationAnimationController;
    }

    @Override // com.android.server.wm.SurfaceAnimator.OnAnimationFinishedCallback
    public final void onAnimationFinished(int i, AnimationAdapter animationAdapter) throws Throwable {
        this.f$0.onAnimationEnd(i, animationAdapter);
    }
}
