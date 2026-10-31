package p225w0;

import android.content.Context;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
import p047e0.AbstractC1387m;
import p098j0.AbstractC1920f;
import p098j0.C1919e;

/* JADX INFO: renamed from: w0.o0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3481o0 {

    /* JADX INFO: renamed from: a */
    public String f10178a;

    /* JADX INFO: renamed from: b */
    public C1919e f10179b;

    /* JADX INFO: renamed from: c */
    public boolean f10180c;

    /* JADX INFO: renamed from: d */
    public final boolean f10181d;

    public C3481o0(String str, C1919e c1919e, boolean z9, boolean z10) {
        this.f10178a = str;
        this.f10179b = c1919e;
        this.f10180c = z9;
        this.f10181d = z10;
    }

    /* JADX INFO: renamed from: a */
    public static C3481o0 m5500a(JSONObject jSONObject, Context context) {
        try {
            return new C3481o0(jSONObject.optString(AbstractC1387m.m2421h(new byte[]{99, 92, 109, -96, -42, 89}, new byte[]{19, 52, 31, -63, -91, 60, 37, 12}), ""), AbstractC1920f.m3004b(context, jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-97, 115, 28, -6, 21, -127}, new byte[]{-2, 16, 104, -109, 122, -17, -19, 114}), AbstractC1387m.m2421h(new byte[]{-37, 100, 53, -105, 120, 23, -95, -113, -31, 124, 33, -106, 55, 60}, new byte[]{-66, 10, 64, -6, 66, 89, -50, -5}))), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{-47, -69, 103, -100, -113, 15, 27}, new byte[]{-76, -43, 6, -2, -29, 106, ByteCompanionObject.MAX_VALUE, 103}), true), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{40, 115, -67, 29, 16, 0, -54, 56, 41}, new byte[]{69, 18, -55, 126, 120, 70, -65, 84}), true));
        } catch (Exception e) {
            e.printStackTrace();
            return new C3481o0("", AbstractC1920f.m3004b(context, AbstractC1387m.m2421h(new byte[]{-54, 81, -124, 102, -1, -102, -58, ByteCompanionObject.MIN_VALUE, -16, 73, -112, 103, -80, -79}, new byte[]{-81, 63, -15, 11, -59, -44, -87, -12})), true, true);
        }
    }
}
