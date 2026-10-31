package org.apache.commons.p161io;

import java.io.File;
import java.io.Serializable;
import org.apache.commons.net.finger.FingerClient;
import org.apache.commons.p161io.function.IOSupplier;

/* JADX INFO: renamed from: org.apache.commons.io.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2848i implements IOSupplier {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8034b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ boolean f8035c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f8036d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Serializable f8037e;

    public /* synthetic */ C2848i(Object obj, boolean z9, Serializable serializable, int i10) {
        this.f8034b = i10;
        this.f8036d = obj;
        this.f8035c = z9;
        this.f8037e = serializable;
    }

    @Override // org.apache.commons.p161io.function.IOSupplier
    public final Object get() {
        switch (this.f8034b) {
            case 0:
                return FileUtils.streamFiles((File) this.f8036d, this.f8035c, (String[]) this.f8037e);
            default:
                return ((FingerClient) this.f8036d).lambda$query$0(this.f8035c, (String) this.f8037e);
        }
    }
}
