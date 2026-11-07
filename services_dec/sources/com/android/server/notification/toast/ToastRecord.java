package com.android.server.notification.toast;

import android.os.Binder;
import android.os.IBinder;
import com.android.server.notification.NotificationManagerService;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class ToastRecord {
    public final int displayId;
    private int mDuration;
    protected final NotificationManagerService mNotificationManager;
    public final int pid;
    public final String pkg;
    public final IBinder token;
    public final int uid;
    public final Binder windowToken;

    public abstract void hide();

    public abstract boolean show();

    protected ToastRecord(NotificationManagerService notificationManager, int uid, int pid, String pkg, IBinder token, int duration, Binder windowToken, int displayId) {
        this.mNotificationManager = notificationManager;
        this.uid = uid;
        this.pid = pid;
        this.pkg = pkg;
        this.token = token;
        this.windowToken = windowToken;
        this.displayId = displayId;
        this.mDuration = duration;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public void update(int duration) {
        this.mDuration = duration;
    }

    public void dump(PrintWriter pw, String prefix, NotificationManagerService.DumpFilter filter) {
        if (filter != null && !filter.matches(this.pkg)) {
            return;
        }
        pw.println(prefix + this);
    }
}
