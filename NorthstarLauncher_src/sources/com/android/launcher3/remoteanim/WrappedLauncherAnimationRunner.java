package com.android.launcher3.remoteanim;

import com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;

/* JADX INFO: loaded from: classes.dex */
public class WrappedLauncherAnimationRunner<R extends WrappedAnimationRunnerImpl> extends LauncherAnimationRunner {
    private final R mImpl;

    public WrappedLauncherAnimationRunner(R animationRunnerImpl, boolean startAtFrontOfQueue) {
        super(animationRunnerImpl.getHandler(), startAtFrontOfQueue);
        this.mImpl = animationRunnerImpl;
    }

    @Override // com.android.launcher3.remoteanim.LauncherAnimationRunner, com.android.launcher3.remoteanim.WrappedAnimationRunnerImpl
    public void onCreateAnimation(RemoteAnimationTargetCompat[] appTargets, RemoteAnimationTargetCompat[] wallpaperTargets, LauncherAnimationRunner.AnimationResult result) {
        R r = this.mImpl;
        if (r != null) {
            r.onCreateAnimation(appTargets, wallpaperTargets, result);
        }
    }
}
