package p026c1;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.util.Objects;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p099j1.C1929i;

/* JADX INFO: renamed from: c1.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0950c {

    /* JADX INFO: renamed from: a */
    public static final String f819a = AbstractC1387m.m2421h(new byte[]{-43, 79, ByteCompanionObject.MIN_VALUE, 31, -105, 25, 120, -34, -33, 20, -41, 7, -104, 19, 121, -61, -55, 91, -40, 15}, new byte[]{-89, 58, -82, 102, -10, 119, 28, -69});

    /* JADX INFO: renamed from: a */
    public static void m1093a(Uri.Builder builder, String str, C0949b c0949b) {
        builder.appendQueryParameter(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -45, -89, 81}, new byte[]{-20, -78, -45, 14, -19, -112, 80, 73}).concat(str), Double.toString(c0949b.f817a));
        builder.appendQueryParameter(AbstractC1387m.m2421h(new byte[]{-84, 48, 60, 113}, new byte[]{-64, 95, 82, 46, -84, 37, -16, -99}).concat(str), Double.toString(c0949b.f818b));
    }

    /* JADX INFO: renamed from: b */
    public static EnumC0948a m1094b(Context context, Intent intent) {
        Objects.requireNonNull(context, AbstractC1387m.m2421h(new byte[]{-83, -12, -98, 37, 91, 74, 73}, new byte[]{-50, -101, -16, 81, 62, 50, Base64.padSymbol, -87}));
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        try {
            context.startActivity(intent);
            return EnumC0948a.f813b;
        } catch (ActivityNotFoundException unused) {
            return EnumC0948a.f814c;
        } catch (SecurityException unused2) {
            return EnumC0948a.f815d;
        }
    }

    /* JADX INFO: renamed from: c */
    public static EnumC0948a m1095c(Context context, String str) {
        Objects.requireNonNull(str, AbstractC1387m.m2421h(new byte[]{-99, -44, 46, -28, 38, -46, -94}, new byte[]{-4, -80, 74, -106, 67, -95, -47, -125}));
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-76, -34, 95, -39, -79, 115, 115, 57, -75, -49, -81, -67, -35, 35, 22, -84, -76, -6, 95, -45, -80, 72, 115, 58, -76, -5, 95, -48, 64, 35, 18, 93, -17, -97, 13, -68, -20, -45, 115, 51, -75, -51, 94, -20, -79, 113, 114, 7, -76, -14}, new byte[]{100, 78, -113, 109, 96, -13, -93, -116}));
            return null;
        }
        return m1094b(context, new Intent(AbstractC1387m.m2421h(new byte[]{69, 0, 96, -60, -31, -125, -90, -10, 77, 0, 112, -45, -32, -98, -20, -71, 71, 26, 109, -39, -32, -60, -108, -111, 97, 57}, new byte[]{36, 110, 4, -74, -114, -22, -62, -40}), new Uri.Builder().scheme(AbstractC1387m.m2421h(new byte[]{102, 6, -22, -120, -79, -127, -59, 4, 105, 14}, new byte[]{31, 103, -124, -20, -44, -7, -85, 101})).authority(AbstractC1387m.m2421h(new byte[]{-39, -28, 114, -83, 53, 85, -67, 87, -41, -19}, new byte[]{-76, -123, 2, -14, 70, 48, -36, 37})).appendQueryParameter(AbstractC1387m.m2421h(new byte[]{-105, 116, -24, -115}, new byte[]{-29, 17, -112, -7, -66, 34, 84, 115}), strTrim).build()).setPackage(f819a));
    }
}
