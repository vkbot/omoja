package h3;

import android.content.pm.ResolveInfo;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.text.Collator;
import java.util.Comparator;
import m0.k0;
import m0.n0;
import s1.q0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2439b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(int i9, Object obj) {
        this.f2439b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i9 = this.f2439b;
        Object obj3 = this.c;
        switch (i9) {
            case 0:
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) obj3;
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int iCompareTo = Boolean.valueOf(materialButton.f1193m).compareTo(Boolean.valueOf(materialButton2.f1193m));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                return iCompareTo2 != 0 ? iCompareTo2 : Integer.compare(materialButtonToggleGroup.indexOfChild(materialButton), materialButtonToggleGroup.indexOfChild(materialButton2));
            case 1:
                String str = n0.f3526k;
                return ((Collator) obj3).compare(((k0) obj).f3490b, ((k0) obj2).f3490b);
            default:
                q0 q0Var = (q0) obj3;
                return ((ResolveInfo) obj).loadLabel(q0Var.getContext().getPackageManager()).toString().compareToIgnoreCase(((ResolveInfo) obj2).loadLabel(q0Var.getContext().getPackageManager()).toString());
        }
    }
}
