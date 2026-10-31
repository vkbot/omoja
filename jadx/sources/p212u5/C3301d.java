package p212u5;

import java.util.Map;
import p142n0.C2467b;

/* JADX INFO: renamed from: u5.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3301d implements Map.Entry {

    /* JADX INFO: renamed from: b */
    public C3301d f9661b;

    /* JADX INFO: renamed from: c */
    public C3301d f9662c;

    /* JADX INFO: renamed from: d */
    public C3301d f9663d;

    /* JADX INFO: renamed from: e */
    public C3301d f9664e;

    /* JADX INFO: renamed from: f */
    public C3301d f9665f;

    /* JADX INFO: renamed from: g */
    public final Object f9666g;

    /* JADX INFO: renamed from: h */
    public Object f9667h;

    /* JADX INFO: renamed from: i */
    public int f9668i;

    public C3301d(C3301d c3301d, Object obj, C3301d c3301d2, C3301d c3301d3) {
        this.f9661b = c3301d;
        this.f9666g = obj;
        this.f9668i = 1;
        this.f9664e = c3301d2;
        this.f9665f = c3301d3;
        c3301d3.f9664e = this;
        c3301d2.f9665f = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.f9666g;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.f9667h;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f9666g;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f9667h;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.f9666g;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f9667h;
        return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj == null) {
            C2467b.m3828n("value == null");
            return null;
        }
        Object obj2 = this.f9667h;
        this.f9667h = obj;
        return obj2;
    }

    public final String toString() {
        return this.f9666g + "=" + this.f9667h;
    }

    public C3301d() {
        this.f9666g = null;
        this.f9665f = this;
        this.f9664e = this;
    }
}
