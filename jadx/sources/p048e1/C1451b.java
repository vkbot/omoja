package p048e1;

import com.example.navistart.cores.HUDMassageObj;
import com.google.protobuf.AbstractC1178q;
import p007a6.C0025a;

/* JADX INFO: renamed from: e1.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1451b {
    /* JADX INFO: renamed from: a */
    public static HUDMassageObj m2499a(C0025a c0025a) {
        int i10 = c0025a.f89b;
        int i11 = c0025a.f90c;
        String strM2075i = " ";
        if (!c0025a.f88a || i10 <= 0) {
            HUDMassageObj hUDMassageObj = new HUDMassageObj();
            hUDMassageObj.AradarOn = Boolean.FALSE;
            hUDMassageObj.hudSenderType = HUDMassageObj.HudSenderType.ARAD;
            hUDMassageObj.aradarSenderType = HUDMassageObj.AradarSenderType.HUDSPEED;
            hUDMassageObj.v_mTurnType = -1;
            hUDMassageObj.v_mTurnDis = 0;
            hUDMassageObj.v_mRemainDis = 0;
            hUDMassageObj.v_mNextRoad = " ";
            hUDMassageObj.setspeedlimit(0);
            return hUDMassageObj;
        }
        HUDMassageObj hUDMassageObj2 = new HUDMassageObj();
        hUDMassageObj2.AradarOn = Boolean.TRUE;
        hUDMassageObj2.hudSenderType = HUDMassageObj.HudSenderType.ARAD;
        hUDMassageObj2.aradarSenderType = HUDMassageObj.AradarSenderType.HUDSPEED;
        hUDMassageObj2.v_mTurnType = 14;
        hUDMassageObj2.v_mRemainDis = i10;
        hUDMassageObj2.v_mTurnDis = i11 > 0 ? i11 * 1000 : 0;
        String str = (String) c0025a.f92e;
        String str2 = (String) c0025a.f91d;
        if (i11 > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(i11);
            strM2075i = AbstractC1178q.m2075i(new byte[]{-71, -23, 34, 57}, new byte[]{-46, -124, 13, 81, 70, -121, -25, 79}, sb);
        } else if (!str2.isEmpty()) {
            strM2075i = str2;
        } else if (!str.isEmpty()) {
            strM2075i = str;
        }
        hUDMassageObj2.v_mNextRoad = strM2075i;
        hUDMassageObj2.setspeedlimit(i11);
        return hUDMassageObj2;
    }
}
