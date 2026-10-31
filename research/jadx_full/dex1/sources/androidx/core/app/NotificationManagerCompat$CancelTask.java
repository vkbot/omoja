package androidx.core.app;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationManagerCompat$CancelTask implements NotificationManagerCompat$Task {
    final boolean all;
    final int id;
    final String packageName;
    final String tag;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationManagerCompat$CancelTask(String str) {
        this.packageName = str;
        this.id = 0;
        this.tag = null;
        this.all = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationManagerCompat$Task
    public void send(android.support.v4.app.c cVar) {
        boolean z8 = this.all;
        String str = this.packageName;
        if (z8) {
            cVar.cancelAll(str);
        } else {
            cVar.cancel(str, this.id, this.tag);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String toString() {
        return "CancelTask[packageName:" + this.packageName + ", id:" + this.id + ", tag:" + this.tag + ", all:" + this.all + "]";
    }

    public NotificationManagerCompat$CancelTask(String str, int i9, String str2) {
        this.packageName = str;
        this.id = i9;
        this.tag = str2;
        this.all = false;
    }
}
