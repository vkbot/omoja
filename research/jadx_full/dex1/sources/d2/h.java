package d2;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.util.Log;
import android.view.VelocityTracker;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager$LayoutParams;
import com.example.navistart.TestSpaceActivity;
import com.example.navistart.VJCT;
import com.example.navistart.cores.ColorText;
import com.wireguard.android.backend.GoBackend;
import e0.w;
import f5.b0;
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
import java.util.Map$Entry;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements t4.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f1677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f1678b = new AtomicBoolean(true);
    public Object c = new SimpleDateFormat(e0.m.h(new byte[]{-23, 57, 38, -88, 116, 16, -126, 71}, new byte[]{-95, 113, 28, -59, 25, 42, -15, 52}), Locale.getDefault());
    public Object d = new LinkedList();
    public Object e = new SpannableStringBuilder();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f1679f = w.c(-1, e0.m.h(new byte[]{116, 51, Base64.padSymbol, 86, 54, -123, -85, 27, 71}, new byte[]{53, 67, 77, 26, 89, -30, -52, 126}));

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.b
    public t4.n a(t4.p pVar) {
        if (((Set) this.c).contains(pVar)) {
            return ((t4.b) this.f1679f).a(pVar);
        }
        org.apache.commons.net.ftp.a.d(pVar, "Attempting to request an undeclared dependency Deferred<", ">.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.b
    public Object b(Class cls) {
        if (!((Set) this.f1677a).contains(t4.p.a(cls))) {
            org.apache.commons.net.ftp.a.d(cls, "Attempting to request an undeclared dependency ", ".");
            return null;
        }
        Object objB = ((t4.b) this.f1679f).b(cls);
        if (!cls.equals(b5.a.class)) {
            return objB;
        }
        return new t4.q();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.b
    public k5.b c(Class cls) {
        return g(t4.p.a(cls));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.b
    public t4.n d() {
        return a(t4.p.a(b0.class));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.b
    public Set e(t4.p pVar) {
        if (((Set) this.d).contains(pVar)) {
            return ((t4.b) this.f1679f).e(pVar);
        }
        org.apache.commons.net.ftp.a.d(pVar, "Attempting to request an undeclared dependency Set<", ">.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.b
    public k5.b f(t4.p pVar) {
        if (((Set) this.e).contains(pVar)) {
            return ((t4.b) this.f1679f).f(pVar);
        }
        org.apache.commons.net.ftp.a.d(pVar, "Attempting to request an undeclared dependency Provider<Set<", ">>.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.b
    public k5.b g(t4.p pVar) {
        if (((Set) this.f1678b).contains(pVar)) {
            return ((t4.b) this.f1679f).g(pVar);
        }
        org.apache.commons.net.ftp.a.d(pVar, "Attempting to request an undeclared dependency Provider<", ">.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.b
    public Object h(t4.p pVar) {
        if (((Set) this.f1677a).contains(pVar)) {
            return ((t4.b) this.f1679f).h(pVar);
        }
        org.apache.commons.net.ftp.a.d(pVar, "Attempting to request an undeclared dependency ", ".");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void i() {
        ScheduledFuture scheduledFuture = (ScheduledFuture) this.f1678b;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        ((ScheduledFuture) this.f1678b).cancel(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void j(String str, String str2) {
        HashMap map = (HashMap) this.f1679f;
        if (map != null) {
            map.put(str, str2);
        } else {
            j1.i.l("Property \"autoMetadata\" has not been set");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void k(o0.f fVar, int i9, int i10, int i11, int i12) {
        WindowManager windowManager = (WindowManager) this.f1678b;
        HashMap map = (HashMap) this.f1679f;
        if (i11 <= 0 || i12 <= 0) {
            return;
        }
        int iMax = Math.max(0, i9);
        int iMax2 = Math.max(0, i10);
        if (map.containsKey(fVar)) {
            try {
                a.a.v(windowManager, (View) map.get(fVar));
                View view = (View) map.get(fVar);
                Objects.requireNonNull(view);
                view.requestLayout();
                View view2 = (View) map.get(fVar);
                Objects.requireNonNull(view2);
                view2.invalidate();
            } catch (Exception unused) {
            }
        }
        o0.d dVar = new o0.d((Context) ((WeakReference) this.f1677a).get(), fVar);
        dVar.setBackgroundColor(0);
        WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams(i11, i12, 2032, 552, -3);
        windowManager$LayoutParams.x = iMax;
        windowManager$LayoutParams.y = iMax2;
        windowManager$LayoutParams.gravity = 8388659;
        dVar.setOnTouchListener(new o0.b(this, new float[1], new float[1], new float[1], new VelocityTracker[1], dVar, fVar));
        windowManager.addView(dVar, windowManager$LayoutParams);
        map.put(fVar, dVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i l() {
        String strConcat = ((String) this.f1677a) == null ? " transportName" : "";
        if (((l) this.c) == null) {
            strConcat = strConcat.concat(" encodedPayload");
        }
        if (((Long) this.d) == null) {
            strConcat = strConcat.concat(" eventMillis");
        }
        if (((Long) this.e) == null) {
            strConcat = strConcat.concat(" uptimeMillis");
        }
        if (((HashMap) this.f1679f) == null) {
            strConcat = strConcat.concat(" autoMetadata");
        }
        if (strConcat.isEmpty()) {
            return new i((String) this.f1677a, (Integer) this.f1678b, (l) this.c, ((Long) this.d).longValue(), ((Long) this.e).longValue(), (HashMap) this.f1679f);
        }
        j1.i.l("Missing required properties:".concat(strConcat));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void m() {
        HashMap map = (HashMap) this.f1679f;
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            View view = (View) ((Map$Entry) it.next()).getValue();
            if (view != null) {
                a.a.v((WindowManager) this.f1678b, view);
            }
        }
        map.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f7.c n() {
        File file = new File(((Context) this.c).getFilesDir(), e0.m.h(new byte[]{-91, -86, 70, 89, -102, -6, -86, -77, -99, -125, ByteCompanionObject.MAX_VALUE}, new byte[]{-14, -19, 25, 15, -54, -76, -124, -48}));
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
                                        f7.c cVarA = f7.c.a(bufferedReader2);
                                        bufferedReader2.close();
                                        fileInputStream2.close();
                                        return cVarA;
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
                        if (line.startsWith(e0.m.h(new byte[]{126, -57, -66, -46, -73, 65, 101, -37, 27, -108}, new byte[]{59, -87, -38, -94, -40, 40, 11, -81}))) {
                            String[] strArrSplit = line.split(e0.m.h(new byte[]{126}, new byte[]{67, -56, 7, -39, 43, -39, -121, -39}));
                            if (strArrSplit.length > 1) {
                                String[] strArrSplit2 = strArrSplit[1].trim().split(e0.m.h(new byte[]{-111}, new byte[]{-85, 123, 117, -116, -7, 55, 38, -117}));
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void o() {
        if (((TestSpaceActivity) this.f1677a) == null || !((AtomicBoolean) this.f1678b).compareAndSet(true, false)) {
            return;
        }
        ((ScheduledThreadPoolExecutor) this.f1679f).schedule(new a4.g(7, this), 300L, TimeUnit.MILLISECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void p(String str, ColorText colorText) {
        String str2 = ((SimpleDateFormat) this.c).format(new Date());
        StringBuilder sb = new StringBuilder();
        com.google.protobuf.q.u(new byte[]{31}, new byte[]{68, -86, 66, -121, -121, -14, -59, -14}, sb, str2);
        String strL = com.google.protobuf.q.l(new byte[]{88, 99}, new byte[]{5, 67, 110, -17, 126, -99, 12, 101}, sb, str);
        Log.e(e0.m.h(new byte[]{13, 3, 18, -119, -5, 85, -17}, new byte[]{76, 115, 98, -59, -108, 50, -100, 110}), strL);
        synchronized (((LinkedList) this.d)) {
            try {
                LinkedList linkedList = (LinkedList) this.d;
                e0.j jVar = new e0.j();
                jVar.f1866a = strL;
                jVar.f1867b = colorText;
                linkedList.add(jVar);
                if (((LinkedList) this.d).size() > 500) {
                    ((LinkedList) this.d).removeFirst();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        o();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void q() {
        Context context = (Context) this.c;
        try {
            f7.c cVarN = n();
            this.e = cVarN;
            if (cVarN == null) {
                VJCT.u(context.getResources().getString(2131952852));
                return;
            }
            this.d = new GoBackend(context);
            this.f1679f = new r5.c(27, this);
            VJCT.u(context.getResources().getString(2131952853));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
