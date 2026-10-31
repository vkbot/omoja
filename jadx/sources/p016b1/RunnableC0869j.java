package p016b1;

import ai.onnxruntime.AbstractC0074a;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.os.SystemClock;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.example.navistart.R;
import java.io.File;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;
import p132m0.C2276c3;

/* JADX INFO: renamed from: b1.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0869j implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f584b = 0;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ String f585c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ String f586d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ boolean f587e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ Object f588f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ Object f589g;

    public /* synthetic */ RunnableC0869j(C0871l c0871l, InterfaceC0870k interfaceC0870k, boolean z9, String str, String str2) {
        this.f588f = c0871l;
        this.f589g = interfaceC0870k;
        this.f587e = z9;
        this.f585c = str;
        this.f586d = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z9;
        boolean zM939F;
        String strRun;
        int i10 = this.f584b;
        Object obj = this.f589g;
        boolean z10 = this.f587e;
        String string = this.f586d;
        String str = this.f585c;
        Object obj2 = this.f588f;
        switch (i10) {
            case 0:
                C0871l c0871l = (C0871l) obj2;
                InterfaceC0870k interfaceC0870k = (InterfaceC0870k) obj;
                Set set = c0871l.f598d;
                String str2 = C0871l.f590f;
                AtomicBoolean atomicBoolean = C0871l.f594j;
                AtomicLong atomicLong = C0871l.f593i;
                try {
                    strRun = interfaceC0870k.run();
                    zM939F = C0871l.m939F(strRun);
                } catch (Exception e) {
                    e = e;
                    String strM948e = C0871l.m948e(e.getMessage());
                    while (true) {
                        if (e != null) {
                            String name = e.getClass().getName();
                            String message = e.getMessage();
                            if (name.contains(AbstractC1387m.m2421h(new byte[]{53, 126, -18, 87, -110, -26, 77, -19, 18, 111, -54, 75, -66, -31, 87, -4, 24, 116, -31}, new byte[]{113, 27, -113, 51, -35, -124, 39, -120})) || name.contains(AbstractC1387m.m2421h(new byte[]{126, -94, 52, -37, -48, -36, -22, -79, 95, -86, 16, -57, -32, -64, -23, -79, 83, -88, 59}, new byte[]{58, -57, 85, -65, -125, -91, -103, -59})) || name.contains(AbstractC1387m.m2421h(new byte[]{120, 11, -105, -33, -55, -124, -99, -81, 73, 11, -118, -60, -44, -114, -74}, new byte[]{42, 110, -6, -80, -67, -31, -40, -41})) || C0871l.m946b(message)) {
                                z9 = true;
                            } else {
                                e = e.getCause();
                            }
                        } else {
                            z9 = false;
                        }
                    }
                    zM939F = z9;
                    strRun = strM948e;
                }
                if (zM939F) {
                    boolean z11 = atomicLong.getAndSet(SystemClock.elapsedRealtime() + 2000) == 0;
                    atomicBoolean.set(false);
                    if (z11) {
                        Log.w(str2, AbstractC1387m.m2421h(new byte[]{-89, 69, 99, 4, -10, -59, -73, 50, -60, 81, ByteCompanionObject.MAX_VALUE, 69, -20, -51, -80, 53, -123, 70, 125, 65, -95, -116, -82, 60, -122, 4, 114, 69, -24, -116, -85, 60, -107, 81, 116, 87, -18, -33, -7, 41, -123, 81, 98, 65, -2}, new byte[]{-28, 36, 17, 36, -102, -84, -39, 89}));
                    }
                } else {
                    atomicLong.set(0L);
                    atomicBoolean.set(false);
                    if (z10) {
                        Log.i(str2, AbstractC1387m.m2421h(new byte[]{53, 2, 55, 55, -58, 13, 55, 122, 86, 17, 32, 100, -34, 11, 43, 116, 18, 88, 101, 96, -49, 6, 121, 114, 23, 17, 101, 101, -49, 21, 44, 116, 5, 23, 54, 55, -40, 1, 42, 100, 27, 6, 33}, new byte[]{118, 99, 69, 23, -86, 100, 89, 17}));
                    }
                }
                try {
                    c0871l.m966J(str, string, strRun);
                    return;
                } finally {
                    set.remove(str);
                }
            default:
                C2276c3 c2276c3 = (C2276c3) obj2;
                File file = (File) obj;
                if (str != null) {
                    c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_text_preview_error, str));
                    return;
                }
                if (string == null) {
                    string = "";
                }
                if (z10) {
                    StringBuilder sbM172w = AbstractC0074a.m172w(string, "\n\n");
                    sbM172w.append(c2276c3.getString(R.string.user_file_manager_text_preview_truncated));
                    string = sbM172w.toString();
                }
                TextView textView = new TextView(c2276c3.requireContext());
                textView.setText(string);
                textView.setTextColor(ContextCompat.getColor(c2276c3.requireContext(), R.color.modern_text));
                textView.setTextIsSelectable(true);
                textView.setTextSize(13.0f);
                textView.setTypeface(Typeface.MONOSPACE);
                textView.setPadding(c2276c3.m3668z(12), c2276c3.m3668z(10), c2276c3.m3668z(12), c2276c3.m3668z(10));
                ScrollView scrollView = new ScrollView(c2276c3.requireContext());
                scrollView.addView(textView, new FrameLayout.LayoutParams(-1, -2));
                new AlertDialog.Builder(c2276c3.requireContext(), R.style.ThemeOverlay_JCarTools_ModernAlert).setTitle(file.getName()).setView(scrollView).setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null).show();
                c2276c3.m3664I(c2276c3.getString(R.string.user_file_manager_file_actions_hint));
                return;
        }
    }

    public /* synthetic */ RunnableC0869j(C2276c3 c2276c3, String str, String str2, boolean z9, File file) {
        this.f588f = c2276c3;
        this.f585c = str;
        this.f586d = str2;
        this.f587e = z9;
        this.f589g = file;
    }
}
