package com.example.navistart.cores;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class HUDMassageObj {
    public Boolean AradarOn;
    public Boolean NaviOn;
    public HUDMassageObj$AradarSenderType aradarSenderType;
    Boolean bi;
    public HUDMassageObj$HudSenderType hudSenderType;
    private int speedlimit;
    public String v_mCurRoad;
    public String v_mNextRoad;
    public int v_mRemainDis;
    int v_mRemainTime;
    public int v_mTurnDis;
    int v_mTurnTime;
    public int v_mTurnType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HUDMassageObj() {
        Boolean bool = Boolean.FALSE;
        this.NaviOn = bool;
        this.AradarOn = bool;
        this.bi = bool;
        this.v_mTurnType = 0;
        this.v_mTurnDis = 0;
        this.v_mTurnTime = 0;
        this.v_mRemainDis = 0;
        this.v_mRemainTime = 0;
        this.v_mCurRoad = "";
        this.v_mNextRoad = "";
        this.speedlimit = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HUDMassageObj copy(HUDMassageObj hUDMassageObj) {
        HUDMassageObj hUDMassageObj2 = new HUDMassageObj();
        hUDMassageObj2.NaviOn = hUDMassageObj.NaviOn;
        hUDMassageObj2.AradarOn = hUDMassageObj.AradarOn;
        hUDMassageObj2.bi = hUDMassageObj.bi;
        hUDMassageObj2.hudSenderType = hUDMassageObj.hudSenderType;
        hUDMassageObj2.aradarSenderType = hUDMassageObj.aradarSenderType;
        hUDMassageObj2.v_mTurnType = hUDMassageObj.v_mTurnType;
        hUDMassageObj2.v_mTurnDis = hUDMassageObj.v_mTurnDis;
        hUDMassageObj2.v_mTurnTime = hUDMassageObj.v_mTurnTime;
        hUDMassageObj2.v_mRemainDis = hUDMassageObj.v_mRemainDis;
        hUDMassageObj2.v_mRemainTime = hUDMassageObj.v_mRemainTime;
        hUDMassageObj2.v_mCurRoad = hUDMassageObj.v_mCurRoad;
        hUDMassageObj2.v_mNextRoad = hUDMassageObj.v_mNextRoad;
        hUDMassageObj2.speedlimit = hUDMassageObj.speedlimit;
        return hUDMassageObj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        HUDMassageObj hUDMassageObj = (HUDMassageObj) obj;
        return Objects.equals(this.NaviOn, hUDMassageObj.NaviOn) && Objects.equals(this.AradarOn, hUDMassageObj.AradarOn) && Objects.equals(this.bi, hUDMassageObj.bi) && this.hudSenderType == hUDMassageObj.hudSenderType && this.aradarSenderType == hUDMassageObj.aradarSenderType && this.v_mTurnType == hUDMassageObj.v_mTurnType && this.v_mTurnDis == hUDMassageObj.v_mTurnDis && this.v_mTurnTime == hUDMassageObj.v_mTurnTime && this.v_mRemainDis == hUDMassageObj.v_mRemainDis && this.v_mRemainTime == hUDMassageObj.v_mRemainTime && this.speedlimit == hUDMassageObj.speedlimit && Objects.equals(this.v_mCurRoad, hUDMassageObj.v_mCurRoad) && Objects.equals(this.v_mNextRoad, hUDMassageObj.v_mNextRoad);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSpeedlimit() {
        return this.speedlimit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return Objects.hash(this.NaviOn, this.AradarOn, this.bi, this.hudSenderType, this.aradarSenderType, Integer.valueOf(this.v_mTurnType), Integer.valueOf(this.v_mTurnDis), Integer.valueOf(this.v_mTurnTime), Integer.valueOf(this.v_mRemainDis), Integer.valueOf(this.v_mRemainTime), this.v_mCurRoad, this.v_mNextRoad, Integer.valueOf(this.speedlimit));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setspeedlimit(int i9) {
        this.speedlimit = i9;
    }
}
