package androidx.core.app;

import android.app.Notification;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NotificationManagerCompat$NotifyTask implements NotificationManagerCompat$Task {
    final int id;
    final Notification notif;
    final String packageName;
    final String tag;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NotificationManagerCompat$NotifyTask(String str, int i9, String str2, Notification notification) {
        this.packageName = str;
        this.id = i9;
        this.tag = str2;
        this.notif = notification;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.app.NotificationManagerCompat$Task
    public void send(android.support.v4.app.c cVar) {
        cVar.notify(this.packageName, this.id, this.tag, this.notif);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("NotifyTask[packageName:");
        sb.append(this.packageName);
        sb.append(", id:");
        sb.append(this.id);
        sb.append(", tag:");
        return ai.onnxruntime.a.p(sb, this.tag, "]");
    }
}
