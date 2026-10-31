package androidx.core.view;

import android.R$id;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(20)
public class SoftwareKeyboardControllerCompat$Impl20 extends SoftwareKeyboardControllerCompat$Impl {

    @Nullable
    private final View mView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SoftwareKeyboardControllerCompat$Impl20(@Nullable View view) {
        this.mView = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(View view) {
        lambda$show$0(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$show$0(View view) {
        ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.SoftwareKeyboardControllerCompat$Impl
    public void hide() {
        View view = this.mView;
        if (view != null) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.mView.getWindowToken(), 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.SoftwareKeyboardControllerCompat$Impl
    public void show() {
        View viewFindViewById = this.mView;
        if (viewFindViewById == null) {
            return;
        }
        if (viewFindViewById.isInEditMode() || viewFindViewById.onCheckIsTextEditor()) {
            viewFindViewById.requestFocus();
        } else {
            viewFindViewById = viewFindViewById.getRootView().findFocus();
        }
        if (viewFindViewById == null) {
            viewFindViewById = this.mView.getRootView().findViewById(R$id.content);
        }
        if (viewFindViewById == null || !viewFindViewById.hasWindowFocus()) {
            return;
        }
        viewFindViewById.post(new g(0, viewFindViewById));
    }
}
