package org.apache.commons.p161io;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
import org.apache.commons.p161io.function.IOBooleanSupplier;
import p003a2.EnumC0005b;
import p039d2.C1254j;
import p111k2.InterfaceC2034f;
import p143n2.AbstractC2473a;

/* JADX INFO: renamed from: org.apache.commons.io.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2891l implements IOBooleanSupplier, InterfaceC2034f {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8081b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f8082c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ long f8083d;

    public /* synthetic */ C2891l(long j10, C1254j c1254j) {
        this.f8081b = 2;
        this.f8083d = j10;
        this.f8082c = c1254j;
    }

    @Override // p111k2.InterfaceC2034f
    public Object apply(Object obj) {
        C1254j c1254j = (C1254j) this.f8082c;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(this.f8083d));
        String str = c1254j.f2964a;
        EnumC0005b enumC0005b = c1254j.f2966c;
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str, String.valueOf(AbstractC2473a.m3839a(enumC0005b))}) < 1) {
            contentValues.put("backend_name", str);
            contentValues.put("priority", Integer.valueOf(AbstractC2473a.m3839a(enumC0005b)));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    @Override // org.apache.commons.p161io.function.IOBooleanSupplier
    public boolean getAsBoolean() {
        switch (this.f8081b) {
            case 0:
                return FileUtils.lambda$isFileNewer$4((File) this.f8082c, this.f8083d);
            default:
                return FileUtils.lambda$isFileOlder$7((File) this.f8082c, this.f8083d);
        }
    }

    public /* synthetic */ C2891l(File file, long j10, int i10) {
        this.f8081b = i10;
        this.f8082c = file;
        this.f8083d = j10;
    }
}
