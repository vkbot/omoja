package ai.onnxruntime.telemetry;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
class ConnectivityCallback extends ConnectivityManager.NetworkCallback {
    private boolean m_metered;
    private final HttpClient m_parent;

    public ConnectivityCallback(HttpClient httpClient, boolean z9) {
        this.m_parent = httpClient;
        this.m_metered = z9;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(@Nullable Network network, @NonNull NetworkCapabilities networkCapabilities) {
        boolean z9 = !networkCapabilities.hasCapability(11);
        if (z9 != this.m_metered) {
            this.m_metered = z9;
            this.m_parent.onCostChange(z9);
        }
    }
}
