package com.android.server.wm;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import com.android.internal.util.FastPrintWriter;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
class RemoteAnimationController implements IBinder.DeathRecipient {
    private static final String TAG = "WindowManager";
    private static final long TIMEOUT_MS = 2000;
    private boolean mCanceled;
    private FinishedCallback mFinishedCallback;
    private final Handler mHandler;
    private boolean mLinkedToDeathOfRunner;
    private final RemoteAnimationAdapter mRemoteAnimationAdapter;
    private final WindowManagerService mService;
    private final ArrayList<RemoteAnimationRecord> mPendingAnimations = new ArrayList<>();
    private final ArrayList<WallpaperAnimationAdapter> mPendingWallpaperAnimations = new ArrayList<>();
    private final Rect mTmpRect = new Rect();
    private final Runnable mTimeoutRunnable = new Runnable() { // from class: com.android.server.wm.-$$Lambda$RemoteAnimationController$uQS8vaPKQ-E3x_9G8NCxPQmw1fw
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0$RemoteAnimationController();
        }
    };

    public /* synthetic */ void lambda$new$0$RemoteAnimationController() {
        cancelAnimation("timeoutRunnable");
    }

    RemoteAnimationController(WindowManagerService service, RemoteAnimationAdapter remoteAnimationAdapter, Handler handler) {
        this.mService = service;
        this.mRemoteAnimationAdapter = remoteAnimationAdapter;
        this.mHandler = handler;
    }

    RemoteAnimationRecord createRemoteAnimationRecord(WindowContainer windowContainer, Point position, Rect localBounds, Rect stackBounds, Rect startBounds) {
        if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
            String protoLogParam0 = String.valueOf(windowContainer);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 2022422429, 0, null, protoLogParam0);
        }
        RemoteAnimationRecord adapters = new RemoteAnimationRecord(windowContainer, position, localBounds, stackBounds, startBounds);
        this.mPendingAnimations.add(adapters);
        return adapters;
    }

    void goodToGo() {
        if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 873914452, 0, null, (Object[]) null);
        }
        if (this.mPendingAnimations.isEmpty() || this.mCanceled) {
            if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
                String protoLogParam0 = String.valueOf(this.mCanceled);
                long protoLogParam1 = this.mPendingAnimations.size();
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 194124419, 4, null, protoLogParam0, Long.valueOf(protoLogParam1));
            }
            onAnimationFinished();
            return;
        }
        this.mHandler.postDelayed(this.mTimeoutRunnable, (long) (this.mService.getCurrentAnimatorScale() * 2000.0f));
        this.mFinishedCallback = new FinishedCallback(this);
        final RemoteAnimationTarget[] appTargets = createAppAnimations();
        if (appTargets.length == 0) {
            if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 690411811, 0, null, (Object[]) null);
            }
            onAnimationFinished();
        } else {
            final RemoteAnimationTarget[] wallpaperTargets = createWallpaperAnimations();
            this.mService.mAnimator.addAfterPrepareSurfacesRunnable(new Runnable() { // from class: com.android.server.wm.-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$goodToGo$1$RemoteAnimationController(appTargets, wallpaperTargets);
                }
            });
            setRunningRemoteAnimation(true);
        }
    }

    public /* synthetic */ void lambda$goodToGo$1$RemoteAnimationController(RemoteAnimationTarget[] appTargets, RemoteAnimationTarget[] wallpaperTargets) {
        try {
            linkToDeathOfRunner();
            this.mRemoteAnimationAdapter.getRunner().onAnimationStart(appTargets, wallpaperTargets, this.mFinishedCallback);
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to start remote animation", e);
            onAnimationFinished();
        }
        if (ProtoLogImpl.isEnabled(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS)) {
            if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, -2012562539, 0, null, (Object[]) null);
            }
            writeStartDebugStatement();
        }
    }

    void cancelAnimation(String reason) {
        if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
            String protoLogParam0 = String.valueOf(reason);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 1891501279, 0, null, protoLogParam0);
        }
        synchronized (this.mService.getWindowManagerLock()) {
            if (this.mCanceled) {
                return;
            }
            this.mCanceled = true;
            onAnimationFinished();
            invokeAnimationCancelled();
        }
    }

    private void writeStartDebugStatement() {
        if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 1964565370, 0, null, (Object[]) null);
        }
        StringWriter sw = new StringWriter();
        PrintWriter fastPrintWriter = new FastPrintWriter(sw);
        for (int i = this.mPendingAnimations.size() - 1; i >= 0; i--) {
            this.mPendingAnimations.get(i).mAdapter.dump(fastPrintWriter, "");
        }
        fastPrintWriter.close();
        if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
            String protoLogParam0 = String.valueOf(sw.toString());
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 835814848, 0, null, protoLogParam0);
        }
    }

    private RemoteAnimationTarget[] createAppAnimations() {
        if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, -653156702, 0, null, (Object[]) null);
        }
        ArrayList<RemoteAnimationTarget> targets = new ArrayList<>();
        for (int i = this.mPendingAnimations.size() - 1; i >= 0; i--) {
            RemoteAnimationRecord wrappers = this.mPendingAnimations.get(i);
            RemoteAnimationTarget target = wrappers.createRemoteAnimationTarget();
            if (target != null) {
                if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
                    String protoLogParam0 = String.valueOf(wrappers.mWindowContainer);
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, -1248645819, 0, null, protoLogParam0);
                }
                targets.add(target);
            } else {
                if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
                    String protoLogParam1 = String.valueOf(wrappers.mWindowContainer);
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 638429464, 0, null, protoLogParam1);
                }
                if (wrappers.mAdapter != null && wrappers.mAdapter.mCapturedFinishCallback != null) {
                    wrappers.mAdapter.mCapturedFinishCallback.onAnimationFinished(wrappers.mAdapter.mAnimationType, wrappers.mAdapter);
                }
                if (wrappers.mThumbnailAdapter != null && wrappers.mThumbnailAdapter.mCapturedFinishCallback != null) {
                    wrappers.mThumbnailAdapter.mCapturedFinishCallback.onAnimationFinished(wrappers.mAdapter.mAnimationType, wrappers.mThumbnailAdapter);
                }
                this.mPendingAnimations.remove(i);
            }
        }
        return (RemoteAnimationTarget[]) targets.toArray(new RemoteAnimationTarget[targets.size()]);
    }

    private RemoteAnimationTarget[] createWallpaperAnimations() {
        if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 594260577, 0, null, (Object[]) null);
        }
        return WallpaperAnimationAdapter.startWallpaperAnimations(this.mService, this.mRemoteAnimationAdapter.getDuration(), this.mRemoteAnimationAdapter.getStatusBarTransitionDelay(), new Consumer() { // from class: com.android.server.wm.-$$Lambda$RemoteAnimationController$dP8qDptNigoqhzVtIudsX5naGu4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$createWallpaperAnimations$2$RemoteAnimationController((WallpaperAnimationAdapter) obj);
            }
        }, this.mPendingWallpaperAnimations);
    }

    public /* synthetic */ void lambda$createWallpaperAnimations$2$RemoteAnimationController(WallpaperAnimationAdapter adapter) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mPendingWallpaperAnimations.remove(adapter);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimationFinished() {
        if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
            long protoLogParam0 = this.mPendingAnimations.size();
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, -1497837552, 1, null, Long.valueOf(protoLogParam0));
        }
        this.mHandler.removeCallbacks(this.mTimeoutRunnable);
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                unlinkToDeathOfRunner();
                releaseFinishedCallback();
                this.mService.openSurfaceTransaction();
                try {
                    try {
                        if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
                            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 557227556, 0, null, (Object[]) null);
                        }
                        for (int i = this.mPendingAnimations.size() - 1; i >= 0; i--) {
                            RemoteAnimationRecord adapters = this.mPendingAnimations.get(i);
                            if (adapters.mAdapter != null) {
                                adapters.mAdapter.mCapturedFinishCallback.onAnimationFinished(adapters.mAdapter.mAnimationType, adapters.mAdapter);
                            }
                            if (adapters.mThumbnailAdapter != null) {
                                adapters.mThumbnailAdapter.mCapturedFinishCallback.onAnimationFinished(adapters.mAdapter.mAnimationType, adapters.mThumbnailAdapter);
                            }
                            this.mPendingAnimations.remove(i);
                            if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
                                String protoLogParam1 = String.valueOf(adapters.mWindowContainer);
                                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 972354148, 0, null, protoLogParam1);
                            }
                        }
                        for (int i2 = this.mPendingWallpaperAnimations.size() - 1; i2 >= 0; i2--) {
                            WallpaperAnimationAdapter adapter = this.mPendingWallpaperAnimations.get(i2);
                            adapter.getLeashFinishedCallback().onAnimationFinished(adapter.getLastAnimationType(), adapter);
                            this.mPendingWallpaperAnimations.remove(i2);
                            if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
                                String protoLogParam2 = String.valueOf(adapter.getToken());
                                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, -853404763, 0, null, protoLogParam2);
                            }
                        }
                        this.mService.closeSurfaceTransaction("RemoteAnimationController#finished");
                    } catch (Exception e) {
                        Slog.e(TAG, "Failed to finish remote animation", e);
                        throw e;
                    }
                } catch (Throwable th) {
                    this.mService.closeSurfaceTransaction("RemoteAnimationController#finished");
                    throw th;
                }
            } catch (Throwable th2) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        setRunningRemoteAnimation(false);
        if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, 248210157, 0, null, (Object[]) null);
        }
    }

    private void invokeAnimationCancelled() {
        try {
            this.mRemoteAnimationAdapter.getRunner().onAnimationCancelled();
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to notify cancel", e);
        }
    }

    private void releaseFinishedCallback() {
        FinishedCallback finishedCallback = this.mFinishedCallback;
        if (finishedCallback != null) {
            finishedCallback.release();
            this.mFinishedCallback = null;
        }
    }

    private void setRunningRemoteAnimation(boolean running) {
        int pid = this.mRemoteAnimationAdapter.getCallingPid();
        int uid = this.mRemoteAnimationAdapter.getCallingUid();
        if (pid == 0) {
            throw new RuntimeException("Calling pid of remote animation was null");
        }
        WindowProcessController wpc = this.mService.mAtmService.getProcessController(pid, uid);
        if (wpc == null) {
            Slog.w(TAG, "Unable to find process with pid=" + pid + " uid=" + uid);
            return;
        }
        wpc.setRunningRemoteAnimation(running);
    }

    private void linkToDeathOfRunner() throws RemoteException {
        if (!this.mLinkedToDeathOfRunner) {
            this.mRemoteAnimationAdapter.getRunner().asBinder().linkToDeath(this, 0);
            this.mLinkedToDeathOfRunner = true;
        }
    }

    private void unlinkToDeathOfRunner() {
        if (this.mLinkedToDeathOfRunner) {
            this.mRemoteAnimationAdapter.getRunner().asBinder().unlinkToDeath(this, 0);
            this.mLinkedToDeathOfRunner = false;
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        cancelAnimation("binderDied");
    }

    private static final class FinishedCallback extends IRemoteAnimationFinishedCallback.Stub {
        RemoteAnimationController mOuter;

        FinishedCallback(RemoteAnimationController outer) {
            this.mOuter = outer;
        }

        public void onAnimationFinished() throws RemoteException {
            if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
                String protoLogParam0 = String.valueOf(this.mOuter);
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, -2024464438, 0, null, protoLogParam0);
            }
            long token = Binder.clearCallingIdentity();
            try {
                if (this.mOuter != null) {
                    this.mOuter.onAnimationFinished();
                    this.mOuter = null;
                }
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        void release() {
            if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
                String protoLogParam0 = String.valueOf(this.mOuter);
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, -2109864870, 0, null, protoLogParam0);
            }
            this.mOuter = null;
        }
    }

    public class RemoteAnimationRecord {
        RemoteAnimationAdapterWrapper mAdapter;
        final Rect mStartBounds;
        RemoteAnimationTarget mTarget;
        RemoteAnimationAdapterWrapper mThumbnailAdapter;
        final WindowContainer mWindowContainer;

        RemoteAnimationRecord(WindowContainer windowContainer, Point endPos, Rect localBounds, Rect endBounds, Rect startBounds) {
            this.mThumbnailAdapter = null;
            this.mWindowContainer = windowContainer;
            this.mAdapter = RemoteAnimationController.this.new RemoteAnimationAdapterWrapper(this, endPos, localBounds, endBounds);
            if (startBounds != null) {
                this.mStartBounds = new Rect(startBounds);
                RemoteAnimationController.this.mTmpRect.set(startBounds);
                RemoteAnimationController.this.mTmpRect.offsetTo(0, 0);
                if (RemoteAnimationController.this.mRemoteAnimationAdapter.getChangeNeedsSnapshot()) {
                    this.mThumbnailAdapter = RemoteAnimationController.this.new RemoteAnimationAdapterWrapper(this, new Point(0, 0), localBounds, RemoteAnimationController.this.mTmpRect);
                    return;
                }
                return;
            }
            this.mStartBounds = null;
        }

        RemoteAnimationTarget createRemoteAnimationTarget() {
            RemoteAnimationAdapterWrapper remoteAnimationAdapterWrapper = this.mAdapter;
            if (remoteAnimationAdapterWrapper == null || remoteAnimationAdapterWrapper.mCapturedFinishCallback == null || this.mAdapter.mCapturedLeash == null) {
                return null;
            }
            RemoteAnimationTarget remoteAnimationTargetCreateRemoteAnimationTarget = this.mWindowContainer.createRemoteAnimationTarget(this);
            this.mTarget = remoteAnimationTargetCreateRemoteAnimationTarget;
            return remoteAnimationTargetCreateRemoteAnimationTarget;
        }

        int getMode() {
            DisplayContent dc = this.mWindowContainer.getDisplayContent();
            ActivityRecord topActivity = this.mWindowContainer.getTopMostActivity();
            if (dc.mOpeningApps.contains(topActivity)) {
                return 0;
            }
            if (dc.mChangingContainers.contains(this.mWindowContainer)) {
                return 2;
            }
            return 1;
        }
    }

    class RemoteAnimationAdapterWrapper implements AnimationAdapter {
        private int mAnimationType;
        private SurfaceAnimator.OnAnimationFinishedCallback mCapturedFinishCallback;
        SurfaceControl mCapturedLeash;
        final Rect mLocalBounds;
        private final RemoteAnimationRecord mRecord;
        final Point mPosition = new Point();
        final Rect mStackBounds = new Rect();

        RemoteAnimationAdapterWrapper(RemoteAnimationRecord record, Point position, Rect localBounds, Rect stackBounds) {
            this.mRecord = record;
            this.mPosition.set(position.x, position.y);
            this.mLocalBounds = localBounds;
            this.mStackBounds.set(stackBounds);
        }

        @Override // com.android.server.wm.AnimationAdapter
        public boolean getShowWallpaper() {
            return false;
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void startAnimation(SurfaceControl animationLeash, SurfaceControl.Transaction t, int type, SurfaceAnimator.OnAnimationFinishedCallback finishCallback) {
            if (ProtoLog$Cache.WM_DEBUG_REMOTE_ANIMATIONS_enabled) {
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_REMOTE_ANIMATIONS, -1596995693, 0, null, (Object[]) null);
            }
            if (this.mRecord.mStartBounds != null) {
                t.setPosition(animationLeash, this.mRecord.mStartBounds.left, this.mRecord.mStartBounds.top);
                t.setWindowCrop(animationLeash, this.mRecord.mStartBounds.width(), this.mRecord.mStartBounds.height());
            } else {
                t.setPosition(animationLeash, this.mPosition.x, this.mPosition.y);
                t.setWindowCrop(animationLeash, this.mStackBounds.width(), this.mStackBounds.height());
            }
            this.mCapturedLeash = animationLeash;
            this.mCapturedFinishCallback = finishCallback;
            this.mAnimationType = type;
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void onAnimationCancelled(SurfaceControl animationLeash) {
            if (this.mRecord.mAdapter == this) {
                this.mRecord.mAdapter = null;
            } else {
                this.mRecord.mThumbnailAdapter = null;
            }
            if (this.mRecord.mAdapter == null && this.mRecord.mThumbnailAdapter == null) {
                RemoteAnimationController.this.mPendingAnimations.remove(this.mRecord);
            }
            if (RemoteAnimationController.this.mPendingAnimations.isEmpty()) {
                RemoteAnimationController.this.cancelAnimation("allAppAnimationsCanceled");
            }
        }

        @Override // com.android.server.wm.AnimationAdapter
        public long getDurationHint() {
            return RemoteAnimationController.this.mRemoteAnimationAdapter.getDuration();
        }

        @Override // com.android.server.wm.AnimationAdapter
        public long getStatusBarTransitionsStartTime() {
            return SystemClock.uptimeMillis() + RemoteAnimationController.this.mRemoteAnimationAdapter.getStatusBarTransitionDelay();
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void dump(PrintWriter pw, String prefix) {
            pw.print(prefix);
            pw.print("container=");
            pw.println(this.mRecord.mWindowContainer);
            if (this.mRecord.mTarget != null) {
                pw.print(prefix);
                pw.println("Target:");
                this.mRecord.mTarget.dump(pw, prefix + "  ");
                return;
            }
            pw.print(prefix);
            pw.println("Target: null");
        }

        @Override // com.android.server.wm.AnimationAdapter
        public void dumpDebug(ProtoOutputStream proto) {
            long token = proto.start(1146756268034L);
            if (this.mRecord.mTarget != null) {
                this.mRecord.mTarget.dumpDebug(proto, 1146756268033L);
            }
            proto.end(token);
        }
    }
}
