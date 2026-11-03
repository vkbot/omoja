package com.mega.nexus.hardware.input;

import android.content.Context;
import android.hardware.input.InputManager;
import android.media.session.MediaSessionManager;
import android.os.Handler;
import android.os.SystemClock;
import android.view.InputEvent;
import android.view.KeyEvent;
import com.mega.nexus.media.session.MegaMediaSessionManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaInputManager {
    public static final int INJECT_INPUT_EVENT_MODE_ASYNC = 0;

    @Deprecated
    public static boolean injectInputEvent(InputManager inputManager, InputEvent inputEvent, int i) {
        return inputManager.injectInputEvent(inputEvent, i);
    }

    public static void enableInputDevice(InputManager inputManager, int i) {
        inputManager.enableInputDevice(i);
    }

    public static void disableInputDevice(InputManager inputManager, int i) {
        inputManager.disableInputDevice(i);
    }

    public static void dispatchKeyEvent(final Context context, final int i, Handler handler) {
        final long jUptimeMillis = SystemClock.uptimeMillis();
        if (KeyEvent.isMediaSessionKey(i)) {
            MegaMediaSessionManager.dispatchMediaKeyEventAsSystemService((MediaSessionManager) context.getSystemService(MediaSessionManager.class), makeKeyEvent(i, 0, jUptimeMillis));
            handler.postDelayed(new Runnable() { // from class: com.mega.nexus.hardware.input.MegaInputManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MegaMediaSessionManager.dispatchMediaKeyEventAsSystemService((MediaSessionManager) context.getSystemService(MediaSessionManager.class), MegaInputManager.makeKeyEvent(i, 1, jUptimeMillis));
                }
            }, 50L);
        } else if (i == 24 || i == 25 || i == 164) {
            MegaMediaSessionManager.dispatchVolumeKeyEventAsSystemService((MediaSessionManager) context.getSystemService(MediaSessionManager.class), makeKeyEvent(i, 0, jUptimeMillis), Integer.MIN_VALUE);
            handler.postDelayed(new Runnable() { // from class: com.mega.nexus.hardware.input.MegaInputManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MegaMediaSessionManager.dispatchVolumeKeyEventAsSystemService((MediaSessionManager) context.getSystemService(MediaSessionManager.class), MegaInputManager.makeKeyEvent(i, 1, jUptimeMillis), Integer.MIN_VALUE);
                }
            }, 50L);
        } else {
            injectInputEvent((InputManager) context.getSystemService(InputManager.class), makeKeyEvent(i, 0, jUptimeMillis), 0);
            handler.postDelayed(new Runnable() { // from class: com.mega.nexus.hardware.input.MegaInputManager$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    MegaInputManager.injectInputEvent((InputManager) context.getSystemService(InputManager.class), MegaInputManager.makeKeyEvent(i, 1, jUptimeMillis), 0);
                }
            }, 50L);
        }
    }

    private static KeyEvent makeKeyEvent(int i, int i2, long j) {
        return new KeyEvent(j, SystemClock.uptimeMillis(), i2, i, 0, 0, 0, 0, 0, 1);
    }
}
