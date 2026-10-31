package ai.onnxruntime.telemetry;

import android.net.ConnectivityManager$NetworkCallback;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ConnectivityCallback extends ConnectivityManager$NetworkCallback {
    private boolean m_metered;
    private final HttpClient m_parent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConnectivityCallback(HttpClient httpClient, boolean z8) {
        this.m_parent = httpClient;
        this.m_metered = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.net.ConnectivityManager$NetworkCallback
    public final void onCapabilitiesChanged(@Nullable Network network, @NonNull NetworkCapabilities networkCapabilities) {
        boolean z8 = !networkCapabilities.hasCapability(11);
        if (z8 != this.m_metered) {
            this.m_metered = z8;
            this.m_parent.onCostChange(z8);
        }
    }
}
