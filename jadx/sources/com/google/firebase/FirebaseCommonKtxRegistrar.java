package com.google.firebase;

import androidx.annotation.Keep;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import p063f6.C1580d;
import p155o4.C2592g;
import p193s4.InterfaceC3205a;
import p193s4.InterfaceC3206b;
import p193s4.InterfaceC3207c;
import p193s4.InterfaceC3208d;
import p200t4.C3240a;
import p200t4.C3247h;
import p200t4.C3255p;
import p224v8.AbstractC3422t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(m3158d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m3159d2 = {"Lcom/google/firebase/FirebaseCommonKtxRegistrar;", "Lcom/google/firebase/components/ComponentRegistrar;", "<init>", "()V", "", "Lt4/a;", "getComponents", "()Ljava/util/List;", "com.google.firebase-firebase-common"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/FirebaseKt\n*L\n1#1,82:1\n76#2,6:83\n76#2,6:89\n76#2,6:95\n76#2,6:101\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n*L\n67#1:83,6\n68#1:89,6\n69#1:95,6\n70#1:101,6\n*E\n"})
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C3240a> getComponents() {
        C1580d c1580dM5181b = C3240a.m5181b(new C3255p(InterfaceC3205a.class, AbstractC3422t.class));
        c1580dM5181b.m2664a(new C3247h(new C3255p(InterfaceC3205a.class, Executor.class), 1, 0));
        c1580dM5181b.f3914f = C2592g.f7217c;
        C3240a c3240aM2665b = c1580dM5181b.m2665b();
        C1580d c1580dM5181b2 = C3240a.m5181b(new C3255p(InterfaceC3207c.class, AbstractC3422t.class));
        c1580dM5181b2.m2664a(new C3247h(new C3255p(InterfaceC3207c.class, Executor.class), 1, 0));
        c1580dM5181b2.f3914f = C2592g.f7218d;
        C3240a c3240aM2665b2 = c1580dM5181b2.m2665b();
        C1580d c1580dM5181b3 = C3240a.m5181b(new C3255p(InterfaceC3206b.class, AbstractC3422t.class));
        c1580dM5181b3.m2664a(new C3247h(new C3255p(InterfaceC3206b.class, Executor.class), 1, 0));
        c1580dM5181b3.f3914f = C2592g.f7219e;
        C3240a c3240aM2665b3 = c1580dM5181b3.m2665b();
        C1580d c1580dM5181b4 = C3240a.m5181b(new C3255p(InterfaceC3208d.class, AbstractC3422t.class));
        c1580dM5181b4.m2664a(new C3247h(new C3255p(InterfaceC3208d.class, Executor.class), 1, 0));
        c1580dM5181b4.f3914f = C2592g.f7220f;
        return CollectionsKt.listOf((Object[]) new C3240a[]{c3240aM2665b, c3240aM2665b2, c3240aM2665b3, c1580dM5181b4.m2665b()});
    }
}
