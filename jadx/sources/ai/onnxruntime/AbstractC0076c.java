package ai.onnxruntime;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.job.JobWorkItem;
import android.content.Intent;

/* JADX INFO: renamed from: ai.onnxruntime.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0076c {
    /* JADX INFO: renamed from: g */
    public static /* bridge */ /* synthetic */ NotificationChannel m209g(Object obj) {
        return (NotificationChannel) obj;
    }

    /* JADX INFO: renamed from: h */
    public static /* bridge */ /* synthetic */ NotificationChannelGroup m210h(Object obj) {
        return (NotificationChannelGroup) obj;
    }

    /* JADX INFO: renamed from: j */
    public static /* synthetic */ JobWorkItem m212j(Intent intent) {
        return new JobWorkItem(intent);
    }
}
