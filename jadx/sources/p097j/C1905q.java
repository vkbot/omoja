package p097j;

import org.apache.commons.net.ftp.FTPReply;
import p037d0.AbstractC1239g;
import p037d0.C1236d;
import p131m.ExecutorServiceC2261e;

/* JADX INFO: renamed from: j.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1905q {

    /* JADX INFO: renamed from: a */
    public final ExecutorServiceC2261e f4979a;

    /* JADX INFO: renamed from: b */
    public final ExecutorServiceC2261e f4980b;

    /* JADX INFO: renamed from: c */
    public final ExecutorServiceC2261e f4981c;

    /* JADX INFO: renamed from: d */
    public final ExecutorServiceC2261e f4982d;

    /* JADX INFO: renamed from: e */
    public final C1906r f4983e;

    /* JADX INFO: renamed from: f */
    public final C1906r f4984f;

    /* JADX INFO: renamed from: g */
    public final C1236d f4985g = AbstractC1239g.m2223a(FTPReply.FILE_STATUS_OK, new C1904p(this));

    public C1905q(ExecutorServiceC2261e executorServiceC2261e, ExecutorServiceC2261e executorServiceC2261e2, ExecutorServiceC2261e executorServiceC2261e3, ExecutorServiceC2261e executorServiceC2261e4, C1906r c1906r, C1906r c1906r2) {
        this.f4979a = executorServiceC2261e;
        this.f4980b = executorServiceC2261e2;
        this.f4981c = executorServiceC2261e3;
        this.f4982d = executorServiceC2261e4;
        this.f4983e = c1906r;
        this.f4984f = c1906r2;
    }
}
