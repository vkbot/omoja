package com.android.server.wm;

import android.os.Looper;
import android.util.Slog;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes2.dex */
class DragInputEventReceiver extends InputEventReceiver {
    private final DragDropController mDragDropController;
    private boolean mIsStartEvent;
    private boolean mMuteInput;
    private boolean mStylusButtonDownAtStart;

    DragInputEventReceiver(InputChannel inputChannel, Looper looper, DragDropController controller) {
        super(inputChannel, looper);
        this.mIsStartEvent = true;
        this.mMuteInput = false;
        this.mDragDropController = controller;
    }

    public void onInputEvent(InputEvent event) {
        boolean handled = false;
        try {
            try {
                if ((event instanceof MotionEvent) && (event.getSource() & 2) != 0 && !this.mMuteInput) {
                    MotionEvent motionEvent = (MotionEvent) event;
                    float newX = motionEvent.getRawX();
                    float newY = motionEvent.getRawY();
                    boolean isStylusButtonDown = (motionEvent.getButtonState() & 32) != 0;
                    if (this.mIsStartEvent) {
                        this.mStylusButtonDownAtStart = isStylusButtonDown;
                        this.mIsStartEvent = false;
                    }
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        return;
                    }
                    if (action == 1) {
                        this.mMuteInput = true;
                    } else if (action != 2) {
                        if (action != 3) {
                            return;
                        } else {
                            this.mMuteInput = true;
                        }
                    } else if (this.mStylusButtonDownAtStart && !isStylusButtonDown) {
                        this.mMuteInput = true;
                    }
                    this.mDragDropController.handleMotionEvent(this.mMuteInput ? false : true, newX, newY);
                    handled = true;
                }
            } catch (Exception e) {
                Slog.e("WindowManager", "Exception caught by drag handleMotion", e);
            }
        } finally {
            finishInputEvent(event, false);
        }
    }
}
