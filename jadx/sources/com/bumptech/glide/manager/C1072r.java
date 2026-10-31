package com.bumptech.glide.manager;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import com.woha.wifim.MainWifiManadger;
import p025c0.AbstractC0947p;

/* JADX INFO: renamed from: com.bumptech.glide.manager.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1072r extends ConnectivityManager.NetworkCallback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1174a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f1175b;

    public /* synthetic */ C1072r(int i10, Object obj) {
        this.f1174a = i10;
        this.f1175b = obj;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        switch (this.f1174a) {
            case 0:
                AbstractC0947p.m1089f().post(new RunnableC1071q(this, true, 0));
                break;
            default:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) this.f1175b;
                String str = MainWifiManadger.f2888v;
                mainWifiManadger.m2220z();
                break;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        switch (this.f1174a) {
            case 1:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) this.f1175b;
                String str = MainWifiManadger.f2888v;
                mainWifiManadger.m2220z();
                break;
            default:
                super.onCapabilitiesChanged(network, networkCapabilities);
                break;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        switch (this.f1174a) {
            case 0:
                AbstractC0947p.m1089f().post(new RunnableC1071q(this, false, 0));
                break;
            default:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) this.f1175b;
                String str = MainWifiManadger.f2888v;
                mainWifiManadger.m2220z();
                break;
        }
    }
}
