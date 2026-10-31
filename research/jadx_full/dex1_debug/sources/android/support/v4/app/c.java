package android.support.v4.app;

import android.app.Notification;
import android.os.IInterface;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface c extends IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f60a = "android$support$v4$app$INotificationSideChannel".replace('$', '.');

    void cancel(String str, int i9, String str2);

    void cancelAll(String str);

    void notify(String str, int i9, String str2, Notification notification);
}
