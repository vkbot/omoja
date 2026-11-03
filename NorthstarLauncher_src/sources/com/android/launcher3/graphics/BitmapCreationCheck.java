package com.android.launcher3.graphics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.GraphicsUtils;
import java.util.Objects;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class BitmapCreationCheck {
    public static final boolean ENABLED = false;
    private static final String TAG = "BitmapCreationCheck";

    public static void startTracking(Context context) {
        final MyTracker myTracker = new MyTracker();
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(myTracker);
        Objects.requireNonNull(myTracker);
        GraphicsUtils.sOnNewBitmapRunnable = new Runnable() { // from class: com.android.launcher3.graphics.BitmapCreationCheck$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                myTracker.onBitmapCreated();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class MyTracker implements Application.ActivityLifecycleCallbacks, View.OnAttachStateChangeListener {
        private final ThreadLocal<Boolean> mCurrentThreadDrawing;

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        private MyTracker() {
            this.mCurrentThreadDrawing = ThreadLocal.withInitial(new Supplier() { // from class: com.android.launcher3.graphics.BitmapCreationCheck$MyTracker$$ExternalSyntheticLambda0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return BitmapCreationCheck.MyTracker.lambda$new$0();
                }
            });
        }

        static /* synthetic */ Boolean lambda$new$0() {
            return false;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            activity.getWindow().getDecorView().addOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnDrawListener(new MyViewDrawListener(view.getHandler()));
        }

        private class MyViewDrawListener implements ViewTreeObserver.OnDrawListener, Runnable {
            private final Handler mHandler;

            MyViewDrawListener(Handler handler) {
                this.mHandler = handler;
            }

            @Override // android.view.ViewTreeObserver.OnDrawListener
            public void onDraw() {
                MyTracker.this.mCurrentThreadDrawing.set(true);
                Utilities.postAsyncCallback(this.mHandler, this);
            }

            @Override // java.lang.Runnable
            public void run() {
                MyTracker.this.mCurrentThreadDrawing.set(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onBitmapCreated() {
            if (this.mCurrentThreadDrawing.get().booleanValue()) {
                Log.e(BitmapCreationCheck.TAG, "Bitmap created during draw pass", new Exception());
            }
        }
    }
}
