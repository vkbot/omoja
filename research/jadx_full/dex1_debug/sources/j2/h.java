package j2;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import d2.j;
import org.apache.commons.io.l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h implements l2.b, k2.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f3030b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(long j9, Object obj, Object obj2) {
        this.c = obj;
        this.d = obj2;
        this.f3030b = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k2.f
    public Object apply(Object obj) {
        String str = (String) this.c;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        int i9 = ((g2.c) this.d).f2348b;
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i9)});
        try {
            boolean z8 = cursorRawQuery.getCount() > 0;
            cursorRawQuery.close();
            long j9 = this.f3030b;
            if (z8) {
                sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j9 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i9)});
                return null;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(i9));
            contentValues.put("events_dropped_count", Long.valueOf(j9));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
            return null;
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l2.b
    public Object execute() {
        i iVar = (i) this.c;
        j jVar = (j) this.d;
        k2.d dVar = iVar.c;
        long jD = iVar.f3034g.d() + this.f3030b;
        k2.h hVar = (k2.h) dVar;
        hVar.getClass();
        hVar.y(new l(jD, jVar));
        return null;
    }
}
