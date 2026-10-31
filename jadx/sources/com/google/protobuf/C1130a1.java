package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.a1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1130a1 {

    /* JADX INFO: renamed from: a */
    public final AbstractC1128a f2623a;

    /* JADX INFO: renamed from: b */
    public final String f2624b;

    /* JADX INFO: renamed from: c */
    public final Object[] f2625c;

    /* JADX INFO: renamed from: d */
    public final int f2626d;

    public C1130a1(AbstractC1128a abstractC1128a, String str, Object[] objArr) {
        this.f2623a = abstractC1128a;
        this.f2624b = str;
        this.f2625c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f2626d = cCharAt;
            return;
        }
        int i10 = cCharAt & 8191;
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char cCharAt2 = str.charAt(i12);
            if (cCharAt2 < 55296) {
                this.f2626d = i10 | (cCharAt2 << i11);
                return;
            } else {
                i10 |= (cCharAt2 & 8191) << i11;
                i11 += 13;
                i12 = i13;
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final int m1897a() {
        int i10 = this.f2626d;
        if ((i10 & 1) != 0) {
            return 1;
        }
        return (i10 & 4) == 4 ? 3 : 2;
    }
}
