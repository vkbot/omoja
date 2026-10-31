package j2;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import d2.j;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import n.p;
import org.apache.commons.io.l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class g implements l2.b, u4.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3028b;
    public final /* synthetic */ long c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f3029f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(i iVar, Iterable iterable, j jVar, long j9) {
        this.f3028b = 0;
        this.d = iVar;
        this.e = iterable;
        this.f3029f = jVar;
        this.c = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // u4.g
    public ScheduledFuture a(p pVar) {
        switch (this.f3028b) {
            case 1:
                u4.f fVar = (u4.f) this.d;
                Runnable runnable = (Runnable) this.e;
                return fVar.c.schedule(new u4.d(fVar, runnable, pVar, 1), this.c, (TimeUnit) this.f3029f);
            default:
                u4.f fVar2 = (u4.f) this.d;
                Callable callable = (Callable) this.e;
                return fVar2.c.schedule(new u4.e(fVar2, callable, pVar), this.c, (TimeUnit) this.f3029f);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l2.b
    public Object execute() {
        i iVar = (i) this.d;
        Iterable iterable = (Iterable) this.e;
        j jVar = (j) this.f3029f;
        k2.h hVar = (k2.h) iVar.c;
        hVar.getClass();
        if (iterable.iterator().hasNext()) {
            String strConcat = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in ".concat(k2.h.d0(iterable));
            SQLiteDatabase sQLiteDatabaseB = hVar.b();
            sQLiteDatabaseB.beginTransaction();
            try {
                sQLiteDatabaseB.compileStatement(strConcat).execute();
                Cursor cursorRawQuery = sQLiteDatabaseB.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
                while (cursorRawQuery.moveToNext()) {
                    try {
                        hVar.V(cursorRawQuery.getInt(0), g2.c.MAX_RETRIES_REACHED, cursorRawQuery.getString(1));
                    } catch (Throwable th) {
                        cursorRawQuery.close();
                        throw th;
                    }
                }
                cursorRawQuery.close();
                sQLiteDatabaseB.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                sQLiteDatabaseB.setTransactionSuccessful();
                sQLiteDatabaseB.endTransaction();
            } catch (Throwable th2) {
                sQLiteDatabaseB.endTransaction();
                throw th2;
            }
        }
        hVar.y(new l(iVar.f3034g.d() + this.c, jVar));
        return null;
    }

    public /* synthetic */ g(u4.f fVar, Object obj, long j9, TimeUnit timeUnit, int i9) {
        this.f3028b = i9;
        this.d = fVar;
        this.e = obj;
        this.c = j9;
        this.f3029f = timeUnit;
    }
}
