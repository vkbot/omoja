package com.mega.nexus.media;

import android.media.AudioManager;

/* JADX INFO: loaded from: classes2.dex */
public class MegaAudioManager {
    public static final String EXTRA_MASTER_VOLUME_MUTED = "android.media.EXTRA_MASTER_VOLUME_MUTED";
    public static final String EXTRA_STREAM_VOLUME_MUTED = "android.media.EXTRA_STREAM_VOLUME_MUTED";
    public static final String EXTRA_VOLUME_STREAM_TYPE = "android.media.EXTRA_VOLUME_STREAM_TYPE";
    public static final String EXTRA_VOLUME_STREAM_VALUE = "android.media.EXTRA_VOLUME_STREAM_VALUE";
    public static final int FLAG_SHOW_UI_WARNINGS = 1024;
    public static final String INTERNAL_RINGER_MODE_CHANGED_ACTION = "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION";
    public static final String MASTER_MUTE_CHANGED_ACTION = "android.media.MASTER_MUTE_CHANGED_ACTION";
    public static final int RINGER_MODE_SILENT = 0;
    public static final int STREAM_ASSISTANT = 11;
    public static final int STREAM_BLUETOOTH = 12;
    public static final int STREAM_BLUETOOTH_MUSIC = 13;
    public static final int STREAM_BLUETOOTH_SCO = 6;
    public static final String STREAM_DEVICES_CHANGED_ACTION = "android.media.STREAM_DEVICES_CHANGED_ACTION";
    public static final int STREAM_MARS = 9;
    public static final String STREAM_MUTE_CHANGED_ACTION = "android.media.STREAM_MUTE_CHANGED_ACTION";
    public static final int STREAM_TTS = 9;
    public static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";

    public static void setRingerModeInternal(AudioManager audioManager, int i) {
        audioManager.setRingerModeInternal(i);
    }

    public static int getRingerModeInternal(AudioManager audioManager) {
        return audioManager.getRingerModeInternal();
    }

    public static boolean isStreamAffectedByRingerMode(AudioManager audioManager, int i) {
        return audioManager.isStreamAffectedByRingerMode(i);
    }

    public static int getLastAudibleStreamVolume(AudioManager audioManager, int i) {
        return audioManager.getLastAudibleStreamVolume(i);
    }

    public static boolean isMasterMute(AudioManager audioManager) {
        return audioManager.isMasterMute();
    }

    public static void setMasterMute(AudioManager audioManager, boolean z, int i) {
        audioManager.setMasterMute(z, i);
    }
}
