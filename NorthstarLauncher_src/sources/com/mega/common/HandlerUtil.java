package com.mega.common;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes2.dex */
public class HandlerUtil {
    private static final String TAG = "HandlerUtil";
    private static volatile Handler sHandler;
    private static volatile Handler sMainHandler;

    public static Handler getHandler() {
        if (sHandler == null) {
            synchronized (HandlerUtil.class) {
                if (sHandler == null) {
                    HandlerThread handlerThread = new HandlerThread(TAG);
                    handlerThread.start();
                    sHandler = new Handler(handlerThread.getLooper());
                }
            }
        }
        return sHandler;
    }

    public static void post(Runnable runnable) {
        getHandler().post(runnable);
    }

    public static void postShort(int i, Runnable runnable) {
        postDelayed(i, 500L, runnable);
    }

    public static void postDelayed(long j, Runnable runnable) {
        getHandler().postDelayed(runnable, j);
    }

    public static void postDelayed(int i, long j, Runnable runnable) {
        getHandler().removeMessages(i);
        Message messageObtain = Message.obtain(getHandler(), runnable);
        messageObtain.what = i;
        getHandler().sendMessageDelayed(messageObtain, j);
    }

    public static Handler getMainHandler() {
        if (sMainHandler == null) {
            synchronized (HandlerUtil.class) {
                if (sMainHandler == null) {
                    sMainHandler = new Handler(Looper.getMainLooper());
                }
            }
        }
        return sMainHandler;
    }
}
