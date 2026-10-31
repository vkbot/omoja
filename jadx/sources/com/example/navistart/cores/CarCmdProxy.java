package com.example.navistart.cores;

import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface CarCmdProxy {
    default float akbvolt() {
        return 0.0f;
    }

    /* JADX INFO: renamed from: c */
    default JSONObject m1618c(JSONObject jSONObject) {
        return new JSONObject();
    }

    default int cargetheat(int i10) {
        return 0;
    }

    default int cargetvent(int i10) {
        return 0;
    }

    default float getCabinTemp(int i10) {
        return -99.0f;
    }

    default Boolean getParkOnOff() {
        return Boolean.FALSE;
    }

    default int getRPM() {
        return 0;
    }

    default int getSpeed() {
        return 0;
    }

    default int getcarZadSeatHeat(int i10) {
        return 0;
    }

    default int getcarZadSeatVent(int i10) {
        return 0;
    }

    default Boolean getlobheat() {
        return Boolean.FALSE;
    }

    default int getouttemp() {
        return -99;
    }

    default Boolean getrulheat() {
        return Boolean.FALSE;
    }

    default Boolean getstatengin() {
        return Boolean.FALSE;
    }

    default boolean getsun() {
        return false;
    }

    default int getvod() {
        return 0;
    }

    default Boolean getzadheat() {
        return Boolean.FALSE;
    }

    /* JADX INFO: renamed from: SH */
    default void m1617SH() {
    }

    default void StartHUD() {
    }

    default void offLaneDeparture() {
    }

    default void offSpeedLimitAlarm() {
    }

    default void offStartStop() {
    }

    default void carsavvod(int i10) {
    }

    default void carsetvod(int i10) {
    }

    default void lobheatonoff(Boolean bool) {
    }

    default void parkonoff(Boolean bool) {
    }

    default void rulheatonoff(Boolean bool) {
    }

    default void setRecirculation(boolean z9) {
    }

    default void sunupdown(Boolean bool) {
    }

    default void zadheatonoff(Boolean bool) {
    }

    default void bezoff(BezFunEnum bezFunEnum, boolean z9) {
    }

    default void carZadSeatHeat(int i10, int i11) {
    }

    default void carZadSeatVent(int i10, int i11) {
    }

    default void carsetheat(int i10, int i11) {
    }

    default void carsetvent(int i10, int i11) {
    }

    default void hybrid(HFunEnum hFunEnum, boolean z9) {
    }

    default void setCabinTemp(int i10, float f8) {
    }

    default void SendHUD(String str, int i10, int i11, int i12) {
    }
}
