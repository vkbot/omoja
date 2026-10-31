package p121l0;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.fragment.app.Fragment;
import com.example.navistart.R;

/* JADX INFO: renamed from: l0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2195b extends Fragment {
    private Context baseThemeContext;
    private Context themedContext;

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
            this.themedContext = new ContextThemeWrapper(context, R.style.Theme_JCarTools_Uni);
        }
        return this.themedContext;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.baseThemeContext = null;
        this.themedContext = null;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public LayoutInflater onGetLayoutInflater(@Nullable Bundle bundle) {
        return super.onGetLayoutInflater(bundle).cloneInContext(requireContext());
    }
}
