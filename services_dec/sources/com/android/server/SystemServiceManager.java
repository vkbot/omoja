package com.android.server;

import android.content.Context;
import android.content.pm.UserInfo;
import android.os.Environment;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserManagerInternal;
import android.util.ArrayMap;
import android.util.Slog;
import com.android.server.utils.TimingsTraceAndSlog;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SystemServiceManager {
    private static final String CLEANUP = "Cleanup";
    private static final boolean DEBUG = false;
    private static final int SERVICE_CALL_WARN_TIME_MS = 50;
    private static final String START = "Start";
    private static final String STOP = "Stop";
    private static final String SWITCH = "Switch";
    private static final String TAG = "SystemServiceManager";
    private static final String UNLOCKED = "Unlocked";
    private static final String UNLOCKING = "Unlocking";
    private static File sSystemDir;
    private final Context mContext;
    private boolean mRuntimeRestarted;
    private long mRuntimeStartElapsedTime;
    private long mRuntimeStartUptime;
    private boolean mSafeMode;
    private UserManagerInternal mUserManagerInternal;
    private final ArrayList<SystemService> mServices = new ArrayList<>();
    private final ArrayMap<String, PathClassLoader> mLoadedPaths = new ArrayMap<>();
    private int mCurrentPhase = -1;

    SystemServiceManager(Context context) {
        this.mContext = context;
    }

    public SystemService startService(String className) {
        Class<SystemService> serviceClass = loadClassFromLoader(className, getClass().getClassLoader());
        return startService(serviceClass);
    }

    public SystemService startServiceFromJar(String className, String path) {
        PathClassLoader pathClassLoader = this.mLoadedPaths.get(path);
        if (pathClassLoader == null) {
            pathClassLoader = new PathClassLoader(path, getClass().getClassLoader());
            this.mLoadedPaths.put(path, pathClassLoader);
        }
        Class<SystemService> serviceClass = loadClassFromLoader(className, pathClassLoader);
        return startService(serviceClass);
    }

    private static Class<SystemService> loadClassFromLoader(String className, ClassLoader classLoader) {
        try {
            return Class.forName(className, true, classLoader);
        } catch (ClassNotFoundException ex) {
            throw new RuntimeException("Failed to create service " + className + " from class loader " + classLoader.toString() + ": service class not found, usually indicates that the caller should have called PackageManager.hasSystemFeature() to check whether the feature is available on this device before trying to start the services that implement it. Also ensure that the correct path for the classloader is supplied, if applicable.", ex);
        }
    }

    public <T extends SystemService> T startService(Class<T> serviceClass) {
        try {
            String name = serviceClass.getName();
            Slog.i(TAG, "Starting " + name);
            Trace.traceBegin(524288L, "StartService " + name);
            if (!SystemService.class.isAssignableFrom(serviceClass)) {
                throw new RuntimeException("Failed to create " + name + ": service must extend " + SystemService.class.getName());
            }
            try {
                try {
                    Constructor<T> constructor = serviceClass.getConstructor(Context.class);
                    T service = constructor.newInstance(this.mContext);
                    startService(service);
                    Trace.traceEnd(524288L);
                    return service;
                } catch (IllegalAccessException ex) {
                    throw new RuntimeException("Failed to create service " + name + ": service must have a public constructor with a Context argument", ex);
                } catch (InstantiationException ex2) {
                    throw new RuntimeException("Failed to create service " + name + ": service could not be instantiated", ex2);
                }
            } catch (NoSuchMethodException ex3) {
                throw new RuntimeException("Failed to create service " + name + ": service must have a public constructor with a Context argument", ex3);
            } catch (InvocationTargetException ex4) {
                throw new RuntimeException("Failed to create service " + name + ": service constructor threw an exception", ex4);
            }
        } catch (Throwable th) {
            Trace.traceEnd(524288L);
            throw th;
        }
    }

    public void startService(SystemService service) {
        this.mServices.add(service);
        long time = SystemClock.elapsedRealtime();
        try {
            service.onStart();
            warnIfTooLong(SystemClock.elapsedRealtime() - time, service, "onStart");
        } catch (RuntimeException ex) {
            throw new RuntimeException("Failed to start service " + service.getClass().getName() + ": onStart threw an exception", ex);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00c2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startBootPhase(com.android.server.utils.TimingsTraceAndSlog r10, int r11) {
        /*
            Method dump skipped, instruction units count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.SystemServiceManager.startBootPhase(com.android.server.utils.TimingsTraceAndSlog, int):void");
    }

    public boolean isBootCompleted() {
        return this.mCurrentPhase >= 1000;
    }

    public void preSystemReady() {
        this.mUserManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
    }

    private UserInfo getUserInfo(int userHandle) {
        UserManagerInternal userManagerInternal = this.mUserManagerInternal;
        if (userManagerInternal == null) {
            throw new IllegalStateException("mUserManagerInternal not set yet");
        }
        UserInfo userInfo = userManagerInternal.getUserInfo(userHandle);
        if (userInfo == null) {
            throw new IllegalStateException("No UserInfo for " + userHandle);
        }
        return userInfo;
    }

    public void startUser(TimingsTraceAndSlog t, int userHandle) {
        onUser(t, START, userHandle);
    }

    public void unlockUser(int userHandle) {
        onUser(UNLOCKING, userHandle);
    }

    public void onUserUnlocked(int userHandle) {
        onUser(UNLOCKED, userHandle);
    }

    public void switchUser(int from, int to) {
        onUser(TimingsTraceAndSlog.newAsyncLog(), SWITCH, to, from);
    }

    public void stopUser(int userHandle) {
        onUser(STOP, userHandle);
    }

    public void cleanupUser(int userHandle) {
        onUser(CLEANUP, userHandle);
    }

    private void onUser(String onWhat, int userHandle) {
        onUser(TimingsTraceAndSlog.newAsyncLog(), onWhat, userHandle);
    }

    private void onUser(TimingsTraceAndSlog t, String onWhat, int userHandle) {
        onUser(t, onWhat, userHandle, -10000);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:18:0x00e0  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void onUser(TimingsTraceAndSlog t, String onWhat, int curUserId, int prevUserId) {
        boolean supported;
        String str;
        byte b;
        TimingsTraceAndSlog timingsTraceAndSlog = t;
        timingsTraceAndSlog.traceBegin("ssm." + onWhat + "User-" + curUserId);
        String str2 = TAG;
        Slog.i(TAG, "Calling on" + onWhat + "User " + curUserId);
        SystemService.TargetUser curUser = new SystemService.TargetUser(getUserInfo(curUserId));
        SystemService.TargetUser prevUser = prevUserId == -10000 ? null : new SystemService.TargetUser(getUserInfo(prevUserId));
        int serviceLen = this.mServices.size();
        int i = 0;
        while (i < serviceLen) {
            SystemService service = this.mServices.get(i);
            String serviceName = service.getClass().getName();
            boolean supported2 = service.isUserSupported(curUser);
            if (!supported2 && prevUser != null) {
                supported = service.isUserSupported(prevUser);
            } else {
                supported = supported2;
            }
            if (!supported) {
                Slog.i(str2, "Skipping " + onWhat + "User-" + curUserId + " on " + serviceName);
                str = str2;
            } else {
                timingsTraceAndSlog.traceBegin("ssm.on" + onWhat + "User-" + curUserId + "_" + serviceName);
                long time = SystemClock.elapsedRealtime();
                try {
                    switch (onWhat.hashCode()) {
                        case -1805606060:
                            b = !onWhat.equals(SWITCH) ? (byte) -1 : (byte) 0;
                            break;
                        case -1773539708:
                            if (onWhat.equals(CLEANUP)) {
                                b = 5;
                            }
                            break;
                        case -240492034:
                            if (onWhat.equals(UNLOCKING)) {
                                b = 2;
                            }
                            break;
                        case -146305277:
                            if (onWhat.equals(UNLOCKED)) {
                                b = 3;
                            }
                            break;
                        case 2587682:
                            if (onWhat.equals(STOP)) {
                                b = 4;
                            }
                            break;
                        case 80204866:
                            if (onWhat.equals(START)) {
                                b = 1;
                            }
                            break;
                        default:
                            break;
                    }
                    if (b == 0) {
                        service.onUserSwitching(prevUser, curUser);
                    } else if (b == 1) {
                        service.onUserStarting(curUser);
                    } else if (b == 2) {
                        service.onUserUnlocking(curUser);
                    } else if (b == 3) {
                        service.onUserUnlocked(curUser);
                    } else if (b == 4) {
                        service.onUserStopping(curUser);
                    } else if (b == 5) {
                        service.onUserStopped(curUser);
                    } else {
                        throw new IllegalArgumentException(onWhat + " what?");
                    }
                } catch (Exception ex) {
                    Slog.wtf(str2, "Failure reporting " + onWhat + " of user " + curUser + " to service " + serviceName, ex);
                }
                String str3 = str2;
                long jElapsedRealtime = SystemClock.elapsedRealtime() - time;
                StringBuilder sb = new StringBuilder();
                str = str3;
                sb.append("on");
                sb.append(onWhat);
                sb.append("User-");
                sb.append(curUserId);
                warnIfTooLong(jElapsedRealtime, service, sb.toString());
                t.traceEnd();
            }
            i++;
            timingsTraceAndSlog = t;
            curUser = curUser;
            str2 = str;
        }
        t.traceEnd();
    }

    void setSafeMode(boolean safeMode) {
        this.mSafeMode = safeMode;
    }

    public boolean isSafeMode() {
        return this.mSafeMode;
    }

    public boolean isRuntimeRestarted() {
        return this.mRuntimeRestarted;
    }

    public long getRuntimeStartElapsedTime() {
        return this.mRuntimeStartElapsedTime;
    }

    public long getRuntimeStartUptime() {
        return this.mRuntimeStartUptime;
    }

    void setStartInfo(boolean runtimeRestarted, long runtimeStartElapsedTime, long runtimeStartUptime) {
        this.mRuntimeRestarted = runtimeRestarted;
        this.mRuntimeStartElapsedTime = runtimeStartElapsedTime;
        this.mRuntimeStartUptime = runtimeStartUptime;
    }

    private void warnIfTooLong(long duration, SystemService service, String operation) {
        if (duration > 50) {
            Slog.w(TAG, "Service " + service.getClass().getName() + " took " + duration + " ms in " + operation);
        }
    }

    @Deprecated
    public static File ensureSystemDir() {
        if (sSystemDir == null) {
            File dataDir = Environment.getDataDirectory();
            File file = new File(dataDir, "system");
            sSystemDir = file;
            file.mkdirs();
        }
        File dataDir2 = sSystemDir;
        return dataDir2;
    }

    public void dump() {
        StringBuilder builder = new StringBuilder();
        builder.append("Current phase: ");
        builder.append(this.mCurrentPhase);
        builder.append("\n");
        builder.append("Services:\n");
        int startedLen = this.mServices.size();
        for (int i = 0; i < startedLen; i++) {
            SystemService service = this.mServices.get(i);
            builder.append("\t");
            builder.append(service.getClass().getSimpleName());
            builder.append("\n");
        }
        Slog.e(TAG, builder.toString());
    }
}
