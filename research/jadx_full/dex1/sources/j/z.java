package j;

import android.util.Log;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class z extends Exception {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final StackTraceElement[] f2863g = new StackTraceElement[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f2864b;
    public h.e c;
    public int d;
    public Class e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f2865f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z(String str, List list) {
        this.f2865f = str;
        setStackTrace(f2863g);
        this.f2864b = list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(Throwable th, ArrayList arrayList) {
        if (!(th instanceof z)) {
            arrayList.add(th);
            return;
        }
        Iterator it = ((z) th).f2864b.iterator();
        while (it.hasNext()) {
            a((Throwable) it.next(), arrayList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(List list, y yVar) throws IOException {
        int size = list.size();
        int i9 = 0;
        while (i9 < size) {
            yVar.append("Cause (");
            int i10 = i9 + 1;
            yVar.append(String.valueOf(i10));
            yVar.append(" of ");
            yVar.append(String.valueOf(size));
            yVar.append("): ");
            Throwable th = (Throwable) list.get(i9);
            if (th instanceof z) {
                ((z) th).e(yVar);
            } else {
                c(th, yVar);
            }
            i9 = i10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            n0.b.w(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i10 = i9 + 1;
            sb.append(i10);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i("Glide", sb.toString(), (Throwable) arrayList.get(i9));
            i9 = i10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(Appendable appendable) {
        c(this, appendable);
        try {
            b(this.f2864b, new y(appendable));
        } catch (IOException e) {
            n0.b.w(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f2865f);
        String str2 = "";
        if (this.e != null) {
            str = ", " + this.e;
        } else {
            str = "";
        }
        sb.append(str);
        int i9 = this.d;
        sb.append(i9 != 0 ? ", ".concat(com.google.protobuf.q.y(i9)) : "");
        if (this.c != null) {
            str2 = ", " + this.c;
        }
        sb.append(str2);
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
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
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Throwable
    public final void printStackTrace() {
        e(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        e(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        e(printWriter);
    }

    public z(String str) {
        this(str, Collections.EMPTY_LIST);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
