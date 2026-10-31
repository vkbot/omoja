package x0;

import android.util.Log;
import java.util.ArrayList;
import kotlin.io.encoding.Base64;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f6019a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{101, 27, -21, 100, 55, -93, -45, -61, 114, 9, -2, 117, 54, -93, -63, -60, 119, 12, -9, 100, 33}, new byte[]{22, 110, -101, 1, 69, -4, -92, -86});
        f6019a = e0.m.h(new byte[]{-125, 70, -99, -68, -114, 72, 72, 20, -108, 84, -120, -83, -113, 72, 91, 24, -125, 90, -118, -73, -113, 72, 73, 76}, new byte[]{-16, 51, -19, -39, -4, 23, 63, 125});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayList a() {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(h0.b.o().loadString(f6019a, e0.m.h(new byte[]{-41, -91}, new byte[]{-116, -8, 78, 58, -100, 59, 10, -122})));
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                if (jSONArray.optJSONObject(i9) != null) {
                    arrayList.add(o.e(jSONArray.getJSONObject(i9)));
                }
            }
            return arrayList;
        } catch (JSONException e) {
            Log.e(e0.m.h(new byte[]{-40, 48, -99, 23, -26, 28, 76, -47, -20, 32, -103, 1}, new byte[]{-117, 69, -19, 114, -108, 75, 37, -75}), e0.m.h(new byte[]{-53, -98, -55, 115, 58, -85, 118, -80, -19, -98, -61, Base64.padSymbol, 49, -70, 37, -85, -17, -111, -44}, new byte[]{-120, -1, -89, 29, 85, -33, 86, -62}), e);
            return arrayList;
        }
    }
}
