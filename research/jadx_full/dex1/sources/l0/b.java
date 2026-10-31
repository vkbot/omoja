package l0;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.fragment.app.Fragment;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class b extends Fragment {
    private Context baseThemeContext;
    private Context themedContext;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    @Nullable
    public Context getContext() {
        Context context = super.getContext();
        if (context == null) {
            this.baseThemeContext = null;
            this.themedContext = null;
            return null;
        }
        if (context != this.baseThemeContext) {
            this.baseThemeContext = context;
            this.themedContext = new ContextThemeWrapper(context, 2132017806);
        }
        return this.themedContext;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.baseThemeContext = null;
        this.themedContext = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    @NonNull
    public LayoutInflater onGetLayoutInflater(@Nullable Bundle bundle) {
        return super.onGetLayoutInflater(bundle).cloneInContext(requireContext());
    }
}
