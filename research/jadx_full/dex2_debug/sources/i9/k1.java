package i9;

import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlin.time.Duration;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class k1 {
    public static final Map a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(String.class);
        StringCompanionObject.INSTANCE.getClass();
        Pair pair = TuplesKt.to(orCreateKotlinClass, q1.a);
        KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(Character.TYPE);
        CharCompanionObject.INSTANCE.getClass();
        Pair pair2 = TuplesKt.to(orCreateKotlinClass2, p.a);
        Pair pair3 = TuplesKt.to(Reflection.getOrCreateKotlinClass(char[].class), o.c);
        KClass orCreateKotlinClass3 = Reflection.getOrCreateKotlinClass(Double.TYPE);
        DoubleCompanionObject.INSTANCE.getClass();
        Pair pair4 = TuplesKt.to(orCreateKotlinClass3, x.a);
        Pair pair5 = TuplesKt.to(Reflection.getOrCreateKotlinClass(double[].class), w.c);
        KClass orCreateKotlinClass4 = Reflection.getOrCreateKotlinClass(Float.TYPE);
        FloatCompanionObject.INSTANCE.getClass();
        Pair pair6 = TuplesKt.to(orCreateKotlinClass4, e0.a);
        Pair pair7 = TuplesKt.to(Reflection.getOrCreateKotlinClass(float[].class), d0.c);
        KClass orCreateKotlinClass5 = Reflection.getOrCreateKotlinClass(Long.TYPE);
        LongCompanionObject.INSTANCE.getClass();
        Pair pair8 = TuplesKt.to(orCreateKotlinClass5, q0.a);
        Pair pair9 = TuplesKt.to(Reflection.getOrCreateKotlinClass(long[].class), p0.c);
        KClass orCreateKotlinClass6 = Reflection.getOrCreateKotlinClass(ULong.class);
        ULong.Companion.getClass();
        Pair pair10 = TuplesKt.to(orCreateKotlinClass6, a2.a);
        Pair pair11 = TuplesKt.to(Reflection.getOrCreateKotlinClass(ULongArray.class), z1.c);
        KClass orCreateKotlinClass7 = Reflection.getOrCreateKotlinClass(Integer.TYPE);
        IntCompanionObject.INSTANCE.getClass();
        Pair pair12 = TuplesKt.to(orCreateKotlinClass7, l0.a);
        Pair pair13 = TuplesKt.to(Reflection.getOrCreateKotlinClass(int[].class), k0.c);
        KClass orCreateKotlinClass8 = Reflection.getOrCreateKotlinClass(UInt.class);
        UInt.Companion.getClass();
        Pair pair14 = TuplesKt.to(orCreateKotlinClass8, x1.a);
        Pair pair15 = TuplesKt.to(Reflection.getOrCreateKotlinClass(UIntArray.class), w1.c);
        KClass orCreateKotlinClass9 = Reflection.getOrCreateKotlinClass(Short.TYPE);
        ShortCompanionObject.INSTANCE.getClass();
        Pair pair16 = TuplesKt.to(orCreateKotlinClass9, p1.a);
        Pair pair17 = TuplesKt.to(Reflection.getOrCreateKotlinClass(short[].class), o1.c);
        KClass orCreateKotlinClass10 = Reflection.getOrCreateKotlinClass(UShort.class);
        UShort.Companion.getClass();
        Pair pair18 = TuplesKt.to(orCreateKotlinClass10, d2.a);
        Pair pair19 = TuplesKt.to(Reflection.getOrCreateKotlinClass(UShortArray.class), c2.c);
        KClass orCreateKotlinClass11 = Reflection.getOrCreateKotlinClass(Byte.TYPE);
        ByteCompanionObject.INSTANCE.getClass();
        Pair pair20 = TuplesKt.to(orCreateKotlinClass11, j.a);
        Pair pair21 = TuplesKt.to(Reflection.getOrCreateKotlinClass(byte[].class), i.c);
        KClass orCreateKotlinClass12 = Reflection.getOrCreateKotlinClass(UByte.class);
        UByte.Companion.getClass();
        Pair pair22 = TuplesKt.to(orCreateKotlinClass12, u1.a);
        Pair pair23 = TuplesKt.to(Reflection.getOrCreateKotlinClass(UByteArray.class), t1.c);
        KClass orCreateKotlinClass13 = Reflection.getOrCreateKotlinClass(Boolean.TYPE);
        BooleanCompanionObject.INSTANCE.getClass();
        Pair pair24 = TuplesKt.to(orCreateKotlinClass13, g.a);
        Pair pair25 = TuplesKt.to(Reflection.getOrCreateKotlinClass(boolean[].class), f.c);
        KClass orCreateKotlinClass14 = Reflection.getOrCreateKotlinClass(Unit.class);
        Unit.INSTANCE.getClass();
        Pair pair26 = TuplesKt.to(orCreateKotlinClass14, e2.b);
        Pair pair27 = TuplesKt.to(Reflection.getOrCreateKotlinClass(Void.class), z0.a);
        KClass orCreateKotlinClass15 = Reflection.getOrCreateKotlinClass(Duration.class);
        Duration.Companion.getClass();
        a = MapsKt.mapOf(new Pair[]{pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, pair9, pair10, pair11, pair12, pair13, pair14, pair15, pair16, pair17, pair18, pair19, pair20, pair21, pair22, pair23, pair24, pair25, pair26, pair27, TuplesKt.to(orCreateKotlinClass15, y.a)});
    }
}
