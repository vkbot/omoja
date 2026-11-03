package com.android.launcher3.testing;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public final class TestLogging {
    private static final List<String> LAUNCHER_TOUCH_RECORDS = new ArrayList();
    private static BiConsumer<String, String> sEventConsumer;

    static void setEventConsumer(BiConsumer<String, String> consumer) {
        sEventConsumer = consumer;
    }

    private static void recordEventSlow(String sequence, String event) {
        Log.d(TestProtocol.TAPL_EVENTS_TAG, sequence + " / " + event);
        BiConsumer<String, String> biConsumer = sEventConsumer;
        if (biConsumer != null) {
            biConsumer.accept(sequence, event);
        }
    }

    public static void recordEvent(String sequence, String event) {
        if (Utilities.IS_RUNNING_IN_TEST_HARNESS) {
            recordEventSlow(sequence, event);
        }
    }

    public static void recordEvent(String sequence, String message, Object parameter) {
        if (Utilities.IS_RUNNING_IN_TEST_HARNESS) {
            recordEventSlow(sequence, message + ": " + parameter);
        }
    }

    public static void recordMotionEvent(String sequence, String message, MotionEvent event) {
        if (!Utilities.IS_RUNNING_IN_TEST_HARNESS || event.getAction() == 2) {
            return;
        }
        recordEventSlow(sequence, message + ": " + event);
    }

    public static void beginLauncherTouch(MotionEvent ev) {
        LAUNCHER_TOUCH_RECORDS.clear();
        MLog.d(Launcher.TAG, "dispatchTouchEvent: " + MotionEvent.actionToString(ev.getAction()) + " x=" + ev.getX() + " y=" + ev.getY());
    }

    public static void endLauncherTouch(MotionEvent ev) {
        StringBuilder sbAppend = new StringBuilder("dispatchTouchEvent: ").append(MotionEvent.actionToString(ev.getAction())).append(" x=").append(ev.getX()).append(" y=").append(ev.getY()).append(" ");
        List<String> list = LAUNCHER_TOUCH_RECORDS;
        MLog.d(Launcher.TAG, sbAppend.append(Utilities.joinToString(list, System.lineSeparator() + "\t", System.lineSeparator() + "\t", "")).toString());
        list.clear();
    }

    public static void noteLauncherTouch(View view, String tag, MotionEvent event) {
        noteLauncherTouch(view, tag, event, null);
    }

    public static void noteLauncherTouch(View view, String tag, MotionEvent event, String extra) {
        if (view == null || TextUtils.isEmpty(tag) || event == null || Looper.myLooper() != Looper.getMainLooper() || event.getAction() == 2) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(view.getClass().getSimpleName()).append(" ").append(tag).append(" ").append(MotionEvent.actionToString(event.getAction()));
        if (extra != null) {
            sb.append(" ").append(extra);
        }
        LAUNCHER_TOUCH_RECORDS.add(sb.toString());
    }
}
