package j1;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.util.Base64;
import com.example.navistart.W;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.io.InvalidObjectException;
import java.util.ArrayList;
import java.util.NoSuchElementException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i implements u, k2.f, t4.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2946b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(int i9) {
        this.f2946b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(int i9, String str) throws InvalidObjectException {
        throw new InvalidObjectException(str + i9 + '.');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void d(int i9, String str, Object obj, Object obj2) {
        throw new IllegalArgumentException((str + obj + obj2 + i9).toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void e(Object obj) {
        throw new AssertionError(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void f(Object obj, String str) {
        throw new IllegalArgumentException(str + obj + '.');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void g(String str) {
        throw new NoSuchElementException(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r5v0, resolved type: int */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void h(String str, int i9, int i10, int i11, Object obj) {
        throw new IllegalArgumentException(str + i9 + obj + i10 + ((char) i11));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void i(StringBuilder sb, int i9) {
        sb.append(i9);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void j(StringBuilder sb, Object obj) {
        sb.append(" is less than minimum ");
        sb.append(obj);
        sb.append('.');
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void k(String str) {
        throw new IllegalArgumentException(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void l(String str) {
        throw new IllegalStateException(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.c
    public Object a(d2.h hVar) {
        return FirebaseInstallationsRegistrar.a(hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k2.f
    public Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            String string = cursor.getString(1);
            if (string == null) {
                n0.b.n("Null backendName");
                return null;
            }
            a2.b bVarB = n2.a.b(cursor.getInt(2));
            String string2 = cursor.getString(3);
            arrayList.add(new d2.j(string, string2 == null ? null : Base64.decode(string2, 0), bVarB));
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.u
    public void c(Context context) {
        switch (this.f2946b) {
            case 0:
                k.i(1, 0);
                break;
            case 1:
                k.i(1, 10);
                break;
            case 2:
                k.i(2, 100);
                break;
            case 3:
                k.i(2, 0);
                break;
            case 4:
                k.i(2, 10);
                break;
            case 5:
                k.i(3, 100);
                break;
            case 6:
                k.i(3, 0);
                break;
            case 7:
                k.i(3, 10);
                break;
            case 8:
                k.i(4, 100);
                break;
            case 9:
                k.i(4, 0);
                break;
            case 10:
                k.i(4, 10);
                break;
            case 11:
                k.i(0, 100);
                break;
            case 12:
                k.i(0, 0);
                break;
            case 13:
                k.i(0, 10);
                break;
            case 14:
                Bundle bundle = new Bundle();
                String strH = e0.m.h(new byte[]{51, -92, 20}, new byte[]{87, -51, 103, -108, -92, 6, -92, -109});
                h0.b.a();
                bundle.putInt(strH, h0.b.n().getGuDisplayID());
                W.t(context, f1.e.class, bundle);
                break;
            case 15:
                u0.a aVarO = h0.b.o();
                String str = o.e;
                boolean zLoadBoolean = aVarO.loadBoolean(str, false);
                boolean z8 = !zLoadBoolean;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(e0.m.h(new byte[]{40, 48, -85}, new byte[]{75, 93, -49, 21, -90, -83, -74, -81}), !zLoadBoolean ? e0.m.h(new byte[]{-9, 37, -122, kotlin.io.encoding.Base64.padSymbol, 36, 47, 95, 46, -30, 34, -115, 3, 48, 42, 93, 31, -10, 56, -127, 57}, new byte[]{-109, 76, -11, 92, 70, 67, 58, 113}) : e0.m.h(new byte[]{-78, 122, 37, 68, -26, 83, -109, -51, -71, 108, 27, 80, -29, 81, -94, -39, -93, 96, 33}, new byte[]{-41, 20, 68, 38, -118, 54, -52, -68}));
                    h0.b.a();
                    JSONObject jSONObjectC = h0.b.d().c(jSONObject);
                    if (jSONObjectC != null && jSONObjectC.optBoolean(e0.m.h(new byte[]{100, 91, 77, -4, -61, 102, 72}, new byte[]{23, 46, 46, -97, -90, 21, 59, -51}), false)) {
                        h0.b.o().saveBoolean(str, z8);
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case 16:
                if (q.n()) {
                    W.t(context, f1.e.class, null);
                }
                break;
            default:
                if (s.l()) {
                    W.t(context, f1.e.class, null);
                }
                break;
        }
    }
}
