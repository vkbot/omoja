package org.apache.commons.p161io.build;

import java.util.function.IntUnaryOperator;
import org.apache.commons.net.smtp.AuthenticatingSMTPClient;

/* JADX INFO: renamed from: org.apache.commons.io.build.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2782b implements IntUnaryOperator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7941a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f7942b;

    public /* synthetic */ C2782b(int i10, Object obj) {
        this.f7941a = i10;
        this.f7942b = obj;
    }

    @Override // java.util.function.IntUnaryOperator
    public final int applyAsInt(int i10) {
        switch (this.f7941a) {
            case 0:
                return ((AbstractStreamBuilder) this.f7942b).lambda$new$0(i10);
            default:
                return AuthenticatingSMTPClient.lambda$getEnhancedReplyCode$0((String[]) this.f7942b, i10);
        }
    }
}
