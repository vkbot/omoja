package l1;

import android.graphics.Bitmap;
import com.example.navistart.cores.AreaDisplayProxy;
import com.example.navistart.cores.CarCmdProxy;
import com.example.navistart.cores.ProLanProxy;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements CarCmdProxy, ProLanProxy, AreaDisplayProxy {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.ProLanProxy
    public final int getGuDisplayID() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.ProLanProxy
    public final int getGuPassDisplayID() {
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.ProLanProxy
    public final int getHUDDisplayID() {
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.ProLanProxy
    public final boolean getMO() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.example.navistart.cores.ProLanProxy
    public final int getPriDisplayID() {
        return -1;
    }

    @Override // com.example.navistart.cores.AreaDisplayProxy
    public final void OpenCustomPPPri() {
    }

    @Override // com.example.navistart.cores.AreaDisplayProxy
    public final void OpenProGu() {
    }

    @Override // com.example.navistart.cores.AreaDisplayProxy
    public final void OpenProPri() {
    }

    @Override // com.example.navistart.cores.ProLanProxy
    public final void DisplayAreaOpen(int i9) {
    }

    @Override // com.example.navistart.cores.AreaDisplayProxy
    public final void StartProGu(String str) {
    }

    @Override // com.example.navistart.cores.ProLanProxy
    public final void setMusicStatus(boolean z8) {
    }

    @Override // com.example.navistart.cores.ProLanProxy
    public final void setMusicPlayTime(int i9, int i10) {
    }

    @Override // com.example.navistart.cores.ProLanProxy
    public final void onIfoSend(String str, String str2, String str3, Bitmap bitmap) {
    }
}
