package com.bumptech.glide.manager;

import android.net.ConnectivityManager$NetworkCallback;
import android.net.Network;
import android.net.NetworkCapabilities;
import com.woha.wifim.MainWifiManadger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r extends ConnectivityManager$NetworkCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f611b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r(int i9, Object obj) {
        this.f610a = i9;
        this.f611b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.net.ConnectivityManager$NetworkCallback
    public final void onAvailable(Network network) {
        switch (this.f610a) {
            case 0:
                c0.p.f().post(new q(this, true, 0));
                break;
            default:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) this.f611b;
                String str = MainWifiManadger.f1632v;
                mainWifiManadger.z();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.net.ConnectivityManager$NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        switch (this.f610a) {
            case 1:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) this.f611b;
                String str = MainWifiManadger.f1632v;
                mainWifiManadger.z();
                break;
            default:
                super.onCapabilitiesChanged(network, networkCapabilities);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.net.ConnectivityManager$NetworkCallback
    public final void onLost(Network network) {
        switch (this.f610a) {
            case 0:
                c0.p.f().post(new q(this, false, 0));
                break;
            default:
                MainWifiManadger mainWifiManadger = (MainWifiManadger) this.f611b;
                String str = MainWifiManadger.f1632v;
                mainWifiManadger.z();
                break;
        }
    }
}
