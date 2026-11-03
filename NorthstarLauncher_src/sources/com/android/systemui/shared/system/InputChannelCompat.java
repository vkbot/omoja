package com.android.systemui.shared.system;

import android.os.Bundle;
import android.os.Looper;
import android.view.BatchedInputEventReceiver;
import android.view.Choreographer;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventSender;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public class InputChannelCompat {

    public interface InputEventListener {
        void onInputEvent(InputEvent inputEvent);
    }

    public static InputEventReceiver fromBundle(Bundle bundle, String str, Looper looper, Choreographer choreographer, InputEventListener inputEventListener) {
        return new InputEventReceiver(bundle.getParcelable(str), looper, choreographer, inputEventListener);
    }

    public static boolean mergeMotionEvent(MotionEvent motionEvent, MotionEvent motionEvent2) {
        return motionEvent2.addBatch(motionEvent);
    }

    public static class InputEventReceiver {
        private final InputChannel mInputChannel;
        private final BatchedInputEventReceiver mReceiver;

        public InputEventReceiver(InputChannel inputChannel, Looper looper, Choreographer choreographer, final InputEventListener inputEventListener) {
            this.mInputChannel = inputChannel;
            this.mReceiver = new BatchedInputEventReceiver(inputChannel, looper, choreographer) { // from class: com.android.systemui.shared.system.InputChannelCompat.InputEventReceiver.1
                public void onInputEvent(InputEvent inputEvent) {
                    inputEventListener.onInputEvent(inputEvent);
                    finishInputEvent(inputEvent, true);
                }
            };
        }

        public void dispose() {
            this.mReceiver.dispose();
            this.mInputChannel.dispose();
        }
    }

    public static class InputEventDispatcher {
        private final InputChannel mInputChannel;
        private final InputEventSender mSender;

        public InputEventDispatcher(InputChannel inputChannel, Looper looper) {
            this.mInputChannel = inputChannel;
            this.mSender = new InputEventSender(inputChannel, looper) { // from class: com.android.systemui.shared.system.InputChannelCompat.InputEventDispatcher.1
            };
        }

        public void dispatch(InputEvent inputEvent) {
            this.mSender.sendInputEvent(inputEvent.getSequenceNumber(), inputEvent);
        }

        public void dispose() {
            this.mSender.dispose();
            this.mInputChannel.dispose();
        }
    }
}
