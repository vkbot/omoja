package p039d2;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.SpannableStringBuilder;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.WindowManager;
import com.example.navistart.MyA11yService;
import com.example.navistart.R;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.VJCT;
import com.example.navistart.cores.ColorText;
import com.google.protobuf.AbstractC1178q;
import com.wireguard.android.backend.GoBackend;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.net.ftp.C2930a;
import p000a.AbstractC0000a;
import p005a4.RunnableC0014g;
import p020b5.InterfaceC0902a;
import p039d2.C1252h;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.C1357g;
import p047e0.C1372j;
import p062f5.C1541b0;
import p064f7.C1586c;
import p078h0.C1652b;
import p099j1.C1929i;
import p114k5.InterfaceC2050b;
import p152o0.C2570d;
import p152o0.EnumC2572f;
import p184r5.C3105c;
import p200t4.C3253n;
import p200t4.C3255p;
import p200t4.C3256q;
import p200t4.InterfaceC3241b;

/* JADX INFO: renamed from: d2.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1252h implements InterfaceC3241b {

    /* JADX INFO: renamed from: a */
    public Object f2952a;

    /* JADX INFO: renamed from: b */
    public Object f2953b = new AtomicBoolean(true);

    /* JADX INFO: renamed from: c */
    public Object f2954c = new SimpleDateFormat(AbstractC1387m.m2421h(new byte[]{-23, 57, 38, -88, 116, 16, -126, 71}, new byte[]{-95, 113, 28, -59, 25, 42, -15, 52}), Locale.getDefault());

    /* JADX INFO: renamed from: d */
    public Object f2955d = new LinkedList();

    /* JADX INFO: renamed from: e */
    public Object f2956e = new SpannableStringBuilder();

    /* JADX INFO: renamed from: f */
    public Object f2957f = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{116, 51, Base64.padSymbol, 86, 54, -123, -85, 27, 71}, new byte[]{53, 67, 77, 26, 89, -30, -52, 126}));

    @Override // p200t4.InterfaceC3241b
    /* JADX INFO: renamed from: a */
    public C3253n mo2239a(C3255p c3255p) {
        if (((Set) this.f2954c).contains(c3255p)) {
            return ((InterfaceC3241b) this.f2957f).mo2239a(c3255p);
        }
        C2930a.m4662d(c3255p, "Attempting to request an undeclared dependency Deferred<", ">.");
        return null;
    }

    @Override // p200t4.InterfaceC3241b
    /* JADX INFO: renamed from: b */
    public Object mo2240b(Class cls) {
        if (!((Set) this.f2952a).contains(C3255p.m5189a(cls))) {
            C2930a.m4662d(cls, "Attempting to request an undeclared dependency ", ".");
            return null;
        }
        Object objMo2240b = ((InterfaceC3241b) this.f2957f).mo2240b(cls);
        if (!cls.equals(InterfaceC0902a.class)) {
            return objMo2240b;
        }
        return new C3256q();
    }

    @Override // p200t4.InterfaceC3241b
    /* JADX INFO: renamed from: c */
    public InterfaceC2050b mo2241c(Class cls) {
        return mo2245g(C3255p.m5189a(cls));
    }

    @Override // p200t4.InterfaceC3241b
    /* JADX INFO: renamed from: d */
    public C3253n mo2242d() {
        return mo2239a(C3255p.m5189a(C1541b0.class));
    }

    @Override // p200t4.InterfaceC3241b
    /* JADX INFO: renamed from: e */
    public Set mo2243e(C3255p c3255p) {
        if (((Set) this.f2955d).contains(c3255p)) {
            return ((InterfaceC3241b) this.f2957f).mo2243e(c3255p);
        }
        C2930a.m4662d(c3255p, "Attempting to request an undeclared dependency Set<", ">.");
        return null;
    }

    @Override // p200t4.InterfaceC3241b
    /* JADX INFO: renamed from: f */
    public InterfaceC2050b mo2244f(C3255p c3255p) {
        if (((Set) this.f2956e).contains(c3255p)) {
            return ((InterfaceC3241b) this.f2957f).mo2244f(c3255p);
        }
        C2930a.m4662d(c3255p, "Attempting to request an undeclared dependency Provider<Set<", ">>.");
        return null;
    }

    @Override // p200t4.InterfaceC3241b
    /* JADX INFO: renamed from: g */
    public InterfaceC2050b mo2245g(C3255p c3255p) {
        if (((Set) this.f2953b).contains(c3255p)) {
            return ((InterfaceC3241b) this.f2957f).mo2245g(c3255p);
        }
        C2930a.m4662d(c3255p, "Attempting to request an undeclared dependency Provider<", ">.");
        return null;
    }

    @Override // p200t4.InterfaceC3241b
    /* JADX INFO: renamed from: h */
    public Object mo2246h(C3255p c3255p) {
        if (((Set) this.f2952a).contains(c3255p)) {
            return ((InterfaceC3241b) this.f2957f).mo2246h(c3255p);
        }
        C2930a.m4662d(c3255p, "Attempting to request an undeclared dependency ", ".");
        return null;
    }

    /* JADX INFO: renamed from: i */
    public void m2247i() {
        ScheduledFuture scheduledFuture = (ScheduledFuture) this.f2953b;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        ((ScheduledFuture) this.f2953b).cancel(true);
    }

    /* JADX INFO: renamed from: j */
    public void m2248j(String str, String str2) {
        HashMap map = (HashMap) this.f2957f;
        if (map != null) {
            map.put(str, str2);
        } else {
            C1929i.m3030l("Property \"autoMetadata\" has not been set");
        }
    }

    /* JADX INFO: renamed from: k */
    public void m2249k(final EnumC2572f enumC2572f, int i10, int i11, int i12, int i13) {
        WindowManager windowManager = (WindowManager) this.f2953b;
        HashMap map = (HashMap) this.f2957f;
        if (i12 <= 0 || i13 <= 0) {
            return;
        }
        int iMax = Math.max(0, i10);
        int iMax2 = Math.max(0, i11);
        if (map.containsKey(enumC2572f)) {
            try {
                AbstractC0000a.m21v(windowManager, (View) map.get(enumC2572f));
                View view = (View) map.get(enumC2572f);
                Objects.requireNonNull(view);
                view.requestLayout();
                View view2 = (View) map.get(enumC2572f);
                Objects.requireNonNull(view2);
                view2.invalidate();
            } catch (Exception unused) {
            }
        }
        final C2570d c2570d = new C2570d((Context) ((WeakReference) this.f2952a).get(), enumC2572f);
        c2570d.setBackgroundColor(0);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(i12, i13, 2032, 552, -3);
        layoutParams.x = iMax;
        layoutParams.y = iMax2;
        layoutParams.gravity = 8388659;
        final float[] fArr = new float[1];
        final float[] fArr2 = new float[1];
        final float[] fArr3 = new float[1];
        final VelocityTracker[] velocityTrackerArr = new VelocityTracker[1];
        c2570d.setOnTouchListener(new View.OnTouchListener() { // from class: o0.b
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view3, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                float[] fArr4 = fArr;
                float[] fArr5 = fArr2;
                float[] fArr6 = fArr3;
                VelocityTracker[] velocityTrackerArr2 = velocityTrackerArr;
                C2570d c2570d2 = c2570d;
                if (actionMasked == 0) {
                    fArr4[0] = motionEvent.getRawX();
                    fArr5[0] = motionEvent.getRawY();
                    fArr6[0] = 0.0f;
                    VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
                    velocityTrackerArr2[0] = velocityTrackerObtain;
                    velocityTrackerObtain.addMovement(motionEvent);
                    c2570d2.m4002d(motionEvent.getX(), motionEvent.getY(), 0.0f, 0.0f, 0.0f);
                    return true;
                }
                if (actionMasked == 1) {
                    VelocityTracker velocityTracker = velocityTrackerArr2[0];
                    if (velocityTracker != null) {
                        velocityTracker.addMovement(motionEvent);
                        velocityTrackerArr2[0].computeCurrentVelocity(1000);
                        float rawX = motionEvent.getRawX() - fArr4[0];
                        float rawY = motionEvent.getRawY() - fArr5[0];
                        VelocityTracker velocityTracker2 = velocityTrackerArr2[0];
                        if (velocityTracker2 != null) {
                            velocityTracker2.recycle();
                            velocityTrackerArr2[0] = null;
                        }
                        if (fArr6[0] > 90.0f) {
                            if (Math.abs(rawX) > Math.abs(rawY)) {
                                int i14 = (rawX > 0.0f ? 1 : (rawX == 0.0f ? 0 : -1));
                                EnumC2569c[] enumC2569cArr = EnumC2569c.f7113b;
                            } else {
                                int i15 = (rawY > 0.0f ? 1 : (rawY == 0.0f ? 0 : -1));
                                EnumC2569c[] enumC2569cArr2 = EnumC2569c.f7113b;
                            }
                            C1252h c1252h = this.f7106b;
                            SharedPreferences sharedPreferences = ((C2571e) c1252h.f2954c).f7131a;
                            StringBuilder sb = new StringBuilder();
                            sb.append(AbstractC1387m.m2421h(new byte[]{-12, -40, 19, -46, -95, -116, 107}, new byte[]{-107, -69, 103, -69, -50, -30, 52, -51}));
                            EnumC2572f enumC2572f2 = enumC2572f;
                            sb.append(enumC2572f2.name());
                            sharedPreferences.getInt(sb.toString(), 0);
                            if (((C1357g) c1252h.f2955d) != null) {
                                MyA11yService myA11yService = MyA11yService.f1453c;
                                try {
                                    C1652b.m2734a();
                                    C1652b.m2734a();
                                    C1652b.m2737f().m2995k(AbstractC1387m.m2421h(new byte[]{97, 56, 30, 103, 35, 46, -92, 46, 73, 51, 8, 94, 55, 50, -96, 19, 67, 47}, new byte[]{38, 93, 109, 19, 86, 92, -63, 116}) + enumC2572f2.name());
                                } catch (Exception unused2) {
                                }
                            }
                        }
                        c2570d2.m4001c();
                    }
                } else if (actionMasked == 2) {
                    VelocityTracker velocityTracker3 = velocityTrackerArr2[0];
                    if (velocityTracker3 != null) {
                        velocityTracker3.addMovement(motionEvent);
                        float rawX2 = motionEvent.getRawX() - fArr4[0];
                        float rawY2 = motionEvent.getRawY() - fArr5[0];
                        float fSqrt = (float) Math.sqrt((rawY2 * rawY2) + (rawX2 * rawX2));
                        fArr6[0] = fSqrt;
                        float fMin = Math.min(fSqrt, 500.0f);
                        fArr6[0] = fMin;
                        c2570d2.m4002d(motionEvent.getX(), motionEvent.getY(), rawX2, rawY2, Math.min(1.0f, fMin / 500.0f));
                        return true;
                    }
                } else if (actionMasked == 3) {
                    VelocityTracker velocityTracker4 = velocityTrackerArr2[0];
                    if (velocityTracker4 != null) {
                        velocityTracker4.recycle();
                        velocityTrackerArr2[0] = null;
                    }
                    c2570d2.m4001c();
                    return true;
                }
                return true;
            }
        });
        windowManager.addView(c2570d, layoutParams);
        map.put(enumC2572f, c2570d);
    }

    /* JADX INFO: renamed from: l */
    public C1253i m2250l() {
        String strConcat = ((String) this.f2952a) == null ? " transportName" : "";
        if (((C1256l) this.f2954c) == null) {
            strConcat = strConcat.concat(" encodedPayload");
        }
        if (((Long) this.f2955d) == null) {
            strConcat = strConcat.concat(" eventMillis");
        }
        if (((Long) this.f2956e) == null) {
            strConcat = strConcat.concat(" uptimeMillis");
        }
        if (((HashMap) this.f2957f) == null) {
            strConcat = strConcat.concat(" autoMetadata");
        }
        if (strConcat.isEmpty()) {
            return new C1253i((String) this.f2952a, (Integer) this.f2953b, (C1256l) this.f2954c, ((Long) this.f2955d).longValue(), ((Long) this.f2956e).longValue(), (HashMap) this.f2957f);
        }
        C1929i.m3030l("Missing required properties:".concat(strConcat));
        return null;
    }

    /* JADX INFO: renamed from: m */
    public void m2251m() {
        HashMap map = (HashMap) this.f2957f;
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            View view = (View) ((Map.Entry) it.next()).getValue();
            if (view != null) {
                AbstractC0000a.m21v((WindowManager) this.f2953b, view);
            }
        }
        map.clear();
    }

    /* JADX INFO: renamed from: n */
    public C1586c m2252n() {
        File file = new File(((Context) this.f2954c).getFilesDir(), AbstractC1387m.m2421h(new byte[]{-91, -86, 70, 89, -102, -6, -86, -77, -99, -125, ByteCompanionObject.MAX_VALUE}, new byte[]{-14, -19, 25, 15, -54, -76, -124, -48}));
        if (!file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            bufferedReader.close();
                            fileInputStream.close();
                            try {
                                FileInputStream fileInputStream2 = new FileInputStream(file);
                                try {
                                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(fileInputStream2));
                                    try {
                                        C1586c c1586cM2670a = C1586c.m2670a(bufferedReader2);
                                        bufferedReader2.close();
                                        fileInputStream2.close();
                                        return c1586cM2670a;
                                    } catch (Throwable th) {
                                        try {
                                            bufferedReader2.close();
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    try {
                                        fileInputStream2.close();
                                    } catch (Throwable th4) {
                                        th3.addSuppressed(th4);
                                    }
                                    throw th3;
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                return null;
                            }
                        }
                        if (line.startsWith(AbstractC1387m.m2421h(new byte[]{126, -57, -66, -46, -73, 65, 101, -37, 27, -108}, new byte[]{59, -87, -38, -94, -40, 40, 11, -81}))) {
                            String[] strArrSplit = line.split(AbstractC1387m.m2421h(new byte[]{126}, new byte[]{67, -56, 7, -39, 43, -39, -121, -39}));
                            if (strArrSplit.length > 1) {
                                String[] strArrSplit2 = strArrSplit[1].trim().split(AbstractC1387m.m2421h(new byte[]{-111}, new byte[]{-85, 123, 117, -116, -7, 55, 38, -117}));
                                if (strArrSplit2.length == 2) {
                                    String str = strArrSplit2[0];
                                    Integer.parseInt(strArrSplit2[1]);
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        }
                    } catch (Throwable th5) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                    try {
                        fileInputStream.close();
                    } catch (Throwable th7) {
                        th.addSuppressed(th7);
                    }
                    throw th;
                }
            } catch (Throwable th8) {
                fileInputStream.close();
                throw th8;
            }
        } catch (Exception e6) {
            e6.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: renamed from: o */
    public void m2253o() {
        if (((TestSpaceActivity) this.f2952a) == null || !((AtomicBoolean) this.f2953b).compareAndSet(true, false)) {
            return;
        }
        ((ScheduledThreadPoolExecutor) this.f2957f).schedule(new RunnableC0014g(7, this), 300L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: p */
    public void m2254p(String str, ColorText colorText) {
        String str2 = ((SimpleDateFormat) this.f2954c).format(new Date());
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2087u(new byte[]{31}, new byte[]{68, -86, 66, -121, -121, -14, -59, -14}, sb, str2);
        String strM2078l = AbstractC1178q.m2078l(new byte[]{88, 99}, new byte[]{5, 67, 110, -17, 126, -99, 12, 101}, sb, str);
        Log.e(AbstractC1387m.m2421h(new byte[]{13, 3, 18, -119, -5, 85, -17}, new byte[]{76, 115, 98, -59, -108, 50, -100, 110}), strM2078l);
        synchronized (((LinkedList) this.f2955d)) {
            try {
                LinkedList linkedList = (LinkedList) this.f2955d;
                C1372j c1372j = new C1372j();
                c1372j.f3275a = strM2078l;
                c1372j.f3276b = colorText;
                linkedList.add(c1372j);
                if (((LinkedList) this.f2955d).size() > 500) {
                    ((LinkedList) this.f2955d).removeFirst();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        m2253o();
    }

    /* JADX INFO: renamed from: q */
    public void m2255q() {
        Context context = (Context) this.f2954c;
        try {
            C1586c c1586cM2252n = m2252n();
            this.f2956e = c1586cM2252n;
            if (c1586cM2252n == null) {
                VJCT.m1604u(context.getResources().getString(R.string.vpn_down_conf));
                return;
            }
            this.f2955d = new GoBackend(context);
            this.f2957f = new C3105c(27, this);
            VJCT.m1604u(context.getResources().getString(R.string.vpn_down_conf_done));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
