package p057f0;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.navigation.ViewOnClickListenerC0675c;
import com.example.navistart.BlackActivity;
import com.example.navistart.R;
import p016b1.ViewOnLongClickListenerC0866g;

/* JADX INFO: renamed from: f0.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C1527e extends Fragment {

    /* JADX INFO: renamed from: b */
    public InterfaceC1525c f3746b;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof BlackActivity) {
            this.f3746b = (InterfaceC1525c) context;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.nichegofragment, viewGroup, false);
        View viewFindViewById = viewInflate.findViewById(R.id.BlackBagr);
        viewFindViewById.setOnClickListener(new ViewOnClickListenerC0675c(12, this));
        viewFindViewById.setOnLongClickListener(new ViewOnLongClickListenerC0866g(this, 3));
        return viewInflate;
    }
}
