package androidx.core.app;

import android.app.Notification;
import android.os.Binder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationCompatSideChannelService$NotificationSideChannelStub extends android.support.v4.app.b {
    final /* synthetic */ NotificationCompatSideChannelService this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationCompatSideChannelService$NotificationSideChannelStub(NotificationCompatSideChannelService notificationCompatSideChannelService) {
        this.this$0 = notificationCompatSideChannelService;
        attachInterface(this, android.support.v4.app.c.f60a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.support.v4.app.c
    public void cancel(String str, int i9, String str2) {
        this.this$0.checkPermission(Binder.getCallingUid(), str);
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.this$0.cancel(str, i9, str2);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.support.v4.app.c
    public void cancelAll(String str) {
        this.this$0.checkPermission(Binder.getCallingUid(), str);
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.this$0.cancelAll(str);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.support.v4.app.c
    public void notify(String str, int i9, String str2, Notification notification) {
        this.this$0.checkPermission(Binder.getCallingUid(), str);
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.this$0.notify(str, i9, str2, notification);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }
}
