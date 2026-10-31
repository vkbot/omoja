package e0;

import android.util.Log;
import com.example.navistart.Notik;
import java.util.ArrayList;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;
import org.json.JSONObject;
import ru.transfer.MessageData;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c2 implements y0.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Notik f1818b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c2(Notik notik, int i9) {
        this.f1817a = i9;
        this.f1818b = notik;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y0.e
    public final void a(String str) {
        int i9 = this.f1817a;
        Notik notik = this.f1818b;
        switch (i9) {
            case 0:
                ArrayList arrayList = Notik.f793l;
                try {
                    MessageData messageDataG = com.bumptech.glide.c.g(str);
                    notik.d(messageDataG);
                    y0.h hVar = notik.f797f;
                    if (hVar != null) {
                        hVar.y(m.h(new byte[]{-58, -42, -40, 21, 85, -90, 63, -67, -123, -63, -50, 5, 81, -88, 44, -85, -49}, new byte[]{-85, -77, -85, 102, 52, -63, 90, -50}), new JSONObject().put(m.h(new byte[]{84, 77, -1}, new byte[]{63, 40, -122, 18, -43, -127, 67, -51}), messageDataG.getKey()).toString());
                    }
                } catch (RuntimeException | JSONException e) {
                    Log.w(m.h(new byte[]{46, 11, -121, -77, 14}, new byte[]{96, 100, -13, -38, 101, 54, 99, -81}), m.h(new byte[]{57, -100, -19, Base64.padSymbol, 73, 100, -60, 48, 8, -115, -26, 111, 73, 54, -56, 59, 8, -114, -24, 122, 88}, new byte[]{123, -3, -119, 29, Base64.padSymbol, 22, -91, 94}), e);
                    return;
                }
                break;
            case 1:
                ArrayList arrayList2 = Notik.f793l;
                try {
                    String string = new JSONObject(str).getString(m.h(new byte[]{-84, -81, -76}, new byte[]{-57, -54, -51, -35, 124, 70, 44, -64}));
                    MessageData messageDataC = notik.c(string);
                    if (messageDataC != null) {
                        notik.e(messageDataC);
                    }
                    notik.e.remove(string);
                } catch (RuntimeException e6) {
                    e = e6;
                    Log.w(m.h(new byte[]{30, 79, -88, 93, -8}, new byte[]{80, 32, -36, 52, -109, -33, -70, 121}), m.h(new byte[]{79, 9, 126, 76, 44, -71, 6, -94, 126, 24, 117, 30, 44, -21, 21, -87, 96, 7, 108, 9}, new byte[]{13, 104, 26, 108, 88, -53, 103, -52}), e);
                    return;
                } catch (JSONException e9) {
                    e = e9;
                    Log.w(m.h(new byte[]{30, 79, -88, 93, -8}, new byte[]{80, 32, -36, 52, -109, -33, -70, 121}), m.h(new byte[]{79, 9, 126, 76, 44, -71, 6, -94, 126, 24, 117, 30, 44, -21, 21, -87, 96, 7, 108, 9}, new byte[]{13, 104, 26, 108, 88, -53, 103, -52}), e);
                    return;
                }
                break;
            case 2:
                ArrayList arrayList3 = Notik.f793l;
                try {
                    m0.b3 b3VarH = com.bumptech.glide.c.h(str);
                    MessageData messageData = (MessageData) notik.e.remove(b3VarH.f3342b);
                    if (!b3VarH.f3341a && messageData != null) {
                        notik.a(messageData);
                        break;
                    }
                } catch (RuntimeException | JSONException e10) {
                    Log.w(m.h(new byte[]{13, 48, -98, 25, -96}, new byte[]{67, 95, -22, 112, -53, -66, 72, -117}), m.h(new byte[]{15, -35, 15, 9, -83, -92, -17, 88, 52, -100, 25, 76, -84, -76, -13, 64}, new byte[]{77, -68, 107, 41, -33, -63, -97, 52}), e10);
                    return;
                }
                break;
            default:
                ArrayList arrayList4 = Notik.f793l;
                try {
                    m0.b3 b3VarC = com.bumptech.glide.d.c(str);
                    if (m.h(new byte[]{-76, 126, 46, 119, -19, 58, -27, 43}, new byte[]{-39, 27, 93, 4, -116, 93, ByteCompanionObject.MIN_VALUE, 88}).equals(b3VarC.f3342b) && b3VarC.f3341a) {
                        notik.b(true);
                        break;
                    }
                } catch (RuntimeException | JSONException e11) {
                    Log.w(m.h(new byte[]{28, 33, -113, 15, -125}, new byte[]{82, 78, -5, 102, -24, 30, 25, -39}), m.h(new byte[]{-122, 101, 97, -92, 30, 83, 76, 51, -91, 99, 96, -9, 83, 70, 77, 37, -73, 97, 107, -25, 22, 22, 79, 33, -89, 111, 96, -16}, new byte[]{-60, 4, 5, -124, 115, 54, 63, 64}), e11);
                }
                break;
        }
    }
}
