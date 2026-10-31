package e1;

import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.cores.HUDMassageObj$AradarSenderType;
import com.example.navistart.cores.HUDMassageObj$HudSenderType;
import com.google.protobuf.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static HUDMassageObj a(a6.a aVar) {
        int i9 = aVar.f52b;
        int i10 = aVar.c;
        String strI = " ";
        if (!aVar.f51a || i9 <= 0) {
            HUDMassageObj hUDMassageObj = new HUDMassageObj();
            hUDMassageObj.AradarOn = Boolean.FALSE;
            hUDMassageObj.hudSenderType = HUDMassageObj$HudSenderType.ARAD;
            hUDMassageObj.aradarSenderType = HUDMassageObj$AradarSenderType.HUDSPEED;
            hUDMassageObj.v_mTurnType = -1;
            hUDMassageObj.v_mTurnDis = 0;
            hUDMassageObj.v_mRemainDis = 0;
            hUDMassageObj.v_mNextRoad = " ";
            hUDMassageObj.setspeedlimit(0);
            return hUDMassageObj;
        }
        HUDMassageObj hUDMassageObj2 = new HUDMassageObj();
        hUDMassageObj2.AradarOn = Boolean.TRUE;
        hUDMassageObj2.hudSenderType = HUDMassageObj$HudSenderType.ARAD;
        hUDMassageObj2.aradarSenderType = HUDMassageObj$AradarSenderType.HUDSPEED;
        hUDMassageObj2.v_mTurnType = 14;
        hUDMassageObj2.v_mRemainDis = i9;
        hUDMassageObj2.v_mTurnDis = i10 > 0 ? i10 * 1000 : 0;
        String str = (String) aVar.e;
        String str2 = (String) aVar.d;
        if (i10 > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(i10);
            strI = q.i(new byte[]{-71, -23, 34, 57}, new byte[]{-46, -124, 13, 81, 70, -121, -25, 79}, sb);
        } else if (!str2.isEmpty()) {
            strI = str2;
        } else if (!str.isEmpty()) {
            strI = str;
        }
        hUDMassageObj2.v_mNextRoad = strI;
        hUDMassageObj2.setspeedlimit(i10);
        return hUDMassageObj2;
    }
}
