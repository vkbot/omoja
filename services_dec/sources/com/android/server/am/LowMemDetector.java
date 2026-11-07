package com.android.server.am;

/* JADX INFO: loaded from: classes.dex */
public final class LowMemDetector {
    public static final int MEM_PRESSURE_HIGH = 3;
    public static final int MEM_PRESSURE_LOW = 1;
    public static final int MEM_PRESSURE_MEDIUM = 2;
    public static final int MEM_PRESSURE_NONE = 0;
    private static final String TAG = "LowMemDetector";
    private final ActivityManagerService mAm;
    private boolean mAvailable;
    private final Object mPressureStateLock = new Object();
    private int mPressureState = 0;
    private final LowMemThread mLowMemThread = new LowMemThread();

    private native int init();

    /* JADX INFO: Access modifiers changed from: private */
    public native int waitForPressure();

    LowMemDetector(ActivityManagerService am) {
        this.mAm = am;
        if (init() != 0) {
            this.mAvailable = false;
        } else {
            this.mAvailable = true;
            this.mLowMemThread.start();
        }
    }

    public boolean isAvailable() {
        return this.mAvailable;
    }

    public int getMemFactor() {
        int i;
        synchronized (this.mPressureStateLock) {
            i = this.mPressureState;
        }
        return i;
    }

    private final class LowMemThread extends Thread {
        private LowMemThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                int newPressureState = LowMemDetector.this.waitForPressure();
                if (newPressureState == -1) {
                    LowMemDetector.this.mAvailable = false;
                    return;
                } else {
                    synchronized (LowMemDetector.this.mPressureStateLock) {
                        LowMemDetector.this.mPressureState = newPressureState;
                    }
                }
            }
        }
    }
}
