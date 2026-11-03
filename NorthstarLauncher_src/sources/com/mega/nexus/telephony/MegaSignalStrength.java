package com.mega.nexus.telephony;

import android.telephony.SignalStrength;

/* JADX INFO: loaded from: classes2.dex */
public class MegaSignalStrength {
    public static final int INVALID = Integer.MAX_VALUE;
    public static final int SIGNAL_STRENGTH_GOOD = 3;
    public static final int SIGNAL_STRENGTH_GREAT = 4;
    public static final int SIGNAL_STRENGTH_MODERATE = 2;
    public static final int SIGNAL_STRENGTH_NONE_OR_UNKNOWN = 0;
    public static final int SIGNAL_STRENGTH_POOR = 1;

    public static int getLteLevel(SignalStrength signalStrength) {
        return signalStrength.getLteLevel();
    }

    public static int getLevel(SignalStrength signalStrength) {
        return signalStrength.getLevel();
    }
}
