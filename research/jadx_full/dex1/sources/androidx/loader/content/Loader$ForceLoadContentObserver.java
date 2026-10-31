package androidx.loader.content;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class Loader$ForceLoadContentObserver extends ContentObserver {
    final /* synthetic */ Loader this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Loader$ForceLoadContentObserver(Loader loader) {
        super(new Handler());
        this.this$0 = loader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.database.ContentObserver
    public void onChange(boolean z8) {
        this.this$0.onContentChanged();
    }
}
