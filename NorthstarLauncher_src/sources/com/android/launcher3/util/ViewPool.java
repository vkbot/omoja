package com.android.launcher3.util;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.util.ViewPool.Reusable;

/* JADX INFO: loaded from: classes.dex */
public class ViewPool<T extends View & Reusable> {
    private int mCurrentSize = 0;
    private final LayoutInflater mInflater;
    private final int mLayoutId;
    private final ViewGroup mParent;
    private final Object[] mPool;

    public interface Reusable {
        void onRecycle();
    }

    public ViewPool(Context context, ViewGroup parent, int layoutId, int maxSize, int initialSize) {
        this.mLayoutId = layoutId;
        this.mParent = parent;
        this.mInflater = LayoutInflater.from(context);
        this.mPool = new Object[maxSize];
        if (initialSize > 0) {
            initPool(initialSize);
        }
    }

    private void initPool(final int initialSize) {
        Preconditions.assertUIThread();
        final Handler handler = new Handler();
        LayoutInflater layoutInflater = this.mInflater;
        final LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(layoutInflater.getContext());
        new Thread(new Runnable() { // from class: com.android.launcher3.util.ViewPool$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m170lambda$initPool$1$comandroidlauncher3utilViewPool(initialSize, layoutInflaterCloneInContext, handler);
            }
        }, "ViewPool-init").start();
    }

    /* JADX INFO: renamed from: lambda$initPool$1$com-android-launcher3-util-ViewPool, reason: not valid java name */
    /* synthetic */ void m170lambda$initPool$1$comandroidlauncher3utilViewPool(int i, LayoutInflater layoutInflater, Handler handler) {
        for (int i2 = 0; i2 < i; i2++) {
            final View viewInflateNewView = inflateNewView(layoutInflater);
            handler.post(new Runnable() { // from class: com.android.launcher3.util.ViewPool$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m169lambda$initPool$0$comandroidlauncher3utilViewPool(viewInflateNewView);
                }
            });
        }
    }

    public void recycle(T view) {
        Preconditions.assertUIThread();
        view.onRecycle();
        m169lambda$initPool$0$comandroidlauncher3utilViewPool(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: addToPool, reason: merged with bridge method [inline-methods] */
    public void m169lambda$initPool$0$comandroidlauncher3utilViewPool(T view) {
        Preconditions.assertUIThread();
        int i = this.mCurrentSize;
        Object[] objArr = this.mPool;
        if (i >= objArr.length) {
            return;
        }
        objArr[i] = view;
        this.mCurrentSize = i + 1;
    }

    public T getView() {
        Preconditions.assertUIThread();
        int i = this.mCurrentSize;
        if (i > 0) {
            int i2 = i - 1;
            this.mCurrentSize = i2;
            return (T) ((View) this.mPool[i2]);
        }
        return (T) inflateNewView(this.mInflater);
    }

    private T inflateNewView(LayoutInflater layoutInflater) {
        return (T) layoutInflater.inflate(this.mLayoutId, this.mParent, false);
    }
}
