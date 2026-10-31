package k2;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements d, l2.c, c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a2.a f3165g = new a2.a("proto");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j f3166b;
    public final m2.a c;
    public final m2.a d;
    public final a e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final t8.a f3167f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(m2.a aVar, m2.a aVar2, a aVar3, j jVar, t8.a aVar4) {
        this.f3166b = jVar;
        this.c = aVar;
        this.d = aVar2;
        this.e = aVar3;
        this.f3167f = aVar4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Long c(SQLiteDatabase sQLiteDatabase, d2.j jVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(jVar.f1683a, String.valueOf(n2.a.a(jVar.c))));
        byte[] bArr = jVar.f1684b;
        if (bArr != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(bArr, 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor cursorQuery = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !cursorQuery.moveToNext() ? null : Long.valueOf(cursorQuery.getLong(0));
        } finally {
            cursorQuery.close();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String d0(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((b) it.next()).f3160a);
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object e0(Cursor cursor, f fVar) {
        try {
            return fVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList S(SQLiteDatabase sQLiteDatabase, d2.j jVar, int i9) {
        ArrayList arrayList = new ArrayList();
        Long lC = c(sQLiteDatabase, jVar);
        if (lC == null) {
            return arrayList;
        }
        e0(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{lC.toString()}, null, null, null, String.valueOf(i9)), new androidx.transition.a(this, arrayList, jVar, 2));
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void V(long j9, g2.c cVar, String str) {
        y(new j2.h(j9, str, cVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final SQLiteDatabase b() {
        j jVar = this.f3166b;
        Objects.requireNonNull(jVar);
        m2.a aVar = this.d;
        long jD = aVar.d();
        while (true) {
            try {
                return jVar.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e) {
                if (aVar.d() >= ((long) this.e.c) + jD) {
                    throw new l2.a("Timed out while trying to open db.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object c0(l2.b bVar) {
        SQLiteDatabase sQLiteDatabaseB = b();
        m2.a aVar = this.d;
        long jD = aVar.d();
        while (true) {
            try {
                sQLiteDatabaseB.beginTransaction();
                try {
                    Object objExecute = bVar.execute();
                    sQLiteDatabaseB.setTransactionSuccessful();
                    return objExecute;
                } finally {
                    sQLiteDatabaseB.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e) {
                if (aVar.d() >= ((long) this.e.c) + jD) {
                    throw new l2.a("Timed out while trying to acquire the lock.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f3166b.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object y(f fVar) {
        SQLiteDatabase sQLiteDatabaseB = b();
        sQLiteDatabaseB.beginTransaction();
        try {
            Object objApply = fVar.apply(sQLiteDatabaseB);
            sQLiteDatabaseB.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseB.endTransaction();
        }
    }
}
