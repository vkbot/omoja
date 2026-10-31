package p009a8;

import com.bumptech.glide.AbstractC1030c;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import p099j1.C1929i;

/* JADX INFO: renamed from: a8.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0031c extends RuntimeException {

    /* JADX INFO: renamed from: b */
    public final List f97b;

    /* JADX INFO: renamed from: c */
    public final String f98c;

    /* JADX INFO: renamed from: d */
    public C0029a f99d;

    public C0031c(List list) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Throwable th = (Throwable) it.next();
                if (th instanceof C0031c) {
                    linkedHashSet.addAll(((C0031c) th).f97b);
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (linkedHashSet.isEmpty()) {
            C1929i.m3029k("errors is empty");
            throw null;
        }
        arrayList.addAll(linkedHashSet);
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        this.f97b = listUnmodifiableList;
        this.f98c = listUnmodifiableList.size() + " exceptions occurred. ";
    }

    /* JADX INFO: renamed from: a */
    public static void m92a(StringBuilder sb, Throwable th, String str) {
        sb.append(str);
        sb.append(th);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            sb.append("\t\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            m92a(sb, th.getCause(), "");
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m93b(AbstractC1030c abstractC1030c) {
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i10 = 1;
        for (Throwable th : this.f97b) {
            sb.append("  ComposedException ");
            sb.append(i10);
            sb.append(" :\n");
            m92a(sb, th, "\t");
            i10++;
        }
        abstractC1030c.mo91p(sb.toString());
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        try {
            if (this.f99d == null) {
                C0029a c0029a = new C0029a();
                HashSet hashSet = new HashSet();
                C0029a c0029a2 = c0029a;
                for (Throwable runtimeException : this.f97b) {
                    if (!hashSet.contains(runtimeException)) {
                        hashSet.add(runtimeException);
                        ArrayList arrayList = new ArrayList();
                        Throwable cause = runtimeException.getCause();
                        if (cause != null && cause != runtimeException) {
                            while (true) {
                                arrayList.add(cause);
                                Throwable cause2 = cause.getCause();
                                if (cause2 == null || cause2 == cause) {
                                    break;
                                    break;
                                }
                                cause = cause2;
                            }
                        }
                        int size = arrayList.size();
                        int i10 = 0;
                        while (i10 < size) {
                            Object obj = arrayList.get(i10);
                            i10++;
                            Throwable th = (Throwable) obj;
                            if (hashSet.contains(th)) {
                                runtimeException = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                            } else {
                                hashSet.add(th);
                            }
                        }
                        try {
                            c0029a2.initCause(runtimeException);
                        } catch (Throwable unused) {
                        }
                        Throwable cause3 = c0029a2.getCause();
                        if (cause3 != null && this.f99d != cause3) {
                            while (true) {
                                Throwable cause4 = cause3.getCause();
                                if (cause4 == null || cause4 == cause3) {
                                    break;
                                    break;
                                }
                                cause3 = cause4;
                            }
                            c0029a2 = cause3;
                        }
                    }
                }
                this.f99d = c0029a;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f99d;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f98c;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        m93b(new C0030b(0, printStream));
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        m93b(new C0030b(1, printWriter));
    }

    public C0031c(Throwable... thArr) {
        this(Arrays.asList(thArr));
    }
}
