package p235x0;

import android.util.Log;
import java.util.ArrayList;
import kotlin.p118io.encoding.Base64;
import org.json.JSONArray;
import org.json.JSONException;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: x0.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3562p {

    /* JADX INFO: renamed from: a */
    public static final String f10615a;

    static {
        AbstractC1387m.m2421h(new byte[]{101, 27, -21, 100, 55, -93, -45, -61, 114, 9, -2, 117, 54, -93, -63, -60, 119, 12, -9, 100, 33}, new byte[]{22, 110, -101, 1, 69, -4, -92, -86});
        f10615a = AbstractC1387m.m2421h(new byte[]{-125, 70, -99, -68, -114, 72, 72, 20, -108, 84, -120, -83, -113, 72, 91, 24, -125, 90, -118, -73, -113, 72, 73, 76}, new byte[]{-16, 51, -19, -39, -4, 23, 63, 125});
    }

    /* JADX INFO: renamed from: a */
    public static ArrayList m5681a() {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(C1652b.m2745o().loadString(f10615a, AbstractC1387m.m2421h(new byte[]{-41, -91}, new byte[]{-116, -8, 78, 58, -100, 59, 10, -122})));
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                if (jSONArray.optJSONObject(i10) != null) {
                    arrayList.add(C3561o.m5676e(jSONArray.getJSONObject(i10)));
                }
            }
            return arrayList;
        } catch (JSONException e) {
            Log.e(AbstractC1387m.m2421h(new byte[]{-40, 48, -99, 23, -26, 28, 76, -47, -20, 32, -103, 1}, new byte[]{-117, 69, -19, 114, -108, 75, 37, -75}), AbstractC1387m.m2421h(new byte[]{-53, -98, -55, 115, 58, -85, 118, -80, -19, -98, -61, Base64.padSymbol, 49, -70, 37, -85, -17, -111, -44}, new byte[]{-120, -1, -89, 29, 85, -33, 86, -62}), e);
            return arrayList;
        }
    }
}
