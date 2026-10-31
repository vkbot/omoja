package p099j1;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.util.Base64;
import com.example.navistart.ActivityC1081W;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.io.InvalidObjectException;
import java.util.ArrayList;
import java.util.NoSuchElementException;
import org.apache.commons.p161io.FilenameUtils;
import org.json.JSONObject;
import p003a2.EnumC0005b;
import p039d2.C1252h;
import p039d2.C1254j;
import p047e0.AbstractC1387m;
import p058f1.C1532e;
import p078h0.C1652b;
import p111k2.InterfaceC2034f;
import p142n0.C2467b;
import p143n2.AbstractC2473a;
import p200t4.InterfaceC3242c;
import p206u0.C3277a;

/* JADX INFO: renamed from: j1.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1929i implements InterfaceC1941u, InterfaceC2034f, InterfaceC3242c {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5170b;

    public /* synthetic */ C1929i(int i10) {
        this.f5170b = i10;
    }

    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m3021b(int i10, String str) throws InvalidObjectException {
        throw new InvalidObjectException(str + i10 + FilenameUtils.EXTENSION_SEPARATOR);
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ void m3022d(int i10, String str, Object obj, Object obj2) {
        throw new IllegalArgumentException((str + obj + obj2 + i10).toString());
    }

    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m3023e(Object obj) {
        throw new AssertionError(obj);
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ void m3024f(Object obj, String str) {
        throw new IllegalArgumentException(str + obj + FilenameUtils.EXTENSION_SEPARATOR);
    }

    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m3025g(String str) {
        throw new NoSuchElementException(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: h */
    public static /* synthetic */ void m3026h(String str, int i10, int i11, int i12, Object obj) {
        throw new IllegalArgumentException(str + i10 + obj + i11 + ((char) i12));
    }

    /* JADX INFO: renamed from: i */
    public static /* synthetic */ void m3027i(StringBuilder sb, int i10) {
        sb.append(i10);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    /* JADX INFO: renamed from: j */
    public static /* synthetic */ void m3028j(StringBuilder sb, Object obj) {
        sb.append(" is less than minimum ");
        sb.append(obj);
        sb.append(FilenameUtils.EXTENSION_SEPARATOR);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ void m3029k(String str) {
        throw new IllegalArgumentException(str);
    }

    /* JADX INFO: renamed from: l */
    public static /* synthetic */ void m3030l(String str) {
        throw new IllegalStateException(str);
    }

    @Override // p200t4.InterfaceC3242c
    /* JADX INFO: renamed from: a */
    public Object mo817a(C1252h c1252h) {
        return FirebaseInstallationsRegistrar.lambda$getComponents$0(c1252h);
    }

    @Override // p111k2.InterfaceC2034f
    public Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            String string = cursor.getString(1);
            if (string == null) {
                C2467b.m3828n("Null backendName");
                return null;
            }
            EnumC0005b enumC0005bM3840b = AbstractC2473a.m3840b(cursor.getInt(2));
            String string2 = cursor.getString(3);
            arrayList.add(new C1254j(string, string2 == null ? null : Base64.decode(string2, 0), enumC0005bM3840b));
        }
        return arrayList;
    }

    @Override // p099j1.InterfaceC1941u
    /* JADX INFO: renamed from: c */
    public void mo457c(Context context) {
        switch (this.f5170b) {
            case 0:
                C1931k.m3032i(1, 0);
                break;
            case 1:
                C1931k.m3032i(1, 10);
                break;
            case 2:
                C1931k.m3032i(2, 100);
                break;
            case 3:
                C1931k.m3032i(2, 0);
                break;
            case 4:
                C1931k.m3032i(2, 10);
                break;
            case 5:
                C1931k.m3032i(3, 100);
                break;
            case 6:
                C1931k.m3032i(3, 0);
                break;
            case 7:
                C1931k.m3032i(3, 10);
                break;
            case 8:
                C1931k.m3032i(4, 100);
                break;
            case 9:
                C1931k.m3032i(4, 0);
                break;
            case 10:
                C1931k.m3032i(4, 10);
                break;
            case 11:
                C1931k.m3032i(0, 100);
                break;
            case 12:
                C1931k.m3032i(0, 0);
                break;
            case 13:
                C1931k.m3032i(0, 10);
                break;
            case 14:
                Bundle bundle = new Bundle();
                String strM2421h = AbstractC1387m.m2421h(new byte[]{51, -92, 20}, new byte[]{87, -51, 103, -108, -92, 6, -92, -109});
                C1652b.m2734a();
                bundle.putInt(strM2421h, C1652b.m2744n().getGuDisplayID());
                ActivityC1081W.m1609t(context, C1532e.class, bundle);
                break;
            case 15:
                C3277a c3277aM2745o = C1652b.m2745o();
                String str = C1935o.f5278e;
                boolean zLoadBoolean = c3277aM2745o.loadBoolean(str, false);
                boolean z9 = !zLoadBoolean;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{40, 48, -85}, new byte[]{75, 93, -49, 21, -90, -83, -74, -81}), !zLoadBoolean ? AbstractC1387m.m2421h(new byte[]{-9, 37, -122, kotlin.p118io.encoding.Base64.padSymbol, 36, 47, 95, 46, -30, 34, -115, 3, 48, 42, 93, 31, -10, 56, -127, 57}, new byte[]{-109, 76, -11, 92, 70, 67, 58, 113}) : AbstractC1387m.m2421h(new byte[]{-78, 122, 37, 68, -26, 83, -109, -51, -71, 108, 27, 80, -29, 81, -94, -39, -93, 96, 33}, new byte[]{-41, 20, 68, 38, -118, 54, -52, -68}));
                    C1652b.m2734a();
                    JSONObject jSONObjectM1618c = C1652b.m2736d().m1618c(jSONObject);
                    if (jSONObjectM1618c != null && jSONObjectM1618c.optBoolean(AbstractC1387m.m2421h(new byte[]{100, 91, 77, -4, -61, 102, 72}, new byte[]{23, 46, 46, -97, -90, 21, 59, -51}), false)) {
                        C1652b.m2745o().saveBoolean(str, z9);
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case 16:
                if (C1937q.m3039n()) {
                    ActivityC1081W.m1609t(context, C1532e.class, null);
                }
                break;
            default:
                if (C1939s.m3047l()) {
                    ActivityC1081W.m1609t(context, C1532e.class, null);
                }
                break;
        }
    }
}
