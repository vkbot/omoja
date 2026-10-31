package p148n7;

import p091i4.AbstractC1744b;

/* JADX INFO: renamed from: n7.e1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC2505e1 {
    OK(0),
    CANCELLED(1),
    UNKNOWN(2),
    INVALID_ARGUMENT(3),
    DEADLINE_EXCEEDED(4),
    NOT_FOUND(5),
    ALREADY_EXISTS(6),
    PERMISSION_DENIED(7),
    RESOURCE_EXHAUSTED(8),
    FAILED_PRECONDITION(9),
    ABORTED(10),
    OUT_OF_RANGE(11),
    UNIMPLEMENTED(12),
    INTERNAL(13),
    UNAVAILABLE(14),
    DATA_LOSS(15),
    UNAUTHENTICATED(16);


    /* JADX INFO: renamed from: b */
    public final int f6927b;

    /* JADX INFO: renamed from: c */
    public final byte[] f6928c;

    EnumC2505e1(int i10) {
        this.f6927b = i10;
        this.f6928c = Integer.toString(i10).getBytes(AbstractC1744b.f4558a);
    }

    /* JADX INFO: renamed from: a */
    public final C2508f1 m3924a() {
        return (C2508f1) C2508f1.f6936d.get(this.f6927b);
    }
}
