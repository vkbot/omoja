package com.android.launcher3.dragndrop;

import android.os.SystemClock;
import android.view.DragEvent;
import android.view.MotionEvent;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public abstract class DragDriver {
    protected final EventListener mEventListener;
    protected final Consumer<MotionEvent> mSecondaryEventConsumer;

    public interface EventListener {
        void onDriverDragCancel();

        void onDriverDragEnd(float x, float y);

        void onDriverDragExitWindow();

        void onDriverDragMove(float x, float y);
    }

    public boolean onDragEvent(DragEvent event) {
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return false;
    }

    public boolean onTouchEvent(MotionEvent ev) {
        return false;
    }

    public DragDriver(EventListener eventListener, Consumer<MotionEvent> sec) {
        this.mEventListener = eventListener;
        this.mSecondaryEventConsumer = sec;
    }

    public static DragDriver create(DragController dragController, DragOptions options, Consumer<MotionEvent> sec) {
        if (options.simulatedDndStartPoint != null) {
            if (options.isAccessibleDrag) {
                return null;
            }
            return new SystemDragDriver(dragController, sec);
        }
        return new InternalDragDriver(dragController, sec);
    }

    static class SystemDragDriver extends DragDriver {
        private final long mDragStartTime;
        float mLastX;
        float mLastY;

        @Override // com.android.launcher3.dragndrop.DragDriver
        public boolean onInterceptTouchEvent(MotionEvent ev) {
            return false;
        }

        SystemDragDriver(DragController dragController, Consumer<MotionEvent> sec) {
            super(dragController, sec);
            this.mLastX = 0.0f;
            this.mLastY = 0.0f;
            this.mDragStartTime = SystemClock.uptimeMillis();
        }

        private void simulateSecondaryMotionEvent(DragEvent event) {
            int i;
            int action = event.getAction();
            int i2 = 1;
            if (action != 1) {
                if (action == 2) {
                    i = 2;
                } else if (action != 4) {
                    return;
                }
                MotionEvent motionEventObtain = MotionEvent.obtain(this.mDragStartTime, SystemClock.uptimeMillis(), i, event.getX(), event.getY(), 0);
                this.mSecondaryEventConsumer.accept(motionEventObtain);
                motionEventObtain.recycle();
            }
            i2 = 0;
            i = i2;
            MotionEvent motionEventObtain2 = MotionEvent.obtain(this.mDragStartTime, SystemClock.uptimeMillis(), i, event.getX(), event.getY(), 0);
            this.mSecondaryEventConsumer.accept(motionEventObtain2);
            motionEventObtain2.recycle();
        }

        @Override // com.android.launcher3.dragndrop.DragDriver
        public boolean onDragEvent(DragEvent event) {
            simulateSecondaryMotionEvent(event);
            switch (event.getAction()) {
                case 1:
                    this.mLastX = event.getX();
                    this.mLastY = event.getY();
                    return true;
                case 2:
                    this.mLastX = event.getX();
                    this.mLastY = event.getY();
                    this.mEventListener.onDriverDragMove(event.getX(), event.getY());
                    return true;
                case 3:
                    this.mLastX = event.getX();
                    this.mLastY = event.getY();
                    this.mEventListener.onDriverDragMove(event.getX(), event.getY());
                    this.mEventListener.onDriverDragEnd(this.mLastX, this.mLastY);
                    return true;
                case 4:
                    this.mEventListener.onDriverDragCancel();
                    return true;
                case 6:
                    this.mEventListener.onDriverDragExitWindow();
                case 5:
                    return true;
                default:
                    return false;
            }
        }
    }

    static class InternalDragDriver extends DragDriver {
        InternalDragDriver(DragController dragController, Consumer<MotionEvent> sec) {
            super(dragController, sec);
        }

        @Override // com.android.launcher3.dragndrop.DragDriver
        public boolean onTouchEvent(MotionEvent ev) {
            this.mSecondaryEventConsumer.accept(ev);
            int action = ev.getAction();
            if (action == 1) {
                this.mEventListener.onDriverDragMove(ev.getX(), ev.getY());
                this.mEventListener.onDriverDragEnd(ev.getX(), ev.getY());
            } else if (action == 2) {
                this.mEventListener.onDriverDragMove(ev.getX(), ev.getY());
            } else if (action == 3) {
                this.mEventListener.onDriverDragCancel();
            }
            return true;
        }

        @Override // com.android.launcher3.dragndrop.DragDriver
        public boolean onInterceptTouchEvent(MotionEvent ev) {
            this.mSecondaryEventConsumer.accept(ev);
            int action = ev.getAction();
            if (action == 1) {
                this.mEventListener.onDriverDragEnd(ev.getX(), ev.getY());
            } else if (action == 3) {
                this.mEventListener.onDriverDragCancel();
            }
            return true;
        }
    }
}
