package org.apache.commons.p161io.function;

import java.util.function.Function;

/* JADX INFO: renamed from: org.apache.commons.io.function.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2835p implements IOFunction {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8010b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IOFunction f8011c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Function f8012d;

    public /* synthetic */ C2835p(IOFunction iOFunction, Function function, int i10) {
        this.f8010b = i10;
        this.f8011c = iOFunction;
        this.f8012d = function;
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public final Object apply(Object obj) {
        switch (this.f8010b) {
            case 0:
                return this.f8011c.lambda$compose$5(this.f8012d, obj);
            default:
                return this.f8011c.lambda$andThen$1(this.f8012d, obj);
        }
    }
}
