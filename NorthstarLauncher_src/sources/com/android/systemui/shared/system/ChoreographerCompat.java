package com.android.systemui.shared.system;

import android.view.Choreographer;

/* JADX INFO: loaded from: classes.dex */
public class ChoreographerCompat {
    public static void postInputFrame(Choreographer choreographer, Runnable runnable) {
        choreographer.postCallback(0, runnable, null);
    }

    public static Choreographer getSfInstance() {
        return Choreographer.getSfInstance();
    }
}
