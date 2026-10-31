package p111k2;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.transition.C0802a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p003a2.C0004a;
import p039d2.C1254j;
import p069g2.EnumC1607c;
import p100j2.C1952h;
import p123l2.C2197a;
import p123l2.InterfaceC2198b;
import p123l2.InterfaceC2199c;
import p133m2.InterfaceC2380a;
import p143n2.AbstractC2473a;
import p204t8.InterfaceC3268a;

/* JADX INFO: renamed from: k2.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2036h implements InterfaceC2032d, InterfaceC2199c, InterfaceC2031c {

    /* JADX INFO: renamed from: g */
    public static final C0004a f5552g = new C0004a("proto");

    /* JADX INFO: renamed from: b */
    public final C2038j f5553b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC2380a f5554c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC2380a f5555d;

    /* JADX INFO: renamed from: e */
    public final C2029a f5556e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC3268a f5557f;

    public C2036h(InterfaceC2380a interfaceC2380a, InterfaceC2380a interfaceC2380a2, C2029a c2029a, C2038j c2038j, InterfaceC3268a interfaceC3268a) {
        this.f5553b = c2038j;
        this.f5554c = interfaceC2380a;
        this.f5555d = interfaceC2380a2;
        this.f5556e = c2029a;
        this.f5557f = interfaceC3268a;
    }

    /* JADX INFO: renamed from: c */
    public static Long m3130c(SQLiteDatabase sQLiteDatabase, C1254j c1254j) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(c1254j.f2964a, String.valueOf(AbstractC2473a.m3839a(c1254j.f2966c))));
        byte[] bArr = c1254j.f2965b;
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

    /* JADX INFO: renamed from: d0 */
    public static String m3131d0(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((C2030b) it.next()).f5546a);
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* JADX INFO: renamed from: e0 */
    public static Object m3132e0(Cursor cursor, InterfaceC2034f interfaceC2034f) {
        try {
            return interfaceC2034f.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    /* JADX INFO: renamed from: S */
    public final ArrayList m3133S(SQLiteDatabase sQLiteDatabase, C1254j c1254j, int i10) {
        ArrayList arrayList = new ArrayList();
        Long lM3130c = m3130c(sQLiteDatabase, c1254j);
        if (lM3130c == null) {
            return arrayList;
        }
        m3132e0(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{lM3130c.toString()}, null, null, null, String.valueOf(i10)), new C0802a(this, arrayList, c1254j, 2));
        return arrayList;
    }

    /* JADX INFO: renamed from: V */
    public final void m3134V(long j10, EnumC1607c enumC1607c, String str) {
        m3137y(new C1952h(j10, str, enumC1607c));
    }

    /* JADX INFO: renamed from: b */
    public final SQLiteDatabase m3135b() {
        C2038j c2038j = this.f5553b;
        Objects.requireNonNull(c2038j);
        InterfaceC2380a interfaceC2380a = this.f5555d;
        long jMo1142d = interfaceC2380a.mo1142d();
        while (true) {
            try {
                return c2038j.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e) {
                if (interfaceC2380a.mo1142d() >= ((long) this.f5556e.f5543c) + jMo1142d) {
                    throw new C2197a("Timed out while trying to open db.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    /* JADX INFO: renamed from: c0 */
    public final Object m3136c0(InterfaceC2198b interfaceC2198b) {
        SQLiteDatabase sQLiteDatabaseM3135b = m3135b();
        InterfaceC2380a interfaceC2380a = this.f5555d;
        long jMo1142d = interfaceC2380a.mo1142d();
        while (true) {
            try {
                sQLiteDatabaseM3135b.beginTransaction();
                try {
                    Object objExecute = interfaceC2198b.execute();
                    sQLiteDatabaseM3135b.setTransactionSuccessful();
                    return objExecute;
                } finally {
                    sQLiteDatabaseM3135b.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e) {
                if (interfaceC2380a.mo1142d() >= ((long) this.f5556e.f5543c) + jMo1142d) {
                    throw new C2197a("Timed out while trying to acquire the lock.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5553b.close();
    }

    /* JADX INFO: renamed from: y */
    public final Object m3137y(InterfaceC2034f interfaceC2034f) {
        SQLiteDatabase sQLiteDatabaseM3135b = m3135b();
        sQLiteDatabaseM3135b.beginTransaction();
        try {
            Object objApply = interfaceC2034f.apply(sQLiteDatabaseM3135b);
            sQLiteDatabaseM3135b.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseM3135b.endTransaction();
        }
    }
}
