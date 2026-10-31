package p096i9;

import java.util.List;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;

/* JADX INFO: renamed from: i9.m0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1841m0 implements KType {

    /* JADX INFO: renamed from: b */
    public final KType f4793b;

    public C1841m0(KType kType) {
        kType.getClass();
        this.f4793b = kType;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C1841m0 c1841m0 = obj instanceof C1841m0 ? (C1841m0) obj : null;
        KType kType = c1841m0 != null ? c1841m0.f4793b : null;
        KType kType2 = this.f4793b;
        if (!Intrinsics.areEqual(kType2, kType)) {
            return false;
        }
        KClassifier classifier = kType2.getClassifier();
        if (classifier instanceof KClass) {
            KType kType3 = obj instanceof KType ? (KType) obj : null;
            KClassifier classifier2 = kType3 != null ? kType3.getClassifier() : null;
            if (classifier2 != null && (classifier2 instanceof KClass)) {
                return Intrinsics.areEqual(JvmClassMappingKt.getJavaClass((KClass) classifier), JvmClassMappingKt.getJavaClass((KClass) classifier2));
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public final List getAnnotations() {
        return this.f4793b.getAnnotations();
    }

    @Override // kotlin.reflect.KType
    public final List getArguments() {
        return this.f4793b.getArguments();
    }

    @Override // kotlin.reflect.KType
    public final KClassifier getClassifier() {
        return this.f4793b.getClassifier();
    }

    public final int hashCode() {
        return this.f4793b.hashCode();
    }

    @Override // kotlin.reflect.KType
    public final boolean isMarkedNullable() {
        return this.f4793b.isMarkedNullable();
    }

    public final String toString() {
        return "KTypeWrapper: " + this.f4793b;
    }
}
