package com.android.server.display;

import android.content.Context;
import android.os.Handler;
import android.os.Trace;
import android.util.FloatProperty;
import android.util.Slog;
import android.view.Choreographer;
import android.view.Display;
import com.android.internal.BrightnessSynchronizer;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
final class DisplayPowerState {
    private static final String TAG = "DisplayPowerState";
    private final DisplayBlanker mBlanker;
    private Runnable mCleanListener;
    private final ColorFade mColorFade;
    private boolean mColorFadeDrawPending;
    private float mColorFadeLevel;
    private boolean mColorFadePrepared;
    private boolean mColorFadeReady;
    private final PhotonicModulator mPhotonicModulator;
    private float mScreenBrightness;
    private boolean mScreenReady;
    private int mScreenState;
    private boolean mScreenUpdatePending;
    private static boolean DEBUG = false;
    private static String COUNTER_COLOR_FADE = "ColorFadeLevel";
    public static final FloatProperty<DisplayPowerState> COLOR_FADE_LEVEL = new FloatProperty<DisplayPowerState>("electronBeamLevel") { // from class: com.android.server.display.DisplayPowerState.1
        @Override // android.util.FloatProperty
        public void setValue(DisplayPowerState object, float value) {
            object.setColorFadeLevel(value);
        }

        @Override // android.util.Property
        public Float get(DisplayPowerState object) {
            return Float.valueOf(object.getColorFadeLevel());
        }
    };
    public static final FloatProperty<DisplayPowerState> SCREEN_BRIGHTNESS_FLOAT = new FloatProperty<DisplayPowerState>("screenBrightnessFloat") { // from class: com.android.server.display.DisplayPowerState.2
        @Override // android.util.FloatProperty
        public void setValue(DisplayPowerState object, float value) {
            object.setScreenBrightness(value);
        }

        @Override // android.util.Property
        public Float get(DisplayPowerState object) {
            return Float.valueOf(object.getScreenBrightness());
        }
    };
    private final Runnable mScreenUpdateRunnable = new Runnable() { // from class: com.android.server.display.DisplayPowerState.3
        @Override // java.lang.Runnable
        public void run() {
            DisplayPowerState.this.mScreenUpdatePending = false;
            float brightnessState = (DisplayPowerState.this.mScreenState == 1 || DisplayPowerState.this.mColorFadeLevel <= 0.0f) ? -1.0f : DisplayPowerState.this.mScreenBrightness;
            if (DisplayPowerState.this.mPhotonicModulator.setState(DisplayPowerState.this.mScreenState, brightnessState)) {
                if (DisplayPowerState.DEBUG) {
                    Slog.d(DisplayPowerState.TAG, "Screen ready");
                }
                DisplayPowerState.this.mScreenReady = true;
                DisplayPowerState.this.invokeCleanListenerIfNeeded();
                return;
            }
            if (DisplayPowerState.DEBUG) {
                Slog.d(DisplayPowerState.TAG, "Screen not ready");
            }
        }
    };
    private final Runnable mColorFadeDrawRunnable = new Runnable() { // from class: com.android.server.display.DisplayPowerState.4
        @Override // java.lang.Runnable
        public void run() {
            DisplayPowerState.this.mColorFadeDrawPending = false;
            if (DisplayPowerState.this.mColorFadePrepared) {
                DisplayPowerState.this.mColorFade.draw(DisplayPowerState.this.mColorFadeLevel);
                Trace.traceCounter(131072L, DisplayPowerState.COUNTER_COLOR_FADE, Math.round(DisplayPowerState.this.mColorFadeLevel * 100.0f));
            }
            DisplayPowerState.this.mColorFadeReady = true;
            DisplayPowerState.this.invokeCleanListenerIfNeeded();
        }
    };
    private final Handler mHandler = new Handler(true);
    private final Choreographer mChoreographer = Choreographer.getInstance();

    public DisplayPowerState(DisplayBlanker blanker, ColorFade colorFade) {
        this.mBlanker = blanker;
        this.mColorFade = colorFade;
        PhotonicModulator photonicModulator = new PhotonicModulator();
        this.mPhotonicModulator = photonicModulator;
        photonicModulator.start();
        this.mScreenState = 2;
        this.mScreenBrightness = 1.0f;
        scheduleScreenUpdate();
        this.mColorFadePrepared = false;
        this.mColorFadeLevel = 1.0f;
        this.mColorFadeReady = true;
    }

    public void setScreenState(int state) {
        if (this.mScreenState != state) {
            if (DEBUG) {
                Slog.d(TAG, "setScreenState: state=" + state);
            }
            this.mScreenState = state;
            this.mScreenReady = false;
            scheduleScreenUpdate();
        }
    }

    public int getScreenState() {
        return this.mScreenState;
    }

    public void setScreenBrightness(float brightness) {
        if (this.mScreenBrightness != brightness) {
            if (DEBUG) {
                Slog.d(TAG, "setScreenBrightness: brightness=" + brightness);
            }
            this.mScreenBrightness = brightness;
            if (this.mScreenState != 1) {
                this.mScreenReady = false;
                scheduleScreenUpdate();
            }
        }
    }

    public float getScreenBrightness() {
        return this.mScreenBrightness;
    }

    public boolean prepareColorFade(Context context, int mode) {
        ColorFade colorFade = this.mColorFade;
        if (colorFade == null || !colorFade.prepare(context, mode)) {
            this.mColorFadePrepared = false;
            this.mColorFadeReady = true;
            return false;
        }
        this.mColorFadePrepared = true;
        this.mColorFadeReady = false;
        scheduleColorFadeDraw();
        return true;
    }

    public void dismissColorFade() {
        Trace.traceCounter(131072L, COUNTER_COLOR_FADE, 100);
        ColorFade colorFade = this.mColorFade;
        if (colorFade != null) {
            colorFade.dismiss();
        }
        this.mColorFadePrepared = false;
        this.mColorFadeReady = true;
    }

    public void dismissColorFadeResources() {
        ColorFade colorFade = this.mColorFade;
        if (colorFade != null) {
            colorFade.dismissResources();
        }
    }

    public void setColorFadeLevel(float level) {
        if (this.mColorFadeLevel != level) {
            if (DEBUG) {
                Slog.d(TAG, "setColorFadeLevel: level=" + level);
            }
            this.mColorFadeLevel = level;
            if (this.mScreenState != 1) {
                this.mScreenReady = false;
                scheduleScreenUpdate();
            }
            if (this.mColorFadePrepared) {
                this.mColorFadeReady = false;
                scheduleColorFadeDraw();
            }
        }
    }

    public float getColorFadeLevel() {
        return this.mColorFadeLevel;
    }

    public boolean waitUntilClean(Runnable listener) {
        if (!this.mScreenReady || !this.mColorFadeReady) {
            this.mCleanListener = listener;
            return false;
        }
        this.mCleanListener = null;
        return true;
    }

    public void dump(PrintWriter pw) {
        pw.println();
        pw.println("Display Power State:");
        pw.println("  mScreenState=" + Display.stateToString(this.mScreenState));
        pw.println("  mScreenBrightness=" + this.mScreenBrightness);
        pw.println("  mScreenReady=" + this.mScreenReady);
        pw.println("  mScreenUpdatePending=" + this.mScreenUpdatePending);
        pw.println("  mColorFadePrepared=" + this.mColorFadePrepared);
        pw.println("  mColorFadeLevel=" + this.mColorFadeLevel);
        pw.println("  mColorFadeReady=" + this.mColorFadeReady);
        pw.println("  mColorFadeDrawPending=" + this.mColorFadeDrawPending);
        this.mPhotonicModulator.dump(pw);
        ColorFade colorFade = this.mColorFade;
        if (colorFade != null) {
            colorFade.dump(pw);
        }
    }

    private void scheduleScreenUpdate() {
        if (!this.mScreenUpdatePending) {
            this.mScreenUpdatePending = true;
            postScreenUpdateThreadSafe();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postScreenUpdateThreadSafe() {
        this.mHandler.removeCallbacks(this.mScreenUpdateRunnable);
        this.mHandler.post(this.mScreenUpdateRunnable);
    }

    private void scheduleColorFadeDraw() {
        if (!this.mColorFadeDrawPending) {
            this.mColorFadeDrawPending = true;
            this.mChoreographer.postCallback(3, this.mColorFadeDrawRunnable, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeCleanListenerIfNeeded() {
        Runnable listener = this.mCleanListener;
        if (listener != null && this.mScreenReady && this.mColorFadeReady) {
            this.mCleanListener = null;
            listener.run();
        }
    }

    private final class PhotonicModulator extends Thread {
        private static final float INITIAL_BACKLIGHT_FLOAT = Float.NaN;
        private static final int INITIAL_SCREEN_STATE = 1;
        private float mActualBacklight;
        private int mActualState;
        private boolean mBacklightChangeInProgress;
        private final Object mLock;
        private float mPendingBacklight;
        private int mPendingState;
        private boolean mStateChangeInProgress;

        public PhotonicModulator() {
            super("PhotonicModulator");
            this.mLock = new Object();
            this.mPendingState = 1;
            this.mPendingBacklight = Float.NaN;
            this.mActualState = 1;
            this.mActualBacklight = Float.NaN;
        }

        public boolean setState(int state, float brightnessState) {
            boolean z;
            synchronized (this.mLock) {
                boolean stateChanged = state != this.mPendingState;
                boolean backlightChanged = !BrightnessSynchronizer.floatEquals(brightnessState, this.mPendingBacklight);
                if (stateChanged || backlightChanged) {
                    if (DisplayPowerState.DEBUG) {
                        Slog.d(DisplayPowerState.TAG, "Requesting new screen state: state=" + Display.stateToString(state) + ", backlight=" + brightnessState);
                    }
                    this.mPendingState = state;
                    this.mPendingBacklight = brightnessState;
                    boolean changeInProgress = this.mStateChangeInProgress || this.mBacklightChangeInProgress;
                    this.mStateChangeInProgress = stateChanged || this.mStateChangeInProgress;
                    this.mBacklightChangeInProgress = backlightChanged || this.mBacklightChangeInProgress;
                    if (!changeInProgress) {
                        this.mLock.notifyAll();
                    }
                }
                boolean changeInProgress2 = this.mStateChangeInProgress;
                z = changeInProgress2 ? false : true;
            }
            return z;
        }

        public void dump(PrintWriter pw) {
            synchronized (this.mLock) {
                pw.println();
                pw.println("Photonic Modulator State:");
                pw.println("  mPendingState=" + Display.stateToString(this.mPendingState));
                pw.println("  mPendingBacklight=" + this.mPendingBacklight);
                pw.println("  mActualState=" + Display.stateToString(this.mActualState));
                pw.println("  mActualBacklight=" + this.mActualBacklight);
                pw.println("  mStateChangeInProgress=" + this.mStateChangeInProgress);
                pw.println("  mBacklightChangeInProgress=" + this.mBacklightChangeInProgress);
            }
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0069 */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r7 = this;
            L0:
                java.lang.Object r0 = r7.mLock
                monitor-enter(r0)
                int r1 = r7.mPendingState     // Catch: java.lang.Throwable -> L69
                int r2 = r7.mActualState     // Catch: java.lang.Throwable -> L69
                r3 = 1
                r4 = 0
                if (r1 == r2) goto Ld
                r2 = r3
                goto Le
            Ld:
                r2 = r4
            Le:
                float r5 = r7.mPendingBacklight     // Catch: java.lang.Throwable -> L69
                float r6 = r7.mActualBacklight     // Catch: java.lang.Throwable -> L69
                boolean r6 = com.android.internal.BrightnessSynchronizer.floatEquals(r5, r6)     // Catch: java.lang.Throwable -> L69
                r3 = r3 ^ r6
                if (r2 != 0) goto L20
                com.android.server.display.DisplayPowerState r6 = com.android.server.display.DisplayPowerState.this     // Catch: java.lang.Throwable -> L69
                com.android.server.display.DisplayPowerState.access$1300(r6)     // Catch: java.lang.Throwable -> L69
                r7.mStateChangeInProgress = r4     // Catch: java.lang.Throwable -> L69
            L20:
                if (r3 != 0) goto L24
                r7.mBacklightChangeInProgress = r4     // Catch: java.lang.Throwable -> L69
            L24:
                if (r2 != 0) goto L32
                if (r3 != 0) goto L32
                java.lang.Object r4 = r7.mLock     // Catch: java.lang.InterruptedException -> L2e java.lang.Throwable -> L69
                r4.wait()     // Catch: java.lang.InterruptedException -> L2e java.lang.Throwable -> L69
                goto L2f
            L2e:
                r4 = move-exception
            L2f:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L69
                goto L0
            L32:
                r7.mActualState = r1     // Catch: java.lang.Throwable -> L69
                r7.mActualBacklight = r5     // Catch: java.lang.Throwable -> L69
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L69
                boolean r0 = com.android.server.display.DisplayPowerState.access$500()
                if (r0 == 0) goto L5f
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r4 = "Updating screen state: state="
                r0.append(r4)
                java.lang.String r4 = android.view.Display.stateToString(r1)
                r0.append(r4)
                java.lang.String r4 = ", backlight="
                r0.append(r4)
                r0.append(r5)
                java.lang.String r0 = r0.toString()
                java.lang.String r4 = "DisplayPowerState"
                android.util.Slog.d(r4, r0)
            L5f:
                com.android.server.display.DisplayPowerState r0 = com.android.server.display.DisplayPowerState.this
                com.android.server.display.DisplayBlanker r0 = com.android.server.display.DisplayPowerState.access$1400(r0)
                r0.requestDisplayState(r1, r5)
                goto L0
            L69:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L69
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.DisplayPowerState.PhotonicModulator.run():void");
        }
    }
}
