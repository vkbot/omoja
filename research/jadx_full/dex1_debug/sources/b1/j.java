package b1;

import android.content.DialogInterface$OnClickListener;
import android.graphics.Typeface;
import android.os.SystemClock;
import android.util.Log;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog$Builder;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.ByteCompanionObject;
import m0.c3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f259b = 0;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f260f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f261g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(l lVar, k kVar, boolean z8, String str, String str2) {
        this.f260f = lVar;
        this.f261g = kVar;
        this.e = z8;
        this.c = str;
        this.d = str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z8;
        boolean zF;
        String strRun;
        int i9 = this.f259b;
        Object obj = this.f261g;
        boolean z9 = this.e;
        String string = this.d;
        String str = this.c;
        Object obj2 = this.f260f;
        switch (i9) {
            case 0:
                l lVar = (l) obj2;
                k kVar = (k) obj;
                Set set = lVar.d;
                String str2 = l.f262f;
                AtomicBoolean atomicBoolean = l.f266j;
                AtomicLong atomicLong = l.f265i;
                try {
                    strRun = kVar.run();
                    zF = l.F(strRun);
                } catch (Exception e) {
                    e = e;
                    String strE = l.e(e.getMessage());
                    while (true) {
                        if (e != null) {
                            String name = e.getClass().getName();
                            String message = e.getMessage();
                            if (name.contains(e0.m.h(new byte[]{53, 126, -18, 87, -110, -26, 77, -19, 18, 111, -54, 75, -66, -31, 87, -4, 24, 116, -31}, new byte[]{113, 27, -113, 51, -35, -124, 39, -120})) || name.contains(e0.m.h(new byte[]{126, -94, 52, -37, -48, -36, -22, -79, 95, -86, 16, -57, -32, -64, -23, -79, 83, -88, 59}, new byte[]{58, -57, 85, -65, -125, -91, -103, -59})) || name.contains(e0.m.h(new byte[]{120, 11, -105, -33, -55, -124, -99, -81, 73, 11, -118, -60, -44, -114, -74}, new byte[]{42, 110, -6, -80, -67, -31, -40, -41})) || l.b(message)) {
                                z8 = true;
                            } else {
                                e = e.getCause();
                            }
                        } else {
                            z8 = false;
                        }
                    }
                    zF = z8;
                    strRun = strE;
                }
                if (zF) {
                    boolean z10 = atomicLong.getAndSet(SystemClock.elapsedRealtime() + 2000) == 0;
                    atomicBoolean.set(false);
                    if (z10) {
                        Log.w(str2, e0.m.h(new byte[]{-89, 69, 99, 4, -10, -59, -73, 50, -60, 81, ByteCompanionObject.MAX_VALUE, 69, -20, -51, -80, 53, -123, 70, 125, 65, -95, -116, -82, 60, -122, 4, 114, 69, -24, -116, -85, 60, -107, 81, 116, 87, -18, -33, -7, 41, -123, 81, 98, 65, -2}, new byte[]{-28, 36, 17, 36, -102, -84, -39, 89}));
                    }
                } else {
                    atomicLong.set(0L);
                    atomicBoolean.set(false);
                    if (z9) {
                        Log.i(str2, e0.m.h(new byte[]{53, 2, 55, 55, -58, 13, 55, 122, 86, 17, 32, 100, -34, 11, 43, 116, 18, 88, 101, 96, -49, 6, 121, 114, 23, 17, 101, 101, -49, 21, 44, 116, 5, 23, 54, 55, -40, 1, 42, 100, 27, 6, 33}, new byte[]{118, 99, 69, 23, -86, 100, 89, 17}));
                    }
                }
                try {
                    lVar.J(str, string, strRun);
                    return;
                } finally {
                    set.remove(str);
                }
            default:
                c3 c3Var = (c3) obj2;
                File file = (File) obj;
                if (str != null) {
                    c3Var.I(c3Var.getString(2131952731, str));
                    return;
                }
                if (string == null) {
                    string = "";
                }
                if (z9) {
                    StringBuilder sbW = ai.onnxruntime.a.w(string, "\n\n");
                    sbW.append(c3Var.getString(2131952733));
                    string = sbW.toString();
                }
                TextView textView = new TextView(c3Var.requireContext());
                textView.setText(string);
                textView.setTextColor(ContextCompat.getColor(c3Var.requireContext(), 2131035009));
                textView.setTextIsSelectable(true);
                textView.setTextSize(13.0f);
                textView.setTypeface(Typeface.MONOSPACE);
                textView.setPadding(c3Var.z(12), c3Var.z(10), c3Var.z(12), c3Var.z(10));
                ScrollView scrollView = new ScrollView(c3Var.requireContext());
                scrollView.addView(textView, new FrameLayout$LayoutParams(-1, -2));
                new AlertDialog$Builder(c3Var.requireContext(), 2132017903).setTitle(file.getName()).setView(scrollView).setPositiveButton(2131952436, (DialogInterface$OnClickListener) null).show();
                c3Var.I(c3Var.getString(2131952704));
                return;
        }
    }

    public /* synthetic */ j(c3 c3Var, String str, String str2, boolean z8, File file) {
        this.f260f = c3Var;
        this.c = str;
        this.d = str2;
        this.e = z8;
        this.f261g = file;
    }
}
