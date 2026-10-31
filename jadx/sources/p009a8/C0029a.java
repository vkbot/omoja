package p009a8;

/* JADX INFO: renamed from: a8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C0029a extends RuntimeException {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f94b;

    @Override // java.lang.Throwable
    public String getMessage() {
        switch (this.f94b) {
            case 0:
                return "Chain of Causes for CompositeException In Order Received =>";
            default:
                return super.getMessage();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0029a(int i10, Throwable th) {
        super(th);
        this.f94b = i10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0029a(String str, int i10) {
        super(str);
        this.f94b = i10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0029a(String str, int i10, Throwable th) {
        super(str, th);
        this.f94b = i10;
    }
}
