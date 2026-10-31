package org.apache.commons.p161io.function;

/* JADX INFO: renamed from: org.apache.commons.io.function.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2834o implements IOFunction {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8007b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IOFunction f8008c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ IOFunction f8009d;

    public /* synthetic */ C2834o(IOFunction iOFunction, IOFunction iOFunction2, int i10) {
        this.f8007b = i10;
        this.f8008c = iOFunction;
        this.f8009d = iOFunction2;
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public final Object apply(Object obj) {
        switch (this.f8007b) {
            case 0:
                return this.f8008c.lambda$andThen$3(this.f8009d, obj);
            default:
                return this.f8008c.lambda$compose$6(this.f8009d, obj);
        }
    }
}
