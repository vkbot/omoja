package com.android.server;

import android.app.PendingIntent;

/* JADX INFO: loaded from: classes.dex */
public interface AlarmManagerInternal {

    public interface InFlightListener {
        void broadcastAlarmComplete(int i);

        void broadcastAlarmPending(int i);
    }

    boolean isIdling();

    void registerInFlightListener(InFlightListener inFlightListener);

    void remove(PendingIntent pendingIntent);

    void removeAlarmsForUid(int i);
}
