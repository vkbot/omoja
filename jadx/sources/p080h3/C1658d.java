package p080h3;

import android.content.pm.ResolveInfo;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.text.Collator;
import java.util.Comparator;
import p132m0.C2313k0;
import p132m0.C2328n0;
import p190s1.C3166q0;

/* JADX INFO: renamed from: h3.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1658d implements Comparator {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4219b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f4220c;

    public /* synthetic */ C1658d(int i10, Object obj) {
        this.f4219b = i10;
        this.f4220c = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i10 = this.f4219b;
        Object obj3 = this.f4220c;
        switch (i10) {
            case 0:
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) obj3;
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int iCompareTo = Boolean.valueOf(materialButton.f2198m).compareTo(Boolean.valueOf(materialButton2.f2198m));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                return iCompareTo2 != 0 ? iCompareTo2 : Integer.compare(materialButtonToggleGroup.indexOfChild(materialButton), materialButtonToggleGroup.indexOfChild(materialButton2));
            case 1:
                String str = C2328n0.f6237k;
                return ((Collator) obj3).compare(((C2313k0) obj).f6183b, ((C2313k0) obj2).f6183b);
            default:
                C3166q0 c3166q0 = (C3166q0) obj3;
                return ((ResolveInfo) obj).loadLabel(c3166q0.getContext().getPackageManager()).toString().compareToIgnoreCase(((ResolveInfo) obj2).loadLabel(c3166q0.getContext().getPackageManager()).toString());
        }
    }
}
