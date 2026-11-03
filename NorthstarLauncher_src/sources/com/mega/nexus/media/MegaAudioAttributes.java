package com.mega.nexus.media;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: classes2.dex */
public class MegaAudioAttributes {
    public static final int CONTENT_TYPE_MARS = 4;
    public static final int USAGE_ASSISTANT = 16;
    public static final int USAGE_BCALL = 2006;
    public static final int USAGE_EMERGENCY = 1000;
    public static final int USAGE_MARS = 12;
    public static final int USAGE_SAFETY = 1001;
    public static final int USAGE_VEHICLE_STATUS = 1002;
    public static final int USAGE_VENDOR_ALARM = 2003;
    public static final int USAGE_VENDOR_BACKCAR = 2007;
    public static final int USAGE_VENDOR_CALL = 2000;
    public static final int USAGE_VENDOR_CALL_RING = 2001;
    public static final int USAGE_VENDOR_IVI = 2003;
    public static final int USAGE_VENDOR_MEETING = 2006;
    public static final int USAGE_VENDOR_NOTIFICATION = 2005;
    public static final int USAGE_VENDOR_TTS = 2002;
    public static final int USAGE_VENDOR_VPA = 2007;
    public static final int USAGE_VENDOR_VR = 2004;
    public static final int USAGE_VENDOR_WAVES = 2008;

    public static int getSystemUsage(AudioAttributes audioAttributes) {
        return audioAttributes.getSystemUsage();
    }
}
