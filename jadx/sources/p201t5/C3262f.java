package p201t5;

import androidx.navigation.C0674b;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.Objects;
import p212u5.C3298a;

/* JADX INFO: renamed from: t5.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3262f extends AbstractC3258b {

    /* JADX INFO: renamed from: b */
    public final Serializable f9549b;

    public C3262f(Boolean bool) {
        Objects.requireNonNull(bool);
        this.f9549b = bool;
    }

    /* JADX INFO: renamed from: i */
    public static boolean m5201i(C3262f c3262f) {
        Serializable serializable = c3262f.f9549b;
        if (!(serializable instanceof Number)) {
            return false;
        }
        Number number = (Number) serializable;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // p201t5.AbstractC3258b
    /* JADX INFO: renamed from: a */
    public final double mo5190a() {
        return this.f9549b instanceof Number ? m5202h().doubleValue() : Double.parseDouble(mo5192g());
    }

    @Override // p201t5.AbstractC3258b
    /* JADX INFO: renamed from: d */
    public final int mo5191d() {
        return this.f9549b instanceof Number ? m5202h().intValue() : Integer.parseInt(mo5192g());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3262f.class != obj.getClass()) {
            return false;
        }
        C3262f c3262f = (C3262f) obj;
        Serializable serializable = c3262f.f9549b;
        Serializable serializable2 = this.f9549b;
        if (serializable2 == null) {
            return serializable == null;
        }
        if (m5201i(this) && m5201i(c3262f)) {
            return m5202h().longValue() == c3262f.m5202h().longValue();
        }
        if (!(serializable2 instanceof Number) || !(serializable instanceof Number)) {
            return serializable2.equals(serializable);
        }
        double dDoubleValue = m5202h().doubleValue();
        double dDoubleValue2 = c3262f.m5202h().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    @Override // p201t5.AbstractC3258b
    /* JADX INFO: renamed from: g */
    public final String mo5192g() {
        Serializable serializable = this.f9549b;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        if (serializable instanceof Number) {
            return m5202h().toString();
        }
        if (serializable instanceof Boolean) {
            return ((Boolean) serializable).toString();
        }
        throw new AssertionError("Unexpected value type: " + serializable.getClass());
    }

    /* JADX INFO: renamed from: h */
    public final Number m5202h() {
        Serializable serializable = this.f9549b;
        if (serializable instanceof Number) {
            return (Number) serializable;
        }
        if (serializable instanceof String) {
            return new C3298a((String) serializable);
        }
        C0674b.m840g("Primitive is neither a number nor a string");
        return null;
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        Serializable serializable = this.f9549b;
        if (serializable == null) {
            return 31;
        }
        if (m5201i(this)) {
            jDoubleToLongBits = m5202h().longValue();
        } else {
            if (!(serializable instanceof Number)) {
                return serializable.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(m5202h().doubleValue());
        }
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public C3262f(Number number) {
        Objects.requireNonNull(number);
        this.f9549b = number;
    }

    public C3262f(String str) {
        Objects.requireNonNull(str);
        this.f9549b = str;
    }
}
