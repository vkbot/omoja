package p132m0;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentTransaction;
import com.example.navistart.R;
import p047e0.AbstractC1387m;
import p121l0.C2195b;

/* JADX INFO: renamed from: m0.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2364w extends C2195b {
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_noti_set, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (getChildFragmentManager().findFragmentByTag(AbstractC1387m.m2421h(new byte[]{-29, 112, 88, -107, 74, -112, 30, 100, -29, 93, 74, -98, 77, -108, 24, 120, -16, 113}, new byte[]{-105, 2, 57, -5, 57, -32, 113, 22})) == null) {
            FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
            C2325m2 c2325m2 = new C2325m2();
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean(C2325m2.f6221m, true);
            c2325m2.setArguments(bundle2);
            fragmentTransactionBeginTransaction.replace(R.id.notificationTransportContainer, c2325m2, AbstractC1387m.m2421h(new byte[]{-117, 49, -76, 48, -38, -126, -125, -59, -117, 28, -90, 59, -35, -122, -123, -39, -104, 48}, new byte[]{-1, 67, -43, 94, -87, -14, -20, -73})).commit();
        }
    }
}
