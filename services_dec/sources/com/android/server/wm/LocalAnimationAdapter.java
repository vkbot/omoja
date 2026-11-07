package com.android.server.wm;

import android.os.SystemClock;
import android.util.proto.ProtoOutputStream;
import android.view.SurfaceControl;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class LocalAnimationAdapter implements AnimationAdapter {
    private final SurfaceAnimationRunner mAnimator;
    private final AnimationSpec mSpec;

    LocalAnimationAdapter(AnimationSpec spec, SurfaceAnimationRunner animator) {
        this.mSpec = spec;
        this.mAnimator = animator;
    }

    @Override // com.android.server.wm.AnimationAdapter
    public boolean getShowWallpaper() {
        return this.mSpec.getShowWallpaper();
    }

    @Override // com.android.server.wm.AnimationAdapter
    public void startAnimation(SurfaceControl animationLeash, SurfaceControl.Transaction t, final int type, final SurfaceAnimator.OnAnimationFinishedCallback finishCallback) {
        this.mAnimator.startAnimation(this.mSpec, animationLeash, t, new Runnable() { // from class: com.android.server.wm.-$$Lambda$LocalAnimationAdapter$zbLki1x5Fhwh-g7q-dA43aw6Y4M
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startAnimation$0$LocalAnimationAdapter(finishCallback, type);
            }
        });
    }

    public /* synthetic */ void lambda$startAnimation$0$LocalAnimationAdapter(SurfaceAnimator.OnAnimationFinishedCallback finishCallback, int type) {
        finishCallback.onAnimationFinished(type, this);
    }

    @Override // com.android.server.wm.AnimationAdapter
    public void onAnimationCancelled(SurfaceControl animationLeash) {
        this.mAnimator.onAnimationCancelled(animationLeash);
    }

    @Override // com.android.server.wm.AnimationAdapter
    public long getDurationHint() {
        return this.mSpec.getDuration();
    }

    @Override // com.android.server.wm.AnimationAdapter
    public long getStatusBarTransitionsStartTime() {
        return this.mSpec.calculateStatusBarTransitionStartTime();
    }

    @Override // com.android.server.wm.AnimationAdapter
    public void dump(PrintWriter pw, String prefix) {
        this.mSpec.dump(pw, prefix);
    }

    @Override // com.android.server.wm.AnimationAdapter
    public void dumpDebug(ProtoOutputStream proto) {
        long token = proto.start(1146756268033L);
        this.mSpec.dumpDebug(proto, 1146756268033L);
        proto.end(token);
    }

    interface AnimationSpec {
        void apply(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, long j);

        void dump(PrintWriter printWriter, String str);

        void dumpDebugInner(ProtoOutputStream protoOutputStream);

        long getDuration();

        default boolean getShowWallpaper() {
            return false;
        }

        default long calculateStatusBarTransitionStartTime() {
            return SystemClock.uptimeMillis();
        }

        default boolean canSkipFirstFrame() {
            return false;
        }

        default boolean needsEarlyWakeup() {
            return false;
        }

        default float getFraction(float currentPlayTime) {
            float duration = getDuration();
            if (duration > 0.0f) {
                return currentPlayTime / duration;
            }
            return 1.0f;
        }

        default void dumpDebug(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            dumpDebugInner(proto);
            proto.end(token);
        }
    }
}
