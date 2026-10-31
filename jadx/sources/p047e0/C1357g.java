package p047e0;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.bumptech.glide.AbstractC1034g;
import com.example.navistart.ActivityC1081W;
import com.example.navistart.DialogUni.Fragmenti.ExlantixTelemetryFragment;
import com.example.navistart.MainActivity;
import com.example.navistart.cores.ProxyFactory;
import java.util.List;
import java.util.Locale;
import kotlin.p118io.encoding.Base64;
import p023b8.InterfaceC0927a;
import p023b8.InterfaceC0928b;
import p023b8.InterfaceC0929c;
import p023b8.InterfaceC0930d;
import p045d8.AbstractC1314b;
import p050e3.C1461d;
import p051e4.InterfaceC1468b0;
import p062f5.C1544d;
import p075g8.C1625a;
import p078h0.C1652b;
import p095i8.C1779d;
import p095i8.C1796u;
import p099j1.InterfaceC1941u;
import p190s1.C3159n;
import p190s1.C3174u0;
import p198t1.C3227e;
import p198t1.C3235m;
import p240x5.C3577c;
import p242x7.AbstractC3588e;
import p242x7.InterfaceC3586c;
import p250y5.C3646a;
import p250y5.C3648c;
import p250y5.C3654i;

/* JADX INFO: renamed from: e0.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1357g implements ProxyFactory.ProxyFactoryCreatContext, OnApplyWindowInsetsListener, InterfaceC1468b0, InterfaceC0929c, InterfaceC0928b, InterfaceC0930d, InterfaceC0927a, InterfaceC3586c, InterfaceC1941u {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3234b;

    @Override // p023b8.InterfaceC0928b
    public void accept(Object obj) {
        switch (this.f3234b) {
            case 12:
                C1461d.m2513m("Event Triggered: " + ((String) obj));
                break;
            case 13:
            case 15:
            case 16:
            case 19:
            case 21:
            case 23:
            default:
                Log.w("FIAM.Headless", "Impressions store read fail: " + ((Throwable) obj).getMessage());
                break;
            case 14:
                C1461d.m2514n("App foreground rate limited ? : " + ((Boolean) obj));
                break;
            case 17:
                Locale locale = Locale.US;
                C1461d.m2514n("Successfully fetched " + ((C3654i) obj).m5854q().size() + " messages from backend");
                break;
            case 18:
                Log.w("FIAM.Headless", "Service fetch error: " + ((Throwable) obj).getMessage());
                break;
            case 20:
                Log.w("FIAM.Headless", "Cache write error: " + ((Throwable) obj).getMessage());
                break;
            case 22:
                Log.w("FIAM.Headless", "Impression store read fail: " + ((Throwable) obj).getMessage());
                break;
            case 24:
                C1461d.m2513m("Fetched from cache");
                break;
            case 25:
                Log.w("FIAM.Headless", "Cache read error: " + ((Throwable) obj).getMessage());
                break;
        }
    }

    @Override // p023b8.InterfaceC0929c
    public Object apply(Object obj) {
        switch (this.f3234b) {
            case 9:
                return ((C3648c) obj).m5838o();
            case 10:
                List list = (List) obj;
                AbstractC1314b.m2356a(list, "source is null");
                return new C1796u(1, list);
            case 11:
                return ((C3646a) obj).m5833n();
            case 21:
                return C1625a.f4119b;
            default:
                C3577c c3577c = (C3577c) obj;
                int iM1296c = AbstractC1034g.m1296c(c3577c.m5692n().m2334r());
                if (iM1296c == 0 || iM1296c == 1 || iM1296c == 2 || iM1296c == 3) {
                    return AbstractC3588e.m5715a(c3577c);
                }
                C1461d.m2513m("Filtering non-displayable message");
                return C1779d.f4673b;
        }
    }

    @Override // p099j1.InterfaceC1941u
    /* JADX INFO: renamed from: c */
    public void mo457c(Context context) {
        if (AbstractC1387m.m2421h(new byte[]{-119, -101, -109, -10, 124, 53, -75, -54, -119, -105}, new byte[]{-52, -61, -33, -73, 50, 97, -4, -110}).equals(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{112, 25, -51, -9, 48, -25, -9, -8, 95, Base64.padSymbol}, new byte[]{51, 88, -97, -89, 66, -120, -111, -111}), ""))) {
            ActivityC1081W.m1610u(context, ExlantixTelemetryFragment.class, null);
        }
    }

    @Override // com.example.navistart.cores.ProxyFactory.ProxyFactoryCreatContext
    public Object create(Context context) {
        switch (this.f3234b) {
            case 0:
                return new C3227e(context);
            case 1:
                return new C3235m(context);
            case 2:
                return new C3159n(context);
            default:
                return new C3174u0(context);
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        String str = MainActivity.f1288e1;
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        return windowInsetsCompat;
    }

    @Override // p023b8.InterfaceC0927a
    public void run() {
        C1461d.m2513m("Wrote to cache");
    }

    @Override // p023b8.InterfaceC0930d
    public boolean test(Object obj) {
        boolean zBooleanValue;
        switch (this.f3234b) {
            case 15:
                zBooleanValue = ((Boolean) obj).booleanValue();
                break;
            case 16:
                C1544d c1544d = (C1544d) obj;
                return (TextUtils.isEmpty(c1544d.f3799a) || TextUtils.isEmpty(c1544d.f3800b.f5796a)) ? false : true;
            default:
                zBooleanValue = ((Boolean) obj).booleanValue();
                break;
        }
        return !zBooleanValue;
    }

    public /* synthetic */ C1357g(int i10) {
        this.f3234b = i10;
    }

    @Override // p242x7.InterfaceC3586c
    /* JADX INFO: renamed from: d */
    public void mo2402d() {
    }
}
