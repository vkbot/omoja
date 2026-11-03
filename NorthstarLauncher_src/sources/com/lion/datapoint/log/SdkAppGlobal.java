package com.lion.datapoint.log;

import android.app.Application;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class SdkAppGlobal {
    private static final String CLASS_FOR_NAME = "android.app.ActivityThread";
    private static final String CLASS_FOR_NAME_GLOBAL = "android.app.AppGlobals";
    private static final String CURRENT_APPLICATION = "currentApplication";
    private static final String GET_INITIAL_APPLICATION = "getInitialApplication";
    private static final String TAG = "SdkAppGlobal";

    private SdkAppGlobal() {
    }

    public static Application getApplication() {
        Application application;
        Exception e;
        try {
            Method declaredMethod = Class.forName(CLASS_FOR_NAME).getDeclaredMethod(CURRENT_APPLICATION, new Class[0]);
            declaredMethod.setAccessible(true);
            application = (Application) declaredMethod.invoke(null, new Object[0]);
            if (application != null) {
                return application;
            }
            try {
                Method declaredMethod2 = Class.forName(CLASS_FOR_NAME_GLOBAL).getDeclaredMethod(GET_INITIAL_APPLICATION, new Class[0]);
                declaredMethod2.setAccessible(true);
                return (Application) declaredMethod2.invoke(null, new Object[0]);
            } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | SecurityException | InvocationTargetException e2) {
                e = e2;
                Log.e(TAG, "exception: " + e.toString());
                return application;
            }
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | SecurityException | InvocationTargetException e3) {
            application = null;
            e = e3;
        }
    }
}
