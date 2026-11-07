package com.android.server.biometrics;

/* JADX INFO: loaded from: classes.dex */
class SensorConfig {
    final int mId;
    final int mModality;
    final int mStrength;

    public SensorConfig(String config) {
        String[] elems = config.split(":");
        this.mId = Integer.parseInt(elems[0]);
        this.mModality = Integer.parseInt(elems[1]);
        this.mStrength = Integer.parseInt(elems[2]);
    }
}
