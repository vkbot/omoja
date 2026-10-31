package p212u5;

import java.math.BigDecimal;

/* JADX INFO: renamed from: u5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3298a extends Number {

    /* JADX INFO: renamed from: b */
    public final String f9653b;

    public C3298a(String str) {
        this.f9653b = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f9653b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3298a)) {
            return false;
        }
        Object obj2 = ((C3298a) obj).f9653b;
        String str = this.f9653b;
        return str == obj2 || str.equals(obj2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f9653b);
    }

    public final int hashCode() {
        return this.f9653b.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        String str = this.f9653b;
        try {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return new BigDecimal(str).intValue();
            }
        } catch (NumberFormatException unused2) {
            return (int) Long.parseLong(str);
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        String str = this.f9653b;
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return new BigDecimal(str).longValue();
        }
    }

    public final String toString() {
        return this.f9653b;
    }
}
