package org.apache.commons.io;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
import org.apache.commons.io.function.IOBooleanSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class l implements IOBooleanSupplier, k2.f {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ long d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l(long j, d2.j jVar) {
        this.b = 2;
        this.d = j;
        this.c = jVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object apply(Object obj) {
        d2.j jVar = (d2.j) this.c;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(this.d));
        String str = jVar.a;
        a2.b bVar = jVar.c;
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str, String.valueOf(n2.a.a(bVar))}) < 1) {
            contentValues.put("backend_name", str);
            contentValues.put("priority", Integer.valueOf(n2.a.a(bVar)));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOBooleanSupplier
    public boolean getAsBoolean() {
        switch (this.b) {
            case 0:
                return FileUtils.p((File) this.c, this.d);
            default:
                return FileUtils.b((File) this.c, this.d);
        }
    }

    public /* synthetic */ l(File file, long j, int i) {
        this.b = i;
        this.c = file;
        this.d = j;
    }
}
