package androidx.appcompat.app;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatActivity$2 implements OnContextAvailableListener {
    final /* synthetic */ AppCompatActivity this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatActivity$2(AppCompatActivity appCompatActivity) {
        this.this$0 = appCompatActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.contextaware.OnContextAvailableListener
    public void onContextAvailable(@NonNull Context context) {
        AppCompatDelegate delegate = this.this$0.getDelegate();
        delegate.installViewFactory();
        delegate.onCreate(this.this$0.getSavedStateRegistry().consumeRestoredStateForKey("androidx:appcompat"));
    }
}
