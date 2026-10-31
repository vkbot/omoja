package com.example.navistart.cores;

import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface CarCmdProxy {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default float akbvolt() {
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default JSONObject c(JSONObject jSONObject) {
        return new JSONObject();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default int cargetheat(int i9) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default int cargetvent(int i9) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default float getCabinTemp(int i9) {
        return -99.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Boolean getParkOnOff() {
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default int getRPM() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default int getSpeed() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default int getcarZadSeatHeat(int i9) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default int getcarZadSeatVent(int i9) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Boolean getlobheat() {
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default int getouttemp() {
        return -99;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Boolean getrulheat() {
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Boolean getstatengin() {
        return Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean getsun() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default int getvod() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Boolean getzadheat() {
        return Boolean.FALSE;
    }

    default void SH() {
    }

    default void StartHUD() {
    }

    default void offLaneDeparture() {
    }

    default void offSpeedLimitAlarm() {
    }

    default void offStartStop() {
    }

    default void carsavvod(int i9) {
    }

    default void carsetvod(int i9) {
    }

    default void lobheatonoff(Boolean bool) {
    }

    default void parkonoff(Boolean bool) {
    }

    default void rulheatonoff(Boolean bool) {
    }

    default void setRecirculation(boolean z8) {
    }

    default void sunupdown(Boolean bool) {
    }

    default void zadheatonoff(Boolean bool) {
    }

    default void bezoff(BezFunEnum bezFunEnum, boolean z8) {
    }

    default void carZadSeatHeat(int i9, int i10) {
    }

    default void carZadSeatVent(int i9, int i10) {
    }

    default void carsetheat(int i9, int i10) {
    }

    default void carsetvent(int i9, int i10) {
    }

    default void hybrid(HFunEnum hFunEnum, boolean z8) {
    }

    default void setCabinTemp(int i9, float f8) {
    }

    default void SendHUD(String str, int i9, int i10, int i11) {
    }
}
