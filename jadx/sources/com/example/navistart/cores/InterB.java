package com.example.navistart.cores;

import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface InterB {
    /* JADX INFO: renamed from: a */
    void mo1619a(Boolean bool, String str, Long l10, Long l11);

    void bind(String str);

    /* JADX INFO: renamed from: e */
    void mo1620e(String str, Context context);

    void fuul(Context context);

    CarCmdProxy gcmdp();

    Class<?> getA(String str);

    String getK();

    int getR(String str);

    ScheduledExecutorService getScheduler(String str, int i10);

    ScheduledThreadPoolExecutor getScheduler(String str);

    String getbind();

    long getl();

    byte[] getmir();

    byte[] getmiru();

    byte[] getmur();

    byte[] getp2();

    SettingsdProxy getsettingsd();

    ProBroProxy gprobrop();

    ProLanProxy gprolanp();

    /* JADX INFO: renamed from: h */
    OkHttpClient mo1621h();

    /* JADX INFO: renamed from: l */
    void mo1622l(String str);

    /* JADX INFO: renamed from: lf */
    void mo1623lf(Context context, Class<? extends Fragment> cls, Bundle bundle);

    /* JADX INFO: renamed from: li */
    void mo1624li(String str);

    /* JADX INFO: renamed from: li */
    void mo1625li(String str, ColorText colorText);

    /* JADX INFO: renamed from: mb */
    void mo1626mb();

    /* JADX INFO: renamed from: mn */
    void mo1627mn();

    void mpa();

    /* JADX INFO: renamed from: pc */
    void mo1628pc();

    void setMO(boolean z9);

    /* JADX INFO: renamed from: ss */
    void mo1629ss();

    default void setMediaVolumePercent(int i10, Context context) {
    }
}
