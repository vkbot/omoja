package com.google.firebase;

import androidx.annotation.Keep;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import com.google.firebase.components.ComponentRegistrar;
import f6.d;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import o4.g;
import s4.b;
import s4.c;
import t4.a;
import t4.h;
import t4.p;
import v8.t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Keep
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/firebase/FirebaseCommonKtxRegistrar;", "Lcom/google/firebase/components/ComponentRegistrar;", "<init>", "()V", "", "Lt4/a;", "getComponents", "()Ljava/util/List;", "com.google.firebase-firebase-common"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/FirebaseKt\n*L\n1#1,82:1\n76#2,6:83\n76#2,6:89\n76#2,6:95\n76#2,6:101\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n*L\n67#1:83,6\n68#1:89,6\n69#1:95,6\n70#1:101,6\n*E\n"})
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<a> getComponents() {
        d dVarB = a.b(new p(s4.a.class, t.class));
        dVarB.a(new h(new p(s4.a.class, Executor.class), 1, 0));
        dVarB.f2263f = g.c;
        a aVarB = dVarB.b();
        d dVarB2 = a.b(new p(c.class, t.class));
        dVarB2.a(new h(new p(c.class, Executor.class), 1, 0));
        dVarB2.f2263f = g.d;
        a aVarB2 = dVarB2.b();
        d dVarB3 = a.b(new p(b.class, t.class));
        dVarB3.a(new h(new p(b.class, Executor.class), 1, 0));
        dVarB3.f2263f = g.e;
        a aVarB3 = dVarB3.b();
        d dVarB4 = a.b(new p(s4.d.class, t.class));
        dVarB4.a(new h(new p(s4.d.class, Executor.class), 1, 0));
        dVarB4.f2263f = g.f4094f;
        return CollectionsKt.listOf((Object[]) new a[]{aVarB, aVarB2, aVarB3, dVarB4.b()});
    }
}
