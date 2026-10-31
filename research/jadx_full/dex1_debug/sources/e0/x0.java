package e0;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import com.example.navistart.MainActivity;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class x0 implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MainActivity f1988b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ x0(MainActivity mainActivity, int i9) {
        this.f1987a = i9;
        this.f1988b = mainActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        int i9 = this.f1987a;
        MainActivity mainActivity = this.f1988b;
        switch (i9) {
            case 0:
                mainActivity.J(((Boolean) obj).booleanValue());
                break;
            default:
                p pVar = (p) obj;
                String str = MainActivity.f688e1;
                if (pVar != null) {
                    int i10 = pVar.e;
                    ViewGroup viewGroup = (ViewGroup) mainActivity.f738x.getChildAt(0);
                    View childAt = viewGroup.getChildAt(0);
                    View childAt2 = viewGroup.getChildAt(1);
                    View childAt3 = viewGroup.getChildAt(2);
                    if (i10 == 1) {
                        childAt.setBackgroundColor(Color.parseColor(m.h(new byte[]{35, 92, 72, 107, 108, -64, 0, -45, 65}, new byte[]{0, 100, 112, 42, 45, -127, 65, -110})));
                        childAt2.setBackgroundColor(0);
                        childAt3.setBackgroundColor(0);
                    } else if (i10 == 2) {
                        childAt.setBackgroundColor(0);
                        childAt2.setBackgroundColor(Color.parseColor(m.h(new byte[]{-2, -97, -53, -78, 28, -59, 69, -116, -100}, new byte[]{-35, -89, -13, -13, 93, -124, 4, -51})));
                        childAt3.setBackgroundColor(0);
                    } else if (i10 == 3) {
                        childAt.setBackgroundColor(0);
                        childAt2.setBackgroundColor(0);
                        childAt3.setBackgroundColor(Color.parseColor(m.h(new byte[]{1, -27, -63, 113, 17, 96, 82, -33, 99}, new byte[]{34, -35, -7, 48, 80, 33, 19, -98})));
                    }
                    mainActivity.c.setText(pVar.d + m.h(new byte[]{79, 86, 64}, new byte[]{-115, -26, 3, -26, -48, -85, 102, 72}));
                }
                break;
        }
    }
}
