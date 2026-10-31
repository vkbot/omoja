package z3;

import android.hardware.display.DisplayManager;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.SystemClock;
import android.util.Base64;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import androidx.fragment.app.FragmentManager;
import com.example.navistart.MainActivity;
import com.example.navistart.MyA11yService;
import com.example.navistart.cores.BTProxy;
import com.example.navistart.cores.InterC;
import com.example.navistart.punto;
import e0.p3;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.ByteCompanionObject;
import o7.r4;
import o7.y0;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;
import q.e0;
import s1.x0;
import w0.j0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class f implements com.bumptech.glide.manager.h, com.bumptech.glide.manager.n, f2.b, b8.b, Callback, t8.a, e5.b, d0.c, m2.a, r4, e0, z0.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6211b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(com.bumptech.glide.manager.k kVar, FragmentManager fragmentManager) {
        this.f6211b = 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String c(String str) {
        switch (str.hashCode()) {
            case -1636025268:
                if (!str.equals(e0.m.h(new byte[]{23, 15, -20, 59, -58, -121, 40, -69, 23, 3}, new byte[]{82, 87, -96, 122, -120, -45, 97, -29}))) {
                    return "";
                }
                break;
            case -1003856139:
                if (!str.equals(e0.m.h(new byte[]{119, -99, 40, -57, -95, -11, -97, -7, 83, -78, 2, -94}, new byte[]{52, -43, 109, -107, -8, -86, -21, -112}))) {
                    return "";
                }
                return e0.m.h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case -622160062:
                if (!str.equals(e0.m.h(new byte[]{-66, 85, 30, -19, 20, -84, 51}, new byte[]{-15, 24, 81, -87, 85, -17, 4, 3}))) {
                    return "";
                }
                break;
            case -587389007:
                if (!str.equals(e0.m.h(new byte[]{-9, -11, -125, -5, 70, 28, 101, 105}, new byte[]{-67, -80, -41, -76, 19, 78, 49, 91}))) {
                    return "";
                }
                return e0.m.h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case -520182249:
                if (!str.equals(e0.m.h(new byte[]{99, -86, 13, -25, -122, 50, -53, 54}, new byte[]{55, -17, 67, -94, -46, 109, -97, 14}))) {
                    return "";
                }
                return e0.m.h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case -493659662:
                return str.equals(e0.m.h(new byte[]{20, -90, -43, 23, -63, 77, -65, -112, 99, -22}, new byte[]{81, -34, -80, 114, -91, 18, -23, -56})) ? e0.m.h(new byte[]{-52, 70, 45, -66, -50, -74, -72, -52, -44, 91}, new byte[]{-94, 35, 88, -51, -95, -48, -52, -109}) : "";
            case -379785474:
                if (!str.equals(e0.m.h(new byte[]{-44, 119, 8, -17, -5, 51, 116, -17, -87, 105, 20, -19, -6}, new byte[]{-98, 54, 77, -84, -76, 124, 43, -91}))) {
                    return "";
                }
                return e0.m.h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case -187319049:
                if (!str.equals(e0.m.h(new byte[]{-59, 117, 28, -21, -69, 2, -15, 75, -72}, new byte[]{-113, 52, 89, -88, -12, 77, -82, 1}))) {
                    return "";
                }
                return e0.m.h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case -187319048:
                if (!str.equals(e0.m.h(new byte[]{-110, 55, 77, 72, -37, 100, -106, -94, -32}, new byte[]{-40, 118, 8, 11, -108, 43, -55, -24}))) {
                    return "";
                }
                return e0.m.h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case 95182570:
                if (!str.equals(e0.m.h(new byte[]{-36, 6, 80, -99, 7, 36, 27, -82, -95, 24, 64, -116, 10, 42, 10}, new byte[]{-106, 71, 21, -34, 72, 107, 68, -28}))) {
                    return "";
                }
                return e0.m.h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case 953904922:
                return str.equals(e0.m.h(new byte[]{126, 39, -88, -66, 83, -102, -24, -69, 119}, new byte[]{59, 95, -51, -37, 55, -59, -68, -29})) ? e0.m.h(new byte[]{19, 20, -10, -85, -124, 10, -109}, new byte[]{125, 113, -125, -40, -21, 108, -25, -47}) : "";
            case 1427279832:
                if (!str.equals(e0.m.h(new byte[]{91, 110, -33, 71, 63, 57, 122, 95, ByteCompanionObject.MAX_VALUE, 65, -11, 34, 57, 42, 103, 66, 125}, new byte[]{24, 38, -102, 21, 102, 102, 14, 54}))) {
                    return "";
                }
                return e0.m.h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case 1809128405:
                if (!str.equals(e0.m.h(new byte[]{-55, -111, -123, 57, 76, -2, 51, -78, -40, -112, -102, 36}, new byte[]{-118, -39, -64, 107, 21, -95, 114, -32}))) {
                    return "";
                }
                return e0.m.h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case 2051197242:
                if (!str.equals(e0.m.h(new byte[]{-2, 41, -39, 118, 125, 10, 62, 77, -125}, new byte[]{-69, 122, -115, 51, 50, 85, 123, 25}))) {
                    return "";
                }
                return e0.m.h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            default:
                return "";
        }
        return e0.m.h(new byte[]{126, -102, 124, 7}, new byte[]{19, -1, 27, 102, 25, 98, 1, -83});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static j0 i(String str) {
        InterC interCJ;
        BTProxy bluetoothPhone;
        if (!str.equals(j()) || c(str).isEmpty() || (bluetoothPhone = (interCJ = h0.b.a().j()).getBluetoothPhone(c(str))) == null) {
            return null;
        }
        return new j0(bluetoothPhone, new x0(10, interCJ, bluetoothPhone), !e0.m.h(new byte[]{121, 102, 83, 48, -2, 44, -126}, new byte[]{29, 3, 32, 81, -121, 95, -12, 27}).equals(c(str)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String j() {
        return h0.b.o().loadString(e0.m.h(new byte[]{86, -79, 122, ByteCompanionObject.MIN_VALUE, 86, 29, -65, -96, 121, -107}, new byte[]{21, -16, 40, -48, 36, 114, -39, -55}), e0.m.h(new byte[]{16, 116, -115, -124, -70, -56, -46, 57, 0, 126}, new byte[]{69, 58, -34, -63, -10, -115, -111, 109}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.h
    public void a(com.bumptech.glide.manager.i iVar) {
        iVar.onStart();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // d0.c
    public Object create() {
        switch (this.f6211b) {
            case 11:
                return new j.c0();
            case 12:
            default:
                return Executors.newCachedThreadPool(y0.e("grpc-okhttp-%d"));
            case 13:
                try {
                    return new l.i(MessageDigest.getInstance("SHA-256"));
                } catch (NoSuchAlgorithmException e) {
                    n0.b.w(e);
                    return null;
                }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // m2.a
    public long d() {
        return SystemClock.elapsedRealtime();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.e0
    public void e(MediaExtractor mediaExtractor, Object obj) throws IOException {
        mediaExtractor.setDataSource(new q.d0((ByteBuffer) obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z0.a
    public WindowManager f(View view, WindowManager$LayoutParams windowManager$LayoutParams) {
        return g(view, 0, windowManager$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z0.a
    public WindowManager g(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        MyA11yService myA11yService = MyA11yService.c;
        WindowManager windowManager = null;
        if (myA11yService != null) {
            Display[] displays = ((DisplayManager) myA11yService.getSystemService(e0.m.h(new byte[]{76, 68, 81, -37, -12, 90, 60}, new byte[]{40, 45, 34, -85, -104, 59, 69, -14}))).getDisplays();
            if (i9 < displays.length) {
                windowManager = (WindowManager) myA11yService.createDisplayContext(displays[i9]).getSystemService(e0.m.h(new byte[]{-82, -55, -124, 11, -38, -38}, new byte[]{-39, -96, -22, 111, -75, -83, 51, -1}));
            }
        }
        if (windowManager != null) {
            try {
                windowManager.addView(view, viewGroup$LayoutParams);
            } catch (Exception unused) {
            }
        }
        return windowManager;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public Object get() {
        switch (this.f6211b) {
            case 3:
                return new d2.p(Executors.newSingleThreadExecutor());
            case 6:
                return new i5.a();
            case 9:
                x7.k kVar = r8.f.f5035b;
                a.a.e(kVar);
                return kVar;
            default:
                return new w7.c(12);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q.e0
    public void h(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        mediaMetadataRetriever.setDataSource(new q.d0((ByteBuffer) obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z0.a
    public int m() {
        return 2032;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onResponse(Call call, Response response) {
        try {
            try {
                if (response.body() != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(response.body().string());
                        if (!jSONObject.isNull(e0.m.h(new byte[]{25, -104, -59}, new byte[]{107, -3, -74, -99, -45, -72, 74, -52})) && e0.m.h(new byte[]{106, -22, -5, 126, 31}, new byte[]{12, -117, -105, 13, 122, 117, -55, -108}).equals(jSONObject.getString(e0.m.h(new byte[]{-106, -58, 44}, new byte[]{-28, -93, 95, -93, 11, -122, 43, 44})))) {
                            punto.t = Boolean.FALSE;
                            h0.b.o().saveBoolean(e0.m.h(new byte[]{120, 18}, new byte[]{25, 103, -70, -58, 40, -124, -99, 118}), punto.t.booleanValue());
                        }
                        byte[] bArr = e0.m.f1892f;
                        String[] strArr = p3.f1924a;
                        if (!jSONObject.isNull(new String(bArr))) {
                            h0.b.o().saveString(new String(bArr), jSONObject.getString(new String(bArr)));
                        }
                        byte[] bArr2 = e0.m.f1893g;
                        if (!jSONObject.isNull(new String(bArr2))) {
                            h0.b.o().saveString(h0.b.o().loadString(new String(bArr), new String(bArr2)), jSONObject.getString(new String(bArr2)));
                            String string = jSONObject.getString(new String(bArr2));
                            punto.f1002s = string;
                            MainActivity.f692j1 = Long.valueOf(Long.parseLong(new String(Base64.decode(string, 0))));
                        }
                    } catch (JSONException unused) {
                    }
                }
                response.close();
            } catch (Throwable th) {
                if (response != null) {
                    try {
                        response.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.r4
    public void p(Object obj) {
        ((ExecutorService) ((Executor) obj)).shutdown();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f6211b) {
            case 4:
                return "EmptyConsumer";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ f(int i9, Object obj) {
        this.f6211b = i9;
    }

    public /* synthetic */ f(int i9) {
        this.f6211b = i9;
    }

    @Override // b8.b
    public void accept(Object obj) {
    }

    @Override // com.bumptech.glide.manager.h
    public void b(com.bumptech.glide.manager.i iVar) {
    }

    public void onFailure(Call call, IOException iOException) {
    }
}
