package com.example.navistart.cores;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface ProLanProxy {
    void DisplayAreaOpen(int i10);

    int getGuDisplayID();

    int getGuPassDisplayID();

    int getHUDDisplayID();

    boolean getMO();

    int getPriDisplayID();

    default int getZaPassDisplayID() {
        return -1;
    }

    void onIfoSend(String str, String str2, String str3, Bitmap bitmap);

    void setMusicPlayTime(int i10, int i11);

    void setMusicStatus(boolean z9);

    default void DisplayAreaOpenDef() {
    }
}
