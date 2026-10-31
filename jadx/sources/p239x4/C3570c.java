package p239x4;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: renamed from: x4.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3570c {

    /* JADX INFO: renamed from: a */
    public final String f10632a;

    /* JADX INFO: renamed from: b */
    public final Map f10633b;

    public C3570c(String str, Map map) {
        this.f10632a = str;
        this.f10633b = map;
    }

    /* JADX INFO: renamed from: a */
    public static C3570c m5685a(String str) {
        return new C3570c(str, Collections.EMPTY_MAP);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3570c)) {
            return false;
        }
        C3570c c3570c = (C3570c) obj;
        return this.f10632a.equals(c3570c.f10632a) && this.f10633b.equals(c3570c.f10633b);
    }

    public final int hashCode() {
        return this.f10633b.hashCode() + (this.f10632a.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f10632a + ", properties=" + this.f10633b.values() + "}";
    }
}
