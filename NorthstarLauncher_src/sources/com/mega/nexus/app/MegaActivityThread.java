package com.mega.nexus.app;

import android.app.ActivityThread;
import android.app.Application;
import android.app.Service;
import android.os.Handler;
import android.util.ArrayMap;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class MegaActivityThread {
    public static ActivityThread currentActivityThread() {
        return ActivityThread.currentActivityThread();
    }

    public static Application currentApplication() {
        return ActivityThread.currentApplication();
    }

    public static Service getService(Object obj) {
        try {
            Field declaredField = ActivityThread.class.getDeclaredField("mServices");
            declaredField.setAccessible(true);
            return (Service) ((ArrayMap) declaredField.get(currentActivityThread())).get(obj);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void replaceHandlerCallback(Handler.Callback callback) {
        try {
            Method declaredMethod = ActivityThread.class.getDeclaredMethod("getHandler", new Class[0]);
            declaredMethod.setAccessible(true);
            Handler handler = (Handler) declaredMethod.invoke(currentActivityThread(), new Object[0]);
            Field declaredField = Handler.class.getDeclaredField("mCallback");
            declaredField.setAccessible(true);
            declaredField.set(handler, callback);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
    }
}
