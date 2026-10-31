package p100j2;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import org.apache.commons.p161io.C2891l;
import p039d2.C1254j;
import p069g2.EnumC1607c;
import p111k2.C2036h;
import p111k2.InterfaceC2032d;
import p111k2.InterfaceC2034f;
import p123l2.InterfaceC2198b;

/* JADX INFO: renamed from: j2.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1952h implements InterfaceC2198b, InterfaceC2034f {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ long f5324b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f5325c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f5326d;

    public /* synthetic */ C1952h(long j10, Object obj, Object obj2) {
        this.f5325c = obj;
        this.f5326d = obj2;
        this.f5324b = j10;
    }

    @Override // p111k2.InterfaceC2034f
    public Object apply(Object obj) {
        String str = (String) this.f5325c;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        int i10 = ((EnumC1607c) this.f5326d).f4045b;
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i10)});
        try {
            boolean z9 = cursorRawQuery.getCount() > 0;
            cursorRawQuery.close();
            long j10 = this.f5324b;
            if (z9) {
                sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j10 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i10)});
                return null;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(i10));
            contentValues.put("events_dropped_count", Long.valueOf(j10));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
            return null;
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    @Override // p123l2.InterfaceC2198b
    public Object execute() {
        C1953i c1953i = (C1953i) this.f5325c;
        C1254j c1254j = (C1254j) this.f5326d;
        InterfaceC2032d interfaceC2032d = c1953i.f5329c;
        long jMo1142d = c1953i.f5333g.mo1142d() + this.f5324b;
        C2036h c2036h = (C2036h) interfaceC2032d;
        c2036h.getClass();
        c2036h.m3137y(new C2891l(jMo1142d, c1254j));
        return null;
    }
}
