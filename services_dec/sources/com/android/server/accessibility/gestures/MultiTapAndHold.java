package com.android.server.accessibility.gestures;

import android.content.Context;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class MultiTapAndHold extends MultiTap {
    MultiTapAndHold(Context context, int taps, int gesture, GestureMatcher.StateChangeListener listener) {
        super(context, taps, gesture, listener);
    }

    @Override // com.android.server.accessibility.gestures.MultiTap, com.android.server.accessibility.gestures.GestureMatcher
    protected void onDown(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        super.onDown(event, rawEvent, policyFlags);
        if (this.mCurrentTaps + 1 == this.mTargetTaps) {
            completeAfterLongPressTimeout(event, rawEvent, policyFlags);
        }
    }

    @Override // com.android.server.accessibility.gestures.MultiTap, com.android.server.accessibility.gestures.GestureMatcher
    protected void onUp(MotionEvent event, MotionEvent rawEvent, int policyFlags) {
        super.onUp(event, rawEvent, policyFlags);
        cancelAfterDoubleTapTimeout(event, rawEvent, policyFlags);
    }

    @Override // com.android.server.accessibility.gestures.MultiTap, com.android.server.accessibility.gestures.GestureMatcher
    public String getGestureName() {
        int i = this.mTargetTaps;
        if (i == 2) {
            return "Double Tap and Hold";
        }
        if (i == 3) {
            return "Triple Tap and Hold";
        }
        return Integer.toString(this.mTargetTaps) + " Taps and Hold";
    }
}
