package e0;

import android.location.Location;
import android.view.WindowManager;
import androidx.lifecycle.Observer;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.cores.HUDMassageObj;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class r2 implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1942a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r2(int i9) {
        this.f1942a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        switch (this.f1942a) {
            case 0:
                Integer num = (Integer) obj;
                WindowManager windowManager = SpeedBoardService.f824g;
                if (num != null) {
                    int iIntValue = num.intValue();
                    v0.h hVar = SpeedBoardService.f826i;
                    if (hVar != null) {
                        hVar.setSpeed(iIntValue);
                    }
                    v0.h hVar2 = SpeedBoardService.f827j;
                    if (hVar2 != null) {
                        hVar2.setSpeed(iIntValue);
                    }
                }
                break;
            case 1:
                HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
                if (hUDMassageObj == null) {
                    WindowManager windowManager2 = SpeedBoardService.f824g;
                } else {
                    SpeedBoardService.a(hUDMassageObj);
                }
                break;
            default:
                Location location = (Location) obj;
                if (location == null) {
                    WindowManager windowManager3 = SpeedBoardService.f824g;
                } else {
                    v0.h hVar3 = SpeedBoardService.f826i;
                    if (hVar3 != null) {
                        hVar3.f(location);
                    }
                    v0.h hVar4 = SpeedBoardService.f827j;
                    if (hVar4 != null) {
                        hVar4.f(location);
                    }
                }
                break;
        }
    }
}
