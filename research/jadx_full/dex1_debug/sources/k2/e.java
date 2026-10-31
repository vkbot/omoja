package k2;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f3162b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(long j9) {
        this.f3162b = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k2.f
    public final Object apply(Object obj) {
        long j9 = this.f3162b;
        Cursor cursorRawQuery = ((SQLiteDatabase) obj).rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
        try {
            cursorRawQuery.moveToNext();
            return new g2.g(cursorRawQuery.getLong(0), j9);
        } finally {
            cursorRawQuery.close();
        }
    }
}
