package com.android.launcher3.util;

import android.view.View;
import android.view.ViewTreeObserver;
import com.android.launcher3.Launcher;
import com.android.launcher3.Workspace;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class ViewOnDrawExecutor implements Executor, ViewTreeObserver.OnDrawListener, Runnable, View.OnAttachStateChangeListener {
    private View mAttachedView;
    private boolean mCompleted;
    private boolean mFirstDrawCompleted;
    private boolean mLoadAnimationCompleted;
    private Consumer<ViewOnDrawExecutor> mOnClearCallback;
    private final ArrayList<Runnable> mTasks = new ArrayList<>();

    protected boolean isCompleted() {
        return this.mCompleted;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View v) {
    }

    public void attachTo(final Launcher launcher) {
        Workspace workspace = launcher.getWorkspace();
        Objects.requireNonNull(launcher);
        attachTo(workspace, true, new Consumer() { // from class: com.android.launcher3.util.ViewOnDrawExecutor$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                launcher.clearPendingExecutor((ViewOnDrawExecutor) obj);
            }
        });
    }

    public void attachTo(View attachedView, boolean waitForLoadAnimation, Consumer<ViewOnDrawExecutor> onClearCallback) {
        this.mOnClearCallback = onClearCallback;
        this.mAttachedView = attachedView;
        attachedView.addOnAttachStateChangeListener(this);
        if (!waitForLoadAnimation) {
            this.mLoadAnimationCompleted = true;
        }
        if (this.mAttachedView.isAttachedToWindow()) {
            attachObserver();
        }
    }

    private void attachObserver() {
        if (this.mCompleted) {
            return;
        }
        this.mAttachedView.getViewTreeObserver().addOnDrawListener(this);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        this.mTasks.add(command);
        Executors.MODEL_EXECUTOR.setThreadPriority(10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View v) {
        attachObserver();
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        this.mFirstDrawCompleted = true;
        this.mAttachedView.post(this);
    }

    public void onLoadAnimationCompleted() {
        this.mLoadAnimationCompleted = true;
        View view = this.mAttachedView;
        if (view != null) {
            view.post(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mLoadAnimationCompleted && this.mFirstDrawCompleted && !this.mCompleted) {
            runAllTasks();
        }
    }

    public void markCompleted() {
        this.mTasks.clear();
        this.mCompleted = true;
        View view = this.mAttachedView;
        if (view != null) {
            view.getViewTreeObserver().removeOnDrawListener(this);
            this.mAttachedView.removeOnAttachStateChangeListener(this);
        }
        Consumer<ViewOnDrawExecutor> consumer = this.mOnClearCallback;
        if (consumer != null) {
            consumer.accept(this);
        }
        Executors.MODEL_EXECUTOR.setThreadPriority(0);
    }

    public void runAllTasks() {
        Iterator<Runnable> it = this.mTasks.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        markCompleted();
    }
}
