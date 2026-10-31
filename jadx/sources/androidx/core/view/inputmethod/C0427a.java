package androidx.core.view.inputmethod;

import android.os.Bundle;
import android.view.View;

/* JADX INFO: renamed from: androidx.core.view.inputmethod.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0427a implements InputConnectionCompat.OnCommitContentListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ View f400a;

    public /* synthetic */ C0427a(View view) {
        this.f400a = view;
    }

    @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
    public boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i10, Bundle bundle) {
        return InputConnectionCompat.lambda$createOnCommitContentListenerUsingPerformReceiveContent$0(this.f400a, inputContentInfoCompat, i10, bundle);
    }
}
