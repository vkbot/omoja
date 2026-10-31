package androidx.appcompat.app;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatActivity$1 implements SavedStateRegistry$SavedStateProvider {
    final /* synthetic */ AppCompatActivity this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatActivity$1(AppCompatActivity appCompatActivity) {
        this.this$0 = appCompatActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.savedstate.SavedStateRegistry$SavedStateProvider
    @NonNull
    public Bundle saveState() {
        Bundle bundle = new Bundle();
        this.this$0.getDelegate().onSaveInstanceState(bundle);
        return bundle;
    }
}
