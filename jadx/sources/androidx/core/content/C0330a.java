package androidx.core.content;

import androidx.core.util.Consumer;

/* JADX INFO: renamed from: androidx.core.content.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0330a implements Consumer {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f331b;

    public /* synthetic */ C0330a(int i10) {
        this.f331b = i10;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        String str = (String) obj;
        switch (this.f331b) {
            case 0:
                IntentSanitizer.lambda$sanitizeByThrowing$1(str);
                break;
            default:
                IntentSanitizer.lambda$sanitizeByFiltering$0(str);
                break;
        }
    }
}
