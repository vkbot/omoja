package com.android.systemui.shared.system;

import android.os.Bundle;
import android.os.Looper;
import android.view.Choreographer;
import android.view.InputMonitor;

/* JADX INFO: loaded from: classes.dex */
public class InputMonitorCompat {
    private final InputMonitor mInputMonitor;

    private InputMonitorCompat(InputMonitor inputMonitor) {
        this.mInputMonitor = inputMonitor;
    }

    public void pilferPointers() {
        this.mInputMonitor.pilferPointers();
    }

    public void dispose() {
        this.mInputMonitor.dispose();
    }

    public InputChannelCompat.InputEventReceiver getInputReceiver(Looper looper, Choreographer choreographer, InputChannelCompat.InputEventListener inputEventListener) {
        return new InputChannelCompat.InputEventReceiver(this.mInputMonitor.getInputChannel(), looper, choreographer, inputEventListener);
    }

    public static InputMonitorCompat fromBundle(Bundle bundle, String str) {
        return new InputMonitorCompat(bundle.getParcelable(str));
    }
}
