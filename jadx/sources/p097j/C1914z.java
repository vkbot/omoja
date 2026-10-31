package p097j;

import android.util.Log;
import com.google.protobuf.AbstractC1178q;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p077h.InterfaceC1643e;
import p142n0.C2467b;

/* JADX INFO: renamed from: j.z */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1914z extends Exception {

    /* JADX INFO: renamed from: g */
    public static final StackTraceElement[] f5040g = new StackTraceElement[0];

    /* JADX INFO: renamed from: b */
    public final List f5041b;

    /* JADX INFO: renamed from: c */
    public InterfaceC1643e f5042c;

    /* JADX INFO: renamed from: d */
    public int f5043d;

    /* JADX INFO: renamed from: e */
    public Class f5044e;

    /* JADX INFO: renamed from: f */
    public final String f5045f;

    public C1914z(String str, List list) {
        this.f5045f = str;
        setStackTrace(f5040g);
        this.f5041b = list;
    }

    /* JADX INFO: renamed from: a */
    public static void m2976a(Throwable th, ArrayList arrayList) {
        if (!(th instanceof C1914z)) {
            arrayList.add(th);
            return;
        }
        Iterator it = ((C1914z) th).f5041b.iterator();
        while (it.hasNext()) {
            m2976a((Throwable) it.next(), arrayList);
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m2977b(List list, C1913y c1913y) throws IOException {
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            c1913y.append("Cause (");
            int i11 = i10 + 1;
            c1913y.append(String.valueOf(i11));
            c1913y.append(" of ");
            c1913y.append(String.valueOf(size));
            c1913y.append("): ");
            Throwable th = (Throwable) list.get(i10);
            if (th instanceof C1914z) {
                ((C1914z) th).m2980e(c1913y);
            } else {
                m2978c(th, c1913y);
            }
            i10 = i11;
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m2978c(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            C2467b.m3833w(th);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m2979d() {
        ArrayList arrayList = new ArrayList();
        m2976a(this, arrayList);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i11 = i10 + 1;
            sb.append(i11);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i("Glide", sb.toString(), (Throwable) arrayList.get(i10));
            i10 = i11;
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m2980e(Appendable appendable) {
        m2978c(this, appendable);
        try {
            m2977b(this.f5041b, new C1913y(appendable));
        } catch (IOException e) {
            C2467b.m3833w(e);
        }
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f5045f);
        String str2 = "";
        if (this.f5044e != null) {
            str = ", " + this.f5044e;
        } else {
            str = "";
        }
        sb.append(str);
        int i10 = this.f5043d;
        sb.append(i10 != 0 ? ", ".concat(AbstractC1178q.m2091y(i10)) : "");
        if (this.f5042c != null) {
            str2 = ", " + this.f5042c;
        }
        sb.append(str2);
        ArrayList arrayList = new ArrayList();
        m2976a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" root causes:");
        }
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            Throwable th = (Throwable) obj;
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        m2980e(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        m2980e(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        m2980e(printWriter);
    }

    public C1914z(String str) {
        this(str, Collections.EMPTY_LIST);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
