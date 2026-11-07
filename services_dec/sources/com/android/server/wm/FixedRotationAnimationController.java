package com.android.server.wm;

import android.R;
import android.content.Context;
import android.util.ArrayMap;
import android.util.proto.ProtoOutputStream;
import android.view.SurfaceControl;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class FixedRotationAnimationController {
    private final Context mContext;
    private final WindowState mNavigationBar;
    private final WindowState mStatusBar;
    private final ArrayList<WindowToken> mAnimatedWindowToken = new ArrayList<>(2);
    private final ArrayMap<WindowToken, Runnable> mDeferredFinishCallbacks = new ArrayMap<>();

    public FixedRotationAnimationController(DisplayContent displayContent) {
        WindowState navigationBar;
        this.mContext = displayContent.mWmService.mContext;
        DisplayPolicy displayPolicy = displayContent.getDisplayPolicy();
        this.mStatusBar = displayPolicy.getStatusBar();
        if (!displayPolicy.navigationBarCanMove()) {
            navigationBar = displayPolicy.getNavigationBar();
        } else {
            navigationBar = null;
        }
        this.mNavigationBar = navigationBar;
    }

    void show() {
        for (int i = this.mAnimatedWindowToken.size() - 1; i >= 0; i--) {
            WindowToken windowToken = this.mAnimatedWindowToken.get(i);
            fadeWindowToken(true, windowToken);
        }
    }

    void hide() {
        WindowState windowState = this.mNavigationBar;
        if (windowState != null) {
            fadeWindowToken(false, windowState.mToken);
        }
        WindowState windowState2 = this.mStatusBar;
        if (windowState2 != null) {
            fadeWindowToken(false, windowState2.mToken);
        }
    }

    private void fadeWindowToken(boolean show, final WindowToken windowToken) {
        if (windowToken == null || windowToken.getParent() == null) {
            return;
        }
        Animation animation = AnimationUtils.loadAnimation(this.mContext, show ? R.anim.fade_in : R.anim.fade_out);
        LocalAnimationAdapter.AnimationSpec windowAnimationSpec = createAnimationSpec(animation);
        FixedRotationAnimationAdapter animationAdapter = new FixedRotationAnimationAdapter(windowAnimationSpec, windowToken.getSurfaceAnimationRunner(), show, windowToken);
        SurfaceAnimator.OnAnimationFinishedCallback finishedCallback = show ? new SurfaceAnimator.OnAnimationFinishedCallback() { // from class: com.android.server.wm.-$$Lambda$FixedRotationAnimationController$G3brwTIu6NI4WRL2IEx6JMKcwNY
            @Override // com.android.server.wm.SurfaceAnimator.OnAnimationFinishedCallback
            public final void onAnimationFinished(int i, AnimationAdapter animationAdapter2) {
                this.f$0.lambda$fadeWindowToken$0$FixedRotationAnimationController(windowToken, i, animationAdapter2);
            }
        } : null;
        windowToken.startAnimation(windowToken.getPendingTransaction(), animationAdapter, show, 64, finishedCallback);
        this.mAnimatedWindowToken.add(windowToken);
    }

    public /* synthetic */ void lambda$fadeWindowToken$0$FixedRotationAnimationController(WindowToken windowToken, int t, AnimationAdapter r) {
        Runnable runnable = this.mDeferredFinishCallbacks.remove(windowToken);
        if (runnable != null) {
            runnable.run();
        }
    }

    private LocalAnimationAdapter.AnimationSpec createAnimationSpec(final Animation animation) {
        return new LocalAnimationAdapter.AnimationSpec() { // from class: com.android.server.wm.FixedRotationAnimationController.1
            final Transformation mTransformation = new Transformation();

            @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
            public boolean getShowWallpaper() {
                return true;
            }

            @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
            public long getDuration() {
                return animation.getDuration();
            }

            @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
            public void apply(SurfaceControl.Transaction t, SurfaceControl leash, long currentPlayTime) {
                this.mTransformation.clear();
                animation.getTransformation(currentPlayTime, this.mTransformation);
                t.setAlpha(leash, this.mTransformation.getAlpha());
            }

            @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
            public void dump(PrintWriter pw, String prefix) {
                pw.print(prefix);
                pw.println(animation);
            }

            @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
            public void dumpDebugInner(ProtoOutputStream proto) {
                long token = proto.start(1146756268033L);
                proto.write(1138166333441L, animation.toString());
                proto.end(token);
            }
        };
    }

    private class FixedRotationAnimationAdapter extends LocalAnimationAdapter {
        private final boolean mShow;
        private final WindowToken mToken;

        FixedRotationAnimationAdapter(LocalAnimationAdapter.AnimationSpec windowAnimationSpec, SurfaceAnimationRunner surfaceAnimationRunner, boolean show, WindowToken token) {
            super(windowAnimationSpec, surfaceAnimationRunner);
            this.mShow = show;
            this.mToken = token;
        }

        @Override // com.android.server.wm.AnimationAdapter
        public boolean shouldDeferAnimationFinish(Runnable endDeferFinishCallback) {
            if (!this.mShow) {
                FixedRotationAnimationController.this.mDeferredFinishCallbacks.put(this.mToken, endDeferFinishCallback);
                return true;
            }
            return false;
        }
    }
}
