package kotlin.p118io;

import java.util.ArrayList;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: kotlin.io.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C2113a implements Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5641b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ArrayList f5642c;

    public /* synthetic */ C2113a(ArrayList arrayList, int i10) {
        this.f5641b = i10;
        this.f5642c = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f5641b) {
            case 0:
                return FilesKt__FileReadWriteKt.readLines$lambda$9$FilesKt__FileReadWriteKt(this.f5642c, (String) obj);
            default:
                return TextStreamsKt.readLines$lambda$1(this.f5642c, (String) obj);
        }
    }
}
