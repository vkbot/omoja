package org.libpag;

import android.animation.ValueAnimator;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
class DisplayLink implements ValueAnimator.AnimatorUpdateListener {
    private ValueAnimator a;
    private long nativeContext = 0;
    private Handler b = new Handler(Looper.getMainLooper());

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DisplayLink.this.a.start();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DisplayLink.this.a.cancel();
        }
    }

    private DisplayLink() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.a = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(1000L);
        this.a.addUpdateListener(this);
        this.a.setRepeatCount(-1);
    }

    public static DisplayLink Create(long j) {
        DisplayLink displayLink = new DisplayLink();
        displayLink.nativeContext = j;
        return displayLink;
    }

    private native void onUpdate(long j);

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        onUpdate(this.nativeContext);
    }

    public void start() {
        this.b.post(new a());
    }

    public void stop() {
        this.b.post(new b());
    }
}
