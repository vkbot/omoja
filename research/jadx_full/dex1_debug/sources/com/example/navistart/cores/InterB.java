package com.example.navistart.cores;

import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface InterB {
    void a(Boolean bool, String str, Long l9, Long l10);

    void bind(String str);

    void e(String str, Context context);

    void fuul(Context context);

    CarCmdProxy gcmdp();

    Class<?> getA(String str);

    String getK();

    int getR(String str);

    ScheduledExecutorService getScheduler(String str, int i9);

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

    OkHttpClient h();

    void l(String str);

    void lf(Context context, Class<? extends Fragment> cls, Bundle bundle);

    void li(String str);

    void li(String str, ColorText colorText);

    void mb();

    void mn();

    void mpa();

    void pc();

    void setMO(boolean z8);

    void ss();

    default void setMediaVolumePercent(int i9, Context context) {
    }
}
