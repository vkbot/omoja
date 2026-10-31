package p005a4;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import androidx.appcompat.app.AlertDialog;
import androidx.constraintlayout.helper.widget.Carousel;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;
import androidx.fragment.app.C0566h;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.bumptech.glide.RunnableC1054m;
import com.example.navistart.LocServ;
import com.example.navistart.MainActivity;
import com.example.navistart.MyA11yService;
import com.example.navistart.MyCarReceiver;
import com.example.navistart.NLService;
import com.example.navistart.OverlayService;
import com.example.navistart.R;
import com.example.navistart.SpeedBoardActi;
import com.example.navistart.SystemMessageReceiver;
import com.example.navistart.TService;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.ZaglushkaActivity;
import com.example.navistart.boot;
import com.example.navistart.cores.ColorText;
import com.example.navistart.cores.InterC;
import com.example.navistart.punto;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import com.journeyapps.barcodescanner.BarcodeView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.p118io.encoding.Base64;
import p022b7.AbstractC0910f;
import p032c7.C0997a;
import p032c7.C0998b;
import p039d2.C1252h;
import p041d4.C1279m;
import p047e0.AbstractC1367i;
import p047e0.AbstractC1387m;
import p047e0.C1357g;
import p047e0.C1372j;
import p047e0.C1407q;
import p047e0.C1440x1;
import p047e0.C1445y2;
import p047e0.RunnableC1375j2;
import p051e4.C1471d;
import p051e4.C1479l;
import p058f1.C1532e;
import p078h0.C1652b;
import p142n0.EnumC2472g;
import p152o0.C2571e;
import p152o0.EnumC2572f;
import p184r5.C3105c;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: a4.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0014g implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f58b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f59c;

    public /* synthetic */ RunnableC0014g(int i10, Object obj) {
        this.f58b = i10;
        this.f59c = obj;
    }

    /* JADX WARN: Type inference failed for: r0v70, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference failed for: r2v34, types: [androidx.fragment.app.Fragment, v0.g] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList;
        SpannableStringBuilder spannableStringBuilder;
        int i10 = 3;
        switch (this.f58b) {
            case 0:
                C0015h c0015h = (C0015h) this.f59c;
                c0015h.f62c = false;
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) c0015h.f64e;
                ViewDragHelper viewDragHelper = sideSheetBehavior.f2411i;
                if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                    c0015h.m52a(c0015h.f61b);
                    return;
                } else {
                    if (sideSheetBehavior.f2410h == 2) {
                        sideSheetBehavior.m1825a(c0015h.f61b);
                        return;
                    }
                    return;
                }
            case 1:
                ((Carousel) this.f59c).lambda$updateItems$0();
                return;
            case 2:
                DefaultSpecialEffectsController.startTransitions$lambda$11((ArrayList) this.f59c);
                return;
            case 3:
                ((Fragment) this.f59c).lambda$performCreateView$0();
                return;
            case 4:
                ProcessLifecycleOwner.delayedPauseRunnable$lambda$0((ProcessLifecycleOwner) this.f59c);
                return;
            case 5:
                AbstractC0910f.m1045a((BarcodeView) ((C3105c) this.f59c).f8867c);
                return;
            case 6:
                C0998b c0998b = ((C0997a) this.f59c).f959a;
                c0998b.f962b = false;
                c0998b.m1201a();
                return;
            case 7:
                C1252h c1252h = (C1252h) this.f59c;
                c1252h.f2956e = new SpannableStringBuilder();
                synchronized (((LinkedList) c1252h.f2955d)) {
                    arrayList = new ArrayList((LinkedList) c1252h.f2955d);
                    break;
                }
                int size = arrayList.size();
                int i11 = 0;
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    i11++;
                    C1372j c1372j = (C1372j) obj;
                    String str = c1372j.f3275a;
                    ColorText colorText = c1372j.f3276b;
                    int length = ((SpannableStringBuilder) c1252h.f2956e).length();
                    ((SpannableStringBuilder) c1252h.f2956e).append((CharSequence) str).append((CharSequence) "\n");
                    int length2 = ((SpannableStringBuilder) c1252h.f2956e).length();
                    int i12 = AbstractC1367i.f3266a[colorText.ordinal()];
                    if (i12 == 1) {
                        ((SpannableStringBuilder) c1252h.f2956e).setSpan(new ForegroundColorSpan(ViewCompat.MEASURED_STATE_MASK), length, length2, 0);
                    } else if (i12 == 2) {
                        ((SpannableStringBuilder) c1252h.f2956e).setSpan(new ForegroundColorSpan(SupportMenu.CATEGORY_MASK), length, length2, 0);
                    } else if (i12 == 3) {
                        ((SpannableStringBuilder) c1252h.f2956e).setSpan(new ForegroundColorSpan(-16711936), length, length2, 0);
                    }
                }
                TestSpaceActivity testSpaceActivity = (TestSpaceActivity) c1252h.f2952a;
                if (testSpaceActivity != null && (spannableStringBuilder = (SpannableStringBuilder) c1252h.f2956e) != null) {
                    new Handler(Looper.getMainLooper()).post(new RunnableC1375j2(i10, testSpaceActivity, spannableStringBuilder));
                }
                ((AtomicBoolean) c1252h.f2953b).set(true);
                return;
            case 8:
                ((C1407q) this.f59c).m2449a();
                return;
            case 9:
                Location location = (Location) this.f59c;
                C0566h c0566h = LocServ.f1268h;
                try {
                    InterC interCM2755j = C1652b.m2734a().m2755j();
                    if (interCM2755j == null) {
                        return;
                    }
                    interCM2755j.m1636lo(location);
                    return;
                } catch (Exception unused) {
                    return;
                }
            case 10:
                AlertDialog alertDialog = (AlertDialog) this.f59c;
                String str2 = MainActivity.f1288e1;
                alertDialog.dismiss();
                return;
            case 11:
                MainActivity mainActivity = (MainActivity) ((C1279m) this.f59c).f3078b;
                String str3 = MainActivity.f1288e1;
                mainActivity.m1441N();
                AbstractC3656k.m5878x(mainActivity.getApplicationContext(), AbstractC1387m.m2421h(new byte[]{122, 116, 13, -106, -39, -45, -126, 63, 122, 86, 12, -96, -39, -46, 115, 111, 24, 54, 102, -51, -78, -78, -29, 111, 30, 54, 102, -51, -71, 88, 115}, new byte[]{-86, -26, -36, 29, 9, 98, 83, -65}) + mainActivity.m1429A());
                return;
            case 12:
                EnumC2472g enumC2472g = (EnumC2472g) this.f59c;
                if (C1440x1.f3471r == null) {
                    C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{125, -1, -83, -89, -19, 50, -104, -40, 68, -24, -90, -94, -32, 20, -123, -106, 29, -70, -121, -101, -64, Base64.padSymbol}, new byte[]{48, -102, -55, -50, -116, 113, -9, -74}), ColorText.RED);
                    return;
                }
                C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{-68, 125, -72, -11, -99, 82, -68, -52, -123, 106, -77, -16, -112, 116, -95, -126, -36, 56}, new byte[]{-15, 24, -36, -100, -4, 17, -45, -94}) + C1440x1.f3471r.getPackageName() + AbstractC1387m.m2421h(new byte[]{-46, -32, -100}, new byte[]{-14, -51, -68, 101, -72, -42, -75, 112}) + enumC2472g.name(), ColorText.RED);
                int iOrdinal = enumC2472g.ordinal();
                if (iOrdinal == 0) {
                    C1440x1.f3471r.getTransportControls().play();
                    return;
                }
                if (iOrdinal == 1) {
                    C1440x1.f3471r.getTransportControls().pause();
                    return;
                } else if (iOrdinal == 2) {
                    C1440x1.f3471r.getTransportControls().skipToNext();
                    return;
                } else {
                    if (iOrdinal != 3) {
                        return;
                    }
                    C1440x1.f3471r.getTransportControls().skipToPrevious();
                    return;
                }
            case 13:
                MyA11yService myA11yService = (MyA11yService) this.f59c;
                if (MyA11yService.f1454d == null) {
                    C1357g c1357g = new C1357g(6);
                    C1252h c1252h2 = new C1252h();
                    c1252h2.f2957f = new HashMap();
                    c1252h2.f2956e = new HashSet();
                    c1252h2.f2952a = new WeakReference(myA11yService);
                    c1252h2.f2955d = c1357g;
                    c1252h2.f2954c = new C2571e(myA11yService);
                    c1252h2.f2953b = (WindowManager) myA11yService.getSystemService(AbstractC1387m.m2421h(new byte[]{54, 69, 15, -115, -72, -104}, new byte[]{65, 44, 97, -23, -41, -17, 3, 10}));
                    MyA11yService.f1454d = c1252h2;
                    Handler handler = new Handler(Looper.getMainLooper());
                    C1252h c1252h3 = MyA11yService.f1454d;
                    Objects.requireNonNull(c1252h3);
                    handler.post(new RunnableC0014g(14, c1252h3));
                }
                new SystemMessageReceiver().onReceive(myA11yService.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{-39, -91, 83, 114, -92, -120, -36, -86, -47, -91, 67, 101, -91, -107, -106, -27, -37, -65, 94, 111, -91, -49, -6, -53, -9, -97, 104, 67, -124, -84, -24, -56, -3, -97, 114, 68}, new byte[]{-72, -53, 55, 0, -53, -31, -72, -124})));
                try {
                    C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{80, 111, 122, 77, -66, -119, 112, -31, 120, 96, 112, 92, -76, -87, 124, -15, 103, 101, 122, 77, -19, -41, 57, -52, 95}, new byte[]{17, 12, 25, 40, -51, -6, 25, -125}));
                    return;
                } catch (Exception unused2) {
                    return;
                }
            case 14:
                C1252h c1252h4 = (C1252h) this.f59c;
                c1252h4.m2251m();
                HashSet hashSet = (HashSet) c1252h4.f2956e;
                hashSet.clear();
                C2571e c2571e = (C2571e) c1252h4.f2954c;
                c2571e.getClass();
                ArrayList arrayList2 = new ArrayList();
                for (EnumC2572f enumC2572f : EnumC2572f.values()) {
                    if (c2571e.m4003a(enumC2572f)) {
                        arrayList2.add(enumC2572f);
                    }
                }
                hashSet.addAll(arrayList2);
                Context context = (Context) ((WeakReference) c1252h4.f2952a).get();
                if (context == null) {
                    return;
                }
                int iMax = Math.max(1, Math.round(32.0f * context.getResources().getDisplayMetrics().density));
                WindowManager windowManager = (WindowManager) c1252h4.f2953b;
                DisplayMetrics displayMetrics = new DisplayMetrics();
                try {
                    try {
                        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
                    } catch (Exception unused3) {
                        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                    }
                    break;
                } catch (Exception unused4) {
                }
                if (displayMetrics.widthPixels <= 0 || displayMetrics.heightPixels <= 0) {
                    displayMetrics = context.getResources().getDisplayMetrics();
                }
                int i13 = displayMetrics.widthPixels;
                int i14 = displayMetrics.heightPixels;
                EnumC2572f enumC2572f2 = EnumC2572f.f7132b;
                if (hashSet.contains(enumC2572f2)) {
                    c1252h4.m2249k(enumC2572f2, 0, 0, iMax, i14 / 2);
                }
                EnumC2572f enumC2572f3 = EnumC2572f.f7133c;
                if (hashSet.contains(enumC2572f3)) {
                    int i15 = i14 / 2;
                    c1252h4.m2249k(enumC2572f3, 0, i15, iMax, i15);
                }
                EnumC2572f enumC2572f4 = EnumC2572f.f7134d;
                if (hashSet.contains(enumC2572f4)) {
                    c1252h4.m2249k(enumC2572f4, i13 - iMax, 0, iMax, i14 / 2);
                }
                EnumC2572f enumC2572f5 = EnumC2572f.f7135e;
                if (hashSet.contains(enumC2572f5)) {
                    int i16 = i14 / 2;
                    c1252h4.m2249k(enumC2572f5, i13 - iMax, i16, iMax, i16);
                }
                int i17 = i14 - iMax;
                int i18 = i13 - (iMax * 2);
                int i19 = i18 / 2;
                int i20 = i18 - i19;
                if (i18 > 0) {
                    EnumC2572f enumC2572f6 = EnumC2572f.f7136f;
                    if (hashSet.contains(enumC2572f6)) {
                        c1252h4.m2249k(enumC2572f6, iMax, i17, i19, iMax);
                    }
                    EnumC2572f enumC2572f7 = EnumC2572f.f7137g;
                    if (hashSet.contains(enumC2572f7)) {
                        c1252h4.m2249k(enumC2572f7, iMax + i19, i17, i20, iMax);
                        return;
                    }
                    return;
                }
                return;
            case 15:
                MyCarReceiver myCarReceiver = (MyCarReceiver) this.f59c;
                try {
                    if (MyCarReceiver.m1493k().booleanValue()) {
                        C1652b.m2734a();
                        C1652b.m2738g().mo3014d().mo1147i(myCarReceiver.f1481b);
                        return;
                    }
                    return;
                } catch (Exception unused5) {
                    return;
                }
            case 16:
                NLService nLService = (NLService) this.f59c;
                ScheduledExecutorService scheduledExecutorService = NLService.f1482e;
                if (boot.f1709u) {
                    return;
                }
                Log.e(nLService.f1485d, AbstractC1387m.m2421h(new byte[]{-15, 26, -58, -107}, new byte[]{-77, 85, -119, -63, -72, 45, -79, -2}));
                new SystemMessageReceiver().onReceive(nLService.getApplicationContext(), new Intent(AbstractC1387m.m2421h(new byte[]{-38, 89, 76, -119, 46, -28, 72, -126, -46, 89, 92, -98, 47, -7, 2, -51, -40, 67, 65, -108, 47, -93, 110, -29, -12, 99, 119, -72, 14, -64, 124, -32, -2, 99, 109, -65}, new byte[]{-69, 55, 40, -5, 65, -115, 44, -84})));
                return;
            case 17:
                OverlayService overlayService = (OverlayService) this.f59c;
                OverlayService overlayService2 = OverlayService.f1499f;
                overlayService.m1515d();
                return;
            case 18:
                SpeedBoardActi speedBoardActi = (SpeedBoardActi) this.f59c;
                int i21 = SpeedBoardActi.f1605f;
                if (!C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-64, 9, -36, 75, -92, -66, 10, 115, -31, 29, -8, 77, -76, -107, 54, 119, -25, 13, -48, 64, -89, -113, 58, 85, -61, 42}, new byte[]{-109, 121, -71, 46, -64, -4, 101, 18}), false)) {
                    C1652b.m2734a();
                    int speed = C1652b.m2736d().getSpeed();
                    ?? r9 = speedBoardActi.f1609e;
                    if (r9 != 0) {
                        r9.mo925d(speed);
                    }
                }
                C1652b.m2734a();
                int rpm = C1652b.m2736d().getRPM();
                ?? r1 = speedBoardActi.f1609e;
                if (r1 != 0) {
                    r1.mo930l(rpm);
                    return;
                }
                return;
            case 19:
                SystemMessageReceiver systemMessageReceiver = (SystemMessageReceiver) this.f59c;
                systemMessageReceiver.f1636a.execute(systemMessageReceiver.f1639d);
                return;
            case 20:
                Boolean bool = (Boolean) this.f59c;
                C1252h c1252h5 = TService.f1640c;
                if (bool.booleanValue()) {
                    TService.f1642e.setBackgroundResource(R.drawable.vpn_on);
                    return;
                } else {
                    TService.f1642e.setBackgroundResource(R.drawable.vpn_off);
                    return;
                }
            case 21:
                ((TestSpaceActivity) this.f59c).f1647c.fullScroll(130);
                return;
            case 22:
                ((C1445y2) this.f59c).f3500b = true;
                return;
            case 23:
                ZaglushkaActivity zaglushkaActivity = (ZaglushkaActivity) this.f59c;
                int i22 = ZaglushkaActivity.f1708b;
                zaglushkaActivity.finish();
                return;
            case 24:
                punto puntoVar = (punto) this.f59c;
                if (!puntoVar.f1873b || puntoVar.isFinishing() || puntoVar.isDestroyed()) {
                    return;
                }
                puntoVar.f1882k.requestRectangleOnScreen(new Rect(0, 0, puntoVar.f1882k.getWidth(), puntoVar.f1882k.getHeight()), false);
                return;
            case 25:
                ((C1471d) this.f59c).m2530s(true);
                return;
            case 26:
                C1479l c1479l = (C1479l) this.f59c;
                boolean zIsPopupShowing = c1479l.f3584h.isPopupShowing();
                c1479l.m2539s(zIsPopupShowing);
                c1479l.f3589m = zIsPopupShowing;
                return;
            case 27:
                ((TextInputLayout) this.f59c).f2522f.requestLayout();
                return;
            case 28:
                C1532e c1532e = (C1532e) this.f59c;
                int i23 = C1532e.f3757q;
                c1532e.m2620Q(false);
                return;
            default:
                RunnableC1054m runnableC1054m = (RunnableC1054m) this.f59c;
                ((C1532e) runnableC1054m.f1148c).f3766b.post(new RunnableC1375j2(7, runnableC1054m, C1532e.m2610v(AbstractC1387m.m2421h(new byte[]{95, 13, 28, -16, 14, 86, -61, -125, 91, 4, 1, -62, 28, 86, -57, -88, 89}, new byte[]{60, 97, 117, -99, 111, 34, -90, -36}), null)));
                return;
        }
    }
}
