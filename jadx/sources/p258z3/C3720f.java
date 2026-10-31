package p258z3;

import android.hardware.display.DisplayManager;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.SystemClock;
import android.util.Base64;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.manager.C1065k;
import com.bumptech.glide.manager.InterfaceC1062h;
import com.bumptech.glide.manager.InterfaceC1063i;
import com.bumptech.glide.manager.InterfaceC1068n;
import com.example.navistart.MainActivity;
import com.example.navistart.MyA11yService;
import com.example.navistart.cores.BTProxy;
import com.example.navistart.cores.InterC;
import com.example.navistart.punto;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.AbstractC0000a;
import p023b8.InterfaceC0928b;
import p037d0.InterfaceC1235c;
import p039d2.ExecutorC1260p;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p052e5.InterfaceC1495b;
import p059f2.InterfaceC1534b;
import p078h0.C1652b;
import p092i5.C1750a;
import p097j.C1887c0;
import p120l.C2192i;
import p133m2.InterfaceC2380a;
import p142n0.C2467b;
import p157o7.AbstractC2743y0;
import p157o7.InterfaceC2706r4;
import p172q.C3012d0;
import p172q.InterfaceC3014e0;
import p187r8.AbstractC3125f;
import p190s1.RunnableC3180x0;
import p204t8.InterfaceC3268a;
import p225w0.C3468j0;
import p232w7.C3537c;
import p242x7.AbstractC3594k;
import p255z0.InterfaceC3692a;

/* JADX INFO: renamed from: z3.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3720f implements InterfaceC1062h, InterfaceC1068n, InterfaceC1534b, InterfaceC0928b, Callback, InterfaceC3268a, InterfaceC1495b, InterfaceC1235c, InterfaceC2380a, InterfaceC2706r4, InterfaceC3014e0, InterfaceC3692a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f11019b;

    public C3720f(C1065k c1065k, FragmentManager fragmentManager) {
        this.f11019b = 2;
    }

    /* JADX INFO: renamed from: c */
    public static String m5930c(String str) {
        switch (str.hashCode()) {
            case -1636025268:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{23, 15, -20, 59, -58, -121, 40, -69, 23, 3}, new byte[]{82, 87, -96, 122, -120, -45, 97, -29}))) {
                    return "";
                }
                break;
            case -1003856139:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{119, -99, 40, -57, -95, -11, -97, -7, 83, -78, 2, -94}, new byte[]{52, -43, 109, -107, -8, -86, -21, -112}))) {
                    return "";
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case -622160062:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-66, 85, 30, -19, 20, -84, 51}, new byte[]{-15, 24, 81, -87, 85, -17, 4, 3}))) {
                    return "";
                }
                break;
            case -587389007:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-9, -11, -125, -5, 70, 28, 101, 105}, new byte[]{-67, -80, -41, -76, 19, 78, 49, 91}))) {
                    return "";
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case -520182249:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{99, -86, 13, -25, -122, 50, -53, 54}, new byte[]{55, -17, 67, -94, -46, 109, -97, 14}))) {
                    return "";
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case -493659662:
                return str.equals(AbstractC1387m.m2421h(new byte[]{20, -90, -43, 23, -63, 77, -65, -112, 99, -22}, new byte[]{81, -34, -80, 114, -91, 18, -23, -56})) ? AbstractC1387m.m2421h(new byte[]{-52, 70, 45, -66, -50, -74, -72, -52, -44, 91}, new byte[]{-94, 35, 88, -51, -95, -48, -52, -109}) : "";
            case -379785474:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-44, 119, 8, -17, -5, 51, 116, -17, -87, 105, 20, -19, -6}, new byte[]{-98, 54, 77, -84, -76, 124, 43, -91}))) {
                    return "";
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case -187319049:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-59, 117, 28, -21, -69, 2, -15, 75, -72}, new byte[]{-113, 52, 89, -88, -12, 77, -82, 1}))) {
                    return "";
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case -187319048:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-110, 55, 77, 72, -37, 100, -106, -94, -32}, new byte[]{-40, 118, 8, 11, -108, 43, -55, -24}))) {
                    return "";
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case 95182570:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-36, 6, 80, -99, 7, 36, 27, -82, -95, 24, 64, -116, 10, 42, 10}, new byte[]{-106, 71, 21, -34, 72, 107, 68, -28}))) {
                    return "";
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case 953904922:
                return str.equals(AbstractC1387m.m2421h(new byte[]{126, 39, -88, -66, 83, -102, -24, -69, 119}, new byte[]{59, 95, -51, -37, 55, -59, -68, -29})) ? AbstractC1387m.m2421h(new byte[]{19, 20, -10, -85, -124, 10, -109}, new byte[]{125, 113, -125, -40, -21, 108, -25, -47}) : "";
            case 1427279832:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{91, 110, -33, 71, 63, 57, 122, 95, ByteCompanionObject.MAX_VALUE, 65, -11, 34, 57, 42, 103, 66, 125}, new byte[]{24, 38, -102, 21, 102, 102, 14, 54}))) {
                    return "";
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case 1809128405:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-55, -111, -123, 57, 76, -2, 51, -78, -40, -112, -102, 36}, new byte[]{-118, -39, -64, 107, 21, -95, 114, -32}))) {
                    return "";
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            case 2051197242:
                if (!str.equals(AbstractC1387m.m2421h(new byte[]{-2, 41, -39, 118, 125, 10, 62, 77, -125}, new byte[]{-69, 122, -115, 51, 50, 85, 123, 25}))) {
                    return "";
                }
                return AbstractC1387m.m2421h(new byte[]{-16, 17, 79, -118, -87, -13, -83}, new byte[]{-108, 116, 60, -21, -48, ByteCompanionObject.MIN_VALUE, -37, -73});
            default:
                return "";
        }
        return AbstractC1387m.m2421h(new byte[]{126, -102, 124, 7}, new byte[]{19, -1, 27, 102, 25, 98, 1, -83});
    }

    /* JADX INFO: renamed from: i */
    public static C3468j0 m5931i(String str) {
        InterC interCM2755j;
        BTProxy bluetoothPhone;
        if (!str.equals(m5932j()) || m5930c(str).isEmpty() || (bluetoothPhone = (interCM2755j = C1652b.m2734a().m2755j()).getBluetoothPhone(m5930c(str))) == null) {
            return null;
        }
        return new C3468j0(bluetoothPhone, new RunnableC3180x0(10, interCM2755j, bluetoothPhone), !AbstractC1387m.m2421h(new byte[]{121, 102, 83, 48, -2, 44, -126}, new byte[]{29, 3, 32, 81, -121, 95, -12, 27}).equals(m5930c(str)));
    }

    /* JADX INFO: renamed from: j */
    public static String m5932j() {
        return C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{86, -79, 122, ByteCompanionObject.MIN_VALUE, 86, 29, -65, -96, 121, -107}, new byte[]{21, -16, 40, -48, 36, 114, -39, -55}), AbstractC1387m.m2421h(new byte[]{16, 116, -115, -124, -70, -56, -46, 57, 0, 126}, new byte[]{69, 58, -34, -63, -10, -115, -111, 109}));
    }

    @Override // com.bumptech.glide.manager.InterfaceC1062h
    /* JADX INFO: renamed from: a */
    public void mo1334a(InterfaceC1063i interfaceC1063i) {
        interfaceC1063i.onStart();
    }

    @Override // p037d0.InterfaceC1235c
    public Object create() {
        switch (this.f11019b) {
            case 11:
                return new C1887c0();
            case 12:
            default:
                return Executors.newCachedThreadPool(AbstractC2743y0.m4261e("grpc-okhttp-%d"));
            case 13:
                try {
                    return new C2192i(MessageDigest.getInstance("SHA-256"));
                } catch (NoSuchAlgorithmException e) {
                    C2467b.m3833w(e);
                    return null;
                }
        }
    }

    @Override // p133m2.InterfaceC2380a
    /* JADX INFO: renamed from: d */
    public long mo1142d() {
        return SystemClock.elapsedRealtime();
    }

    @Override // p172q.InterfaceC3014e0
    /* JADX INFO: renamed from: e */
    public void mo4751e(MediaExtractor mediaExtractor, Object obj) throws IOException {
        mediaExtractor.setDataSource(new C3012d0((ByteBuffer) obj));
    }

    @Override // p255z0.InterfaceC3692a
    /* JADX INFO: renamed from: f */
    public WindowManager mo1144f(View view, WindowManager.LayoutParams layoutParams) {
        return mo1145g(view, 0, layoutParams);
    }

    @Override // p255z0.InterfaceC3692a
    /* JADX INFO: renamed from: g */
    public WindowManager mo1145g(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        MyA11yService myA11yService = MyA11yService.f1453c;
        WindowManager windowManager = null;
        if (myA11yService != null) {
            Display[] displays = ((DisplayManager) myA11yService.getSystemService(AbstractC1387m.m2421h(new byte[]{76, 68, 81, -37, -12, 90, 60}, new byte[]{40, 45, 34, -85, -104, 59, 69, -14}))).getDisplays();
            if (i10 < displays.length) {
                windowManager = (WindowManager) myA11yService.createDisplayContext(displays[i10]).getSystemService(AbstractC1387m.m2421h(new byte[]{-82, -55, -124, 11, -38, -38}, new byte[]{-39, -96, -22, 111, -75, -83, 51, -1}));
            }
        }
        if (windowManager != null) {
            try {
                windowManager.addView(view, layoutParams);
            } catch (Exception unused) {
            }
        }
        return windowManager;
    }

    @Override // p204t8.InterfaceC3268a
    public Object get() {
        switch (this.f11019b) {
            case 3:
                return new ExecutorC1260p(Executors.newSingleThreadExecutor());
            case 6:
                return new C1750a();
            case 9:
                AbstractC3594k abstractC3594k = AbstractC3125f.f8940b;
                AbstractC0000a.m5e(abstractC3594k);
                return abstractC3594k;
            default:
                return new C3537c(12);
        }
    }

    @Override // p172q.InterfaceC3014e0
    /* JADX INFO: renamed from: h */
    public void mo4752h(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        mediaMetadataRetriever.setDataSource(new C3012d0((ByteBuffer) obj));
    }

    @Override // p255z0.InterfaceC3692a
    /* JADX INFO: renamed from: m */
    public int mo1151m() {
        return 2032;
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) {
        try {
            try {
                if (response.body() != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(response.body().string());
                        if (!jSONObject.isNull(AbstractC1387m.m2421h(new byte[]{25, -104, -59}, new byte[]{107, -3, -74, -99, -45, -72, 74, -52})) && AbstractC1387m.m2421h(new byte[]{106, -22, -5, 126, 31}, new byte[]{12, -117, -105, 13, 122, 117, -55, -108}).equals(jSONObject.getString(AbstractC1387m.m2421h(new byte[]{-106, -58, 44}, new byte[]{-28, -93, 95, -93, 11, -122, 43, 44})))) {
                            punto.f1869t = Boolean.FALSE;
                            C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{120, 18}, new byte[]{25, 103, -70, -58, 40, -124, -99, 118}), punto.f1869t.booleanValue());
                        }
                        byte[] bArr = AbstractC1387m.f3318f;
                        String[] strArr = AbstractC1406p3.f3368a;
                        if (!jSONObject.isNull(new String(bArr))) {
                            C1652b.m2745o().saveString(new String(bArr), jSONObject.getString(new String(bArr)));
                        }
                        byte[] bArr2 = AbstractC1387m.f3319g;
                        if (!jSONObject.isNull(new String(bArr2))) {
                            C1652b.m2745o().saveString(C1652b.m2745o().loadString(new String(bArr), new String(bArr2)), jSONObject.getString(new String(bArr2)));
                            String string = jSONObject.getString(new String(bArr2));
                            punto.f1868s = string;
                            MainActivity.f1293j1 = Long.valueOf(Long.parseLong(new String(Base64.decode(string, 0))));
                        }
                    } catch (JSONException unused) {
                    }
                }
                response.close();
            } catch (Exception unused2) {
            }
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
    }

    @Override // p157o7.InterfaceC2706r4
    /* JADX INFO: renamed from: p */
    public void mo4231p(Object obj) {
        ((ExecutorService) ((Executor) obj)).shutdown();
    }

    public String toString() {
        switch (this.f11019b) {
            case 4:
                return "EmptyConsumer";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ C3720f(int i10, Object obj) {
        this.f11019b = i10;
    }

    public /* synthetic */ C3720f(int i10) {
        this.f11019b = i10;
    }

    @Override // p023b8.InterfaceC0928b
    public void accept(Object obj) {
    }

    @Override // com.bumptech.glide.manager.InterfaceC1062h
    /* JADX INFO: renamed from: b */
    public void mo1335b(InterfaceC1063i interfaceC1063i) {
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
    }
}
