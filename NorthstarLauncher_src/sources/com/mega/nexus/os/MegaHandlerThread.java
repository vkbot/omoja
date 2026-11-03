package com.mega.nexus.os;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes2.dex */
public class MegaHandlerThread {
    public static Handler getThreadHandler(HandlerThread handlerThread) {
        return handlerThread.getThreadHandler();
    }
}
