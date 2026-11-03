package com.android.launcher3.views.blur;

import android.os.Handler;
import android.os.Looper;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class BlurRenderWatcher {
    private static BlurRenderWatcher sInstance = new BlurRenderWatcher();
    private final Set<IBlurRender> mBlurRenderSet = new CopyOnWriteArraySet();
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final AtomicBoolean mBlurEnabled = new AtomicBoolean(true);

    public interface IBlurRender {
        void blur();

        void setBlurEnabled(boolean enabled);
    }

    public static BlurRenderWatcher getInstance() {
        return sInstance;
    }

    private BlurRenderWatcher() {
    }

    public void blur() {
        this.mBlurRenderSet.forEach(new Consumer() { // from class: com.android.launcher3.views.blur.BlurRenderWatcher$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((BlurRenderWatcher.IBlurRender) obj).blur();
            }
        });
    }

    public void setBlurEnabled(final boolean enabled) {
        this.mBlurEnabled.set(enabled);
        this.mHandler.post(new Runnable() { // from class: com.android.launcher3.views.blur.BlurRenderWatcher$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m185xb0bf793e(enabled);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setBlurEnabled$1$com-android-launcher3-views-blur-BlurRenderWatcher, reason: not valid java name */
    /* synthetic */ void m185xb0bf793e(final boolean z) {
        this.mBlurRenderSet.forEach(new Consumer() { // from class: com.android.launcher3.views.blur.BlurRenderWatcher$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((BlurRenderWatcher.IBlurRender) obj).setBlurEnabled(z);
            }
        });
    }

    public boolean isBlurEnabled() {
        return this.mBlurEnabled.get();
    }

    public void addBlurListener(IBlurRender render) {
        this.mBlurRenderSet.add(render);
    }

    public void removeBlurListener(IBlurRender render) {
        this.mBlurRenderSet.remove(render);
    }
}
