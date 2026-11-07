package com.android.server.media;

import android.app.PendingIntent;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.media.session.MediaSession;
import android.view.KeyEvent;
import com.android.server.power.backlight.BackLightSettings;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaKeyDispatcher {
    static final int KEY_EVENT_DOUBLE_TAP = 2;
    static final int KEY_EVENT_LONG_PRESS = 8;
    static final int KEY_EVENT_SINGLE_TAP = 1;
    static final int KEY_EVENT_TRIPLE_TAP = 4;
    private Map<Integer, Integer> mOverriddenKeyEvents;

    @Retention(RetentionPolicy.SOURCE)
    @interface KeyEventType {
    }

    public MediaKeyDispatcher() {
        HashMap map = new HashMap();
        this.mOverriddenKeyEvents = map;
        map.put(Integer.valueOf(CecMessageType.SYSTEM_AUDIO_MODE_STATUS), 0);
        this.mOverriddenKeyEvents.put(Integer.valueOf(BackLightSettings.DEFAULT_BRIGHTNESS), 0);
        this.mOverriddenKeyEvents.put(85, 0);
        this.mOverriddenKeyEvents.put(91, 0);
        this.mOverriddenKeyEvents.put(79, 0);
        this.mOverriddenKeyEvents.put(86, 0);
        this.mOverriddenKeyEvents.put(87, 0);
        this.mOverriddenKeyEvents.put(88, 0);
        this.mOverriddenKeyEvents.put(25, 0);
        this.mOverriddenKeyEvents.put(24, 0);
        this.mOverriddenKeyEvents.put(Integer.valueOf(CecMessageType.REQUEST_SHORT_AUDIO_DESCRIPTOR), 0);
    }

    MediaSession.Token getMediaSession(KeyEvent keyEvent, int uid, boolean asSystemService) {
        return null;
    }

    PendingIntent getMediaButtonReceiver(KeyEvent keyEvent, int uid, boolean asSystemService) {
        return null;
    }

    Map<Integer, Integer> getOverriddenKeyEvents() {
        return this.mOverriddenKeyEvents;
    }

    static boolean isSingleTapOverridden(int overriddenKeyEvents) {
        return (overriddenKeyEvents & 1) != 0;
    }

    static boolean isDoubleTapOverridden(int overriddenKeyEvents) {
        return (overriddenKeyEvents & 2) != 0;
    }

    static boolean isTripleTapOverridden(int overriddenKeyEvents) {
        return (overriddenKeyEvents & 4) != 0;
    }

    static boolean isLongPressOverridden(int overriddenKeyEvents) {
        return (overriddenKeyEvents & 8) != 0;
    }

    void setOverriddenKeyEvents(int keyCode, int keyEventType) {
        this.mOverriddenKeyEvents.put(Integer.valueOf(keyCode), Integer.valueOf(keyEventType));
    }

    void onSingleTap(KeyEvent keyEvent) {
    }

    void onDoubleTap(KeyEvent keyEvent) {
    }

    void onTripleTap(KeyEvent keyEvent) {
    }

    void onLongPress(KeyEvent keyEvent) {
    }
}
