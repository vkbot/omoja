package j2;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import d2.j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements l2.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3027b;
    public final /* synthetic */ i c;
    public final /* synthetic */ j d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(i iVar, j jVar, int i9) {
        this.f3027b = i9;
        this.c = iVar;
        this.d = jVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l2.b
    public final Object execute() {
        Boolean bool;
        switch (this.f3027b) {
            case 0:
                j jVar = this.d;
                k2.h hVar = (k2.h) this.c.c;
                SQLiteDatabase sQLiteDatabaseB = hVar.b();
                sQLiteDatabaseB.beginTransaction();
                try {
                    Long lC = k2.h.c(sQLiteDatabaseB, jVar);
                    if (lC == null) {
                        bool = Boolean.FALSE;
                    } else {
                        Cursor cursorRawQuery = hVar.b().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lC.toString()});
                        try {
                            Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                            cursorRawQuery.close();
                            bool = boolValueOf;
                        } catch (Throwable th) {
                            cursorRawQuery.close();
                            throw th;
                        }
                    }
                    sQLiteDatabaseB.setTransactionSuccessful();
                    sQLiteDatabaseB.endTransaction();
                    return bool;
                } catch (Throwable th2) {
                    sQLiteDatabaseB.endTransaction();
                    throw th2;
                }
            default:
                k2.h hVar2 = (k2.h) this.c.c;
                hVar2.getClass();
                return (Iterable) hVar2.y(new f5.f(11, hVar2, this.d));
        }
    }
}
