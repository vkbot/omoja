package com.android.launcher3.views.dragableviews;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class TouchListenerFrameLayout extends FrameLayout {
    private Consumer<MotionEvent> mConsumer;

    public void setTouchEventListener(Consumer<MotionEvent> eventConsumer) {
        this.mConsumer = eventConsumer;
    }

    public TouchListenerFrameLayout(Context context) {
        super(context);
    }

    public TouchListenerFrameLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public TouchListenerFrameLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        Consumer<MotionEvent> consumer;
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(ev);
        if ((ev.getAction() != 0 || zDispatchTouchEvent) && (consumer = this.mConsumer) != null) {
            consumer.accept(ev);
        }
        return zDispatchTouchEvent;
    }
}
