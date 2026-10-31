package p225w0;

import p000a.AbstractC0000a;
import p098j0.AbstractC1920f;
import p098j0.C1919e;

/* JADX INFO: renamed from: w0.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3492u {

    /* JADX INFO: renamed from: a */
    public final String f10214a;

    /* JADX INFO: renamed from: b */
    public final C1919e f10215b;

    /* JADX INFO: renamed from: c */
    public final String f10216c;

    /* JADX INFO: renamed from: d */
    public boolean f10217d;

    /* JADX INFO: renamed from: e */
    public final C3466i1 f10218e;

    /* JADX INFO: renamed from: f */
    public int[] f10219f = new int[0];

    /* JADX INFO: renamed from: g */
    public float[] f10220g = new float[0];

    /* JADX INFO: renamed from: h */
    public String f10221h = "";

    /* JADX INFO: renamed from: i */
    public String f10222i = "";

    public C3492u(String str, C1919e c1919e, String str2) {
        boolean z9 = false;
        this.f10218e = new C3466i1(str, c1919e != null ? c1919e.f5066i : "");
        this.f10214a = str;
        this.f10215b = c1919e;
        this.f10216c = str2;
        if (c1919e != null && AbstractC0000a.m6f(AbstractC1920f.m3009g(c1919e)) != null) {
            z9 = true;
        }
        this.f10217d = z9;
    }
}
