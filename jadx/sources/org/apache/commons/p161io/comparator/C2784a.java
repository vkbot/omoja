package org.apache.commons.p161io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.function.Function;
import org.apache.commons.p161io.monitor.FileAlterationObserver;
import org.apache.commons.p161io.monitor.FileEntry;

/* JADX INFO: renamed from: org.apache.commons.io.comparator.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2784a implements Function {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7944b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Serializable f7945c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Serializable f7946d;

    public /* synthetic */ C2784a(Serializable serializable, Serializable serializable2, int i10) {
        this.f7944b = i10;
        this.f7945c = serializable;
        this.f7946d = serializable2;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f7944b) {
            case 0:
                return CompositeFileComparator.lambda$compare$1((File) this.f7945c, (File) this.f7946d, (Comparator) obj);
            default:
                return ((FileAlterationObserver) this.f7945c).lambda$listFileEntries$5((FileEntry) this.f7946d, (File) obj);
        }
    }
}
