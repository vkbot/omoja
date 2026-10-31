package p100j2;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.apache.commons.p161io.C2891l;
import p039d2.C1254j;
import p069g2.EnumC1607c;
import p111k2.C2036h;
import p123l2.InterfaceC2198b;
import p141n.C2455p;
import p190s1.RunnableC3180x0;
import p211u4.InterfaceC3294g;
import p211u4.RunnableC3291d;
import p211u4.ScheduledExecutorServiceC3293f;

/* JADX INFO: renamed from: j2.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1951g implements InterfaceC2198b, InterfaceC3294g {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5319b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ long f5320c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f5321d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f5322e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Object f5323f;

    public /* synthetic */ C1951g(C1953i c1953i, Iterable iterable, C1254j c1254j, long j10) {
        this.f5319b = 0;
        this.f5321d = c1953i;
        this.f5322e = iterable;
        this.f5323f = c1254j;
        this.f5320c = j10;
    }

    @Override // p211u4.InterfaceC3294g
    /* JADX INFO: renamed from: a */
    public ScheduledFuture mo3050a(final C2455p c2455p) {
        switch (this.f5319b) {
            case 1:
                ScheduledExecutorServiceC3293f scheduledExecutorServiceC3293f = (ScheduledExecutorServiceC3293f) this.f5321d;
                Runnable runnable = (Runnable) this.f5322e;
                return scheduledExecutorServiceC3293f.f9642c.schedule(new RunnableC3291d(scheduledExecutorServiceC3293f, runnable, c2455p, 1), this.f5320c, (TimeUnit) this.f5323f);
            default:
                final ScheduledExecutorServiceC3293f scheduledExecutorServiceC3293f2 = (ScheduledExecutorServiceC3293f) this.f5321d;
                final Callable callable = (Callable) this.f5322e;
                return scheduledExecutorServiceC3293f2.f9642c.schedule(new Callable() { // from class: u4.e
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return scheduledExecutorServiceC3293f2.f9641b.submit(new RunnableC3180x0(8, callable, c2455p));
                    }
                }, this.f5320c, (TimeUnit) this.f5323f);
        }
    }

    @Override // p123l2.InterfaceC2198b
    public Object execute() {
        C1953i c1953i = (C1953i) this.f5321d;
        Iterable iterable = (Iterable) this.f5322e;
        C1254j c1254j = (C1254j) this.f5323f;
        C2036h c2036h = (C2036h) c1953i.f5329c;
        c2036h.getClass();
        if (iterable.iterator().hasNext()) {
            String strConcat = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in ".concat(C2036h.m3131d0(iterable));
            SQLiteDatabase sQLiteDatabaseM3135b = c2036h.m3135b();
            sQLiteDatabaseM3135b.beginTransaction();
            try {
                sQLiteDatabaseM3135b.compileStatement(strConcat).execute();
                Cursor cursorRawQuery = sQLiteDatabaseM3135b.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
                while (cursorRawQuery.moveToNext()) {
                    try {
                        c2036h.m3134V(cursorRawQuery.getInt(0), EnumC1607c.MAX_RETRIES_REACHED, cursorRawQuery.getString(1));
                    } catch (Throwable th) {
                        cursorRawQuery.close();
                        throw th;
                    }
                }
                cursorRawQuery.close();
                sQLiteDatabaseM3135b.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                sQLiteDatabaseM3135b.setTransactionSuccessful();
                sQLiteDatabaseM3135b.endTransaction();
            } catch (Throwable th2) {
                sQLiteDatabaseM3135b.endTransaction();
                throw th2;
            }
        }
        c2036h.m3137y(new C2891l(c1953i.f5333g.mo1142d() + this.f5320c, c1254j));
        return null;
    }

    public /* synthetic */ C1951g(ScheduledExecutorServiceC3293f scheduledExecutorServiceC3293f, Object obj, long j10, TimeUnit timeUnit, int i10) {
        this.f5319b = i10;
        this.f5321d = scheduledExecutorServiceC3293f;
        this.f5322e = obj;
        this.f5320c = j10;
        this.f5323f = timeUnit;
    }
}
