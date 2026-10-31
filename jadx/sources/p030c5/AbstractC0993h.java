package p030c5;

import android.app.Notification;
import android.app.NotificationChannel;
import android.content.Context;
import android.view.autofill.AutofillId;

/* JADX INFO: renamed from: c5.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0993h {
    /* JADX INFO: renamed from: c */
    public static /* synthetic */ Notification.Builder m1160c(Context context, String str) {
        return new Notification.Builder(context, str);
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ NotificationChannel m1161d(String str, String str2) {
        return new NotificationChannel(str, str2, 3);
    }

    /* JADX INFO: renamed from: g */
    public static /* bridge */ /* synthetic */ AutofillId m1164g(Object obj) {
        return (AutofillId) obj;
    }
}
