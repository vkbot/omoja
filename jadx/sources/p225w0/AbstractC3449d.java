package p225w0;

import android.app.Notification;
import android.app.NotificationChannel;
import android.media.AudioFocusRequest;
import com.example.navistart.Transport.TransportService;

/* JADX INFO: renamed from: w0.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC3449d {
    /* JADX INFO: renamed from: b */
    public static /* synthetic */ Notification.Builder m5376b(TransportService transportService, String str) {
        return new Notification.Builder(transportService, str);
    }

    /* JADX INFO: renamed from: c */
    public static /* synthetic */ NotificationChannel m5377c(String str, String str2) {
        return new NotificationChannel(str, str2, 2);
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ AudioFocusRequest.Builder m5378d() {
        return new AudioFocusRequest.Builder(2);
    }

    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m5381g() {
    }
}
