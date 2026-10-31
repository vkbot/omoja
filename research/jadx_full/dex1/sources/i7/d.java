package i7;

import com.example.navistart.LocServ;
import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.cores.HUDMassageObj$AradarSenderType;
import com.example.navistart.cores.HUDMassageObj$HudSenderType;
import com.woha.atir.CameraInfoView;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f2672b;
    public final /* synthetic */ x c;
    public final /* synthetic */ double d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(g gVar, x xVar, double d) {
        this.f2672b = gVar;
        this.c = xVar;
        this.d = d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        g gVar = this.f2672b;
        LocServ locServ = gVar.d;
        w wVar = gVar.f2683k;
        if (wVar != null) {
            wVar.setVisibility(8);
        }
        CameraInfoView cameraInfoView = gVar.f2682j;
        x xVar = this.c;
        double d = this.d;
        if (cameraInfoView != null) {
            cameraInfoView.setSpeedLimit(xVar.e);
            gVar.f2682j.setTypeCamera(xVar.a());
            gVar.f2682j.setDistance(((int) d) + locServ.getString(2131952160));
            gVar.f2682j.setCameraImageResource(xVar.d);
            gVar.f2682j.setVisibility(0);
        }
        s sVarC = v1.d.a().c();
        StringBuilder sb = new StringBuilder();
        String strA = xVar.a();
        int i9 = xVar.e;
        sb.append(strA);
        sb.append(e0.m.h(new byte[]{-72, 77}, new byte[]{-126, 109, -10, 63, 88, 96, 104, -34}));
        sb.append(locServ.getString(2131952435));
        com.google.protobuf.q.t(new byte[]{-42, -120}, new byte[]{-20, -88, 98, -105, 59, -4, -93, -126}, sb, i9);
        sb.append(locServ.getString(2131952083));
        sb.append(" ");
        sb.append(locServ.getString(2131952471));
        sb.append(e0.m.h(new byte[]{115, 87}, new byte[]{73, 119, 7, -97, ByteCompanionObject.MAX_VALUE, -70, 126, 108}));
        int i10 = (int) d;
        sb.append(i10);
        sVarC.f2712a.postValue(sb.toString());
        HUDMassageObj hUDMassageObj = new HUDMassageObj();
        hUDMassageObj.AradarOn = Boolean.TRUE;
        hUDMassageObj.hudSenderType = HUDMassageObj$HudSenderType.ARAD;
        hUDMassageObj.aradarSenderType = HUDMassageObj$AradarSenderType.GENARADAR;
        hUDMassageObj.v_mTurnType = 14;
        hUDMassageObj.v_mTurnDis = i9 * 1000;
        hUDMassageObj.v_mRemainDis = i10;
        hUDMassageObj.v_mNextRoad = i9 + locServ.getString(2131952083);
        hUDMassageObj.setspeedlimit(i9);
        h0.b.a();
        h0.b.i().e(hUDMassageObj);
        if (gVar.f2676a) {
            gVar.f2679g.post(new e(gVar, 3));
        }
    }
}
