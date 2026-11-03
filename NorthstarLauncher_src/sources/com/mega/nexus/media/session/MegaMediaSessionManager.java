package com.mega.nexus.media.session;

import android.content.ComponentName;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.os.Handler;
import android.view.KeyEvent;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MegaMediaSessionManager {

    public interface OnMediaKeyListener {
        boolean onMediaKey(KeyEvent keyEvent);
    }

    public static void setOnMediaKeyListener(MediaSessionManager mediaSessionManager, final OnMediaKeyListener onMediaKeyListener, Handler handler) {
        mediaSessionManager.setOnMediaKeyListener(new MediaSessionManager.OnMediaKeyListener() { // from class: com.mega.nexus.media.session.MegaMediaSessionManager.1
            public boolean onMediaKey(KeyEvent keyEvent) {
                return onMediaKeyListener.onMediaKey(keyEvent);
            }
        }, handler);
    }

    public static void dispatchMediaKeyEventAsSystemService(MediaSessionManager mediaSessionManager, KeyEvent keyEvent) {
        mediaSessionManager.dispatchMediaKeyEventAsSystemService(keyEvent);
    }

    public static void dispatchVolumeKeyEventAsSystemService(MediaSessionManager mediaSessionManager, KeyEvent keyEvent, int i) {
        mediaSessionManager.dispatchVolumeKeyEventAsSystemService(keyEvent, i);
    }

    public static List<MediaController> getAllSessions(MediaSessionManager mediaSessionManager, ComponentName componentName) {
        return mediaSessionManager.getAllSessions(componentName);
    }
}
