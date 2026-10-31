package p203t7;

import com.google.protobuf.AbstractC1128a;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.InterfaceC1200x0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: t7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3266b {

    /* JADX INFO: renamed from: d */
    public static final ThreadLocal f9558d = new ThreadLocal();

    /* JADX INFO: renamed from: a */
    public final InterfaceC1200x0 f9559a;

    /* JADX INFO: renamed from: b */
    public final AbstractC1128a f9560b;

    /* JADX INFO: renamed from: c */
    public final int f9561c;

    public C3266b(AbstractC1128a abstractC1128a) {
        AbstractC2587b.m4042i(abstractC1128a, "defaultInstance cannot be null");
        this.f9560b = abstractC1128a;
        this.f9559a = (InterfaceC1200x0) ((AbstractC1202y) abstractC1128a).mo2174e(7);
        this.f9561c = -1;
    }
}
