package p047e0;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.VpnService;
import android.os.Handler;
import android.os.Looper;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.C0566h;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.MyA11yService;
import com.example.navistart.R;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import com.example.navistart.TService;
import com.example.navistart.VJCT;
import java.io.IOException;
import java.util.Objects;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p005a4.RunnableC0014g;
import p038d1.AbstractC1244d;
import p038d1.C1241a;
import p039d2.C1252h;
import p047e0.AbstractC1387m;
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p098j0.AbstractC1920f;
import p132m0.C2313k0;
import p132m0.C2323m0;
import p132m0.C2328n0;
import p132m0.C2342q1;
import p152o0.C2567a;
import p152o0.EnumC2572f;
import p155o4.AbstractC2587b;
import p225w0.C3481o0;
import p235x0.C3549c;
import p235x0.C3559m;
import p235x0.C3561o;

/* JADX INFO: renamed from: e0.c3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1341c3 implements CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3195a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f3196b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f3197c;

    public /* synthetic */ C1341c3(int i10, Object obj, Object obj2) {
        this.f3195a = i10;
        this.f3196b = obj;
        this.f3197c = obj2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, final boolean z9) {
        int i10 = 0;
        switch (this.f3195a) {
            case 0:
                VJCT vjct = (VJCT) this.f3196b;
                Switch r12 = (Switch) this.f3197c;
                if (z9) {
                    Intent intentPrepare = VpnService.prepare(vjct.f1693b);
                    if (intentPrepare != null) {
                        AlertDialog.Builder builder = new AlertDialog.Builder(vjct);
                        vjct.f1697f = builder;
                        builder.setTitle(AbstractC1387m.m2421h(new byte[]{-53, 86, -1, 72, -31, 117, -29, 102, -53, 116, -1, 72, -31, 117, -29, 111, 58}, new byte[]{27, -60, 47, -11, 49, -51, 51, -38}));
                        vjct.f1697f.setMessage(vjct.getResources().getString(R.string.vpn_start_not_perm));
                        vjct.f1697f.setPositiveButton(AbstractC1387m.m2421h(new byte[]{-41, 41, 94, 9}, new byte[]{7, -73, -114, -109, 115, 117, 18, 37}), new DialogInterfaceOnClickListenerC1346d3(i10));
                        vjct.f1697f.show();
                        try {
                            vjct.startActivityForResult(intentPrepare, 15);
                        } catch (ActivityNotFoundException unused) {
                            Toast.makeText(vjct, AbstractC1387m.m2421h(new byte[]{-19, -104, 78, 103, 1, -117, Base64.padSymbol, 90, -19, -116, 78, 99, 0, -73, 60, 102, -19, -116, -66, 15, 110, -38, 86, 8, ByteCompanionObject.MIN_VALUE, -23, 32, -1, 0, -75, 60, 102, -19, -115, 79, 93, 0, -72, 60, 109, -20, -71, 78, 105, 0, -66, 60, 109, -19, -124, 78, 103, 1, -123, -52, -114, 109, 119, -66, 15, 109, -38, 89, 8, -119, -23, 32, 14, 81, -37, 110, 9, -66, -23, 33, 15, 109, -38, 82}, new byte[]{Base64.padSymbol, 57, -98, -33, -48, 10, -20, -40}), 1).show();
                        }
                        vjct.f1696e.setChecked(false);
                    } else {
                        vjct.f1695d.setVisibility(0);
                        TService.m1586c(vjct);
                    }
                } else {
                    TextView textView = VJCT.f1689g;
                    r12.setChecked(false);
                    vjct.f1695d.setVisibility(8);
                    C1252h c1252h = TService.f1640c;
                    vjct.stopService(new Intent(vjct.getApplicationContext(), (Class<?>) TService.class));
                }
                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{101, 41, -43, 50, -83, 103, -109, -19, 122, 58, -34, 30, -127, 113, -107, -6, 97, 45}, new byte[]{19, 89, -69, 109, -34, 2, -31, -101}), z9);
                break;
            case 1:
                C2323m0 c2323m0 = (C2323m0) this.f3196b;
                final C2313k0 c2313k0 = (C2313k0) this.f3197c;
                compoundButton.setOnCheckedChangeListener(null);
                compoundButton.setChecked(AbstractC2587b.m4058y(c2323m0.f6219b.f6241e, c2313k0.f6182a));
                final C2328n0 c2328n0 = c2323m0.f6219b;
                if (!c2328n0.f6240d) {
                    c2328n0.f6240d = true;
                    final int i11 = c2328n0.f6239c;
                    final Context applicationContext = c2328n0.requireContext().getApplicationContext();
                    c2328n0.f6244h.setVisibility(0);
                    c2328n0.f6243g.setVisibility(0);
                    c2328n0.f6243g.setText(R.string.fullscreen_apps_saving);
                    c2328n0.f6246j.notifyDataSetChanged();
                    AbstractC1434w.m2482c(-1, C2328n0.f6237k).execute(new Runnable() { // from class: m0.i0
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z10;
                            final boolean z11;
                            final String str;
                            final boolean z12;
                            final C2328n0 c2328n1 = c2328n0;
                            Context context = applicationContext;
                            final int i12 = i11;
                            C2313k0 c2313k1 = c2313k0;
                            boolean z13 = z9;
                            String str2 = C2328n0.f6237k;
                            String strM2237c = null;
                            try {
                                C1241a c1241aM1284n = AbstractC1031d.m1284n(context);
                                try {
                                    if (i12 == c2328n1.f6239c) {
                                        String strM2237c2 = AbstractC1244d.m2237c(new C0566h(19, c1241aM1284n));
                                        String strM4032B = AbstractC2587b.m4032B(strM2237c2, c2313k1.f6182a, z13);
                                        SharedPreferences sharedPreferences = context.getSharedPreferences(AbstractC1387m.m2421h(new byte[]{5, 15, 125, ByteCompanionObject.MAX_VALUE, -121, 50, 43, 121, 6, 20, 78, 114, -124, 33, 42}, new byte[]{99, 122, 17, 19, -12, 81, 89, 28}), 0);
                                        if (!sharedPreferences.contains(AbstractC1387m.m2421h(new byte[]{-19, 75, 70, -90, -104, 115, -1, 118, -35, 74, 78, -73, -108, 121}, new byte[]{-126, 57, 47, -63, -15, 29, -98, 26}))) {
                                            if (!sharedPreferences.edit().putBoolean(AbstractC1387m.m2421h(new byte[]{44, -39, -84, -127, 99, 43, 105, 99, 28, -40, -92, -112, 111, 33}, new byte[]{67, -85, -59, -26, 10, 69, 8, 15}), true).putBoolean(AbstractC1387m.m2421h(new byte[]{16, -102, -89, -87, 76, -60, -63, -15, 32, -119, -84, -67, 64, -60, -44}, new byte[]{ByteCompanionObject.MAX_VALUE, -24, -50, -50, 37, -86, -96, -99}), strM2237c2 == null).putString(AbstractC1387m.m2421h(new byte[]{-79, -105, -50, 71, 44, 88, 30, -101, -127, -107, -56, 76, 44, 85, 6}, new byte[]{-34, -27, -89, 32, 69, 54, ByteCompanionObject.MAX_VALUE, -9}), strM2237c2 == null ? "" : strM2237c2).commit()) {
                                                throw new IOException(AbstractC1387m.m2421h(new byte[]{63, 77, -110, 82, -41, -125, 32, -97, 28, 69, -99, 92, -58}, new byte[]{125, 44, -15, 57, -94, -13, 0, -7}));
                                            }
                                        }
                                        if (i12 == c2328n1.f6239c) {
                                            strM2237c = AbstractC1244d.m2238d(new C0566h(19, c1241aM1284n), strM2237c2, strM4032B);
                                            try {
                                                c1241aM1284n.close();
                                                z12 = true;
                                                z11 = true;
                                            } catch (Exception unused2) {
                                                z10 = true;
                                                try {
                                                    C1241a c1241aM1284n2 = AbstractC1031d.m1284n(context);
                                                    try {
                                                        strM2237c = AbstractC1244d.m2237c(new C0566h(19, c1241aM1284n2));
                                                        c1241aM1284n2.close();
                                                        z11 = z10;
                                                        z12 = true;
                                                    } catch (Throwable th) {
                                                        try {
                                                            c1241aM1284n2.close();
                                                            throw th;
                                                        } catch (Throwable th2) {
                                                            th.addSuppressed(th2);
                                                            throw th;
                                                        }
                                                    }
                                                } catch (Exception unused3) {
                                                    z11 = z10;
                                                    str = strM2237c;
                                                    z12 = false;
                                                }
                                            }
                                            str = strM2237c;
                                            c2328n1.f6238b.post(new Runnable() { // from class: m0.j0
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    String str3 = C2328n0.f6237k;
                                                    C2328n0 c2328n2 = c2328n1;
                                                    int i13 = i12;
                                                    if (c2328n2.m3708t(i13)) {
                                                        if (!z12) {
                                                            c2328n2.m3709u(i13);
                                                            return;
                                                        }
                                                        c2328n2.f6241e = str;
                                                        c2328n2.f6240d = false;
                                                        c2328n2.f6244h.setVisibility(8);
                                                        c2328n2.f6243g.setVisibility(z11 ? 8 : 0);
                                                        c2328n2.f6243g.setText(R.string.fullscreen_apps_save_error);
                                                        c2328n2.f6246j.notifyDataSetChanged();
                                                    }
                                                }
                                            });
                                            return;
                                        }
                                    }
                                    c1241aM1284n.close();
                                } catch (Throwable th3) {
                                    try {
                                        c1241aM1284n.close();
                                        throw th3;
                                    } catch (Throwable th4) {
                                        th3.addSuppressed(th4);
                                        throw th3;
                                    }
                                }
                            } catch (Exception unused4) {
                                z10 = false;
                            }
                        }
                    });
                    break;
                }
                break;
            case 2:
                C2342q1 c2342q1 = (C2342q1) this.f3196b;
                C3481o0 c3481o0 = (C3481o0) this.f3197c;
                if (c3481o0.f10180c != z9) {
                    c3481o0.f10180c = z9;
                    RunnableC1556j runnableC1556j = c2342q1.f6316d;
                    if (runnableC1556j != null) {
                        runnableC1556j.run();
                    }
                }
                break;
            case 3:
                C2567a c2567a = (C2567a) this.f3196b;
                EnumC2572f enumC2572f = (EnumC2572f) this.f3197c;
                c2567a.f7105b.f7131a.edit().putBoolean(AbstractC1387m.m2421h(new byte[]{88, -82, 126, -83, -32, 73, -66, 5}, new byte[]{Base64.padSymbol, -64, 31, -49, -116, 44, -38, 90}) + enumC2572f.name(), z9).apply();
                if (MyA11yService.f1454d != null) {
                    Handler handler = new Handler(Looper.getMainLooper());
                    C1252h c1252h2 = MyA11yService.f1454d;
                    Objects.requireNonNull(c1252h2);
                    handler.post(new RunnableC0014g(14, c1252h2));
                }
                break;
            case 4:
                C3549c c3549c = (C3549c) this.f3196b;
                C3559m c3559m = (C3559m) this.f3197c;
                c3549c.f10543k.put(c3559m.f10578a, Boolean.valueOf(z9));
                C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{77, -110, -43, 38, -50, -89, 33, 24, 87, -109, -58, 43, -29}, new byte[]{62, -25, -91, 67, -68, -8, 82, 111}) + c3549c.f10535c.f10594a + c3559m.f10578a, z9);
                c3549c.m5667m(AbstractC1920f.m3004b(c3549c.getContext(), z9 ? c3559m.f10581d : c3559m.f10582e));
                break;
            default:
                ((WidgetBuilderFragment) this.f3196b).lambda$library$4((C3561o) this.f3197c, compoundButton, z9);
                break;
        }
    }
}
