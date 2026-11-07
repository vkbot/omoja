package com.android.server.connectivity;

import android.net.NetworkRequest;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class NetworkRanker {
    public NetworkAgentInfo getBestNetwork(NetworkRequest request, Collection<NetworkAgentInfo> nais) {
        NetworkAgentInfo bestNetwork = null;
        int bestScore = Integer.MIN_VALUE;
        for (NetworkAgentInfo nai : nais) {
            if (nai.satisfies(request) && nai.getCurrentScore() > bestScore) {
                bestNetwork = nai;
                bestScore = nai.getCurrentScore();
            }
        }
        return bestNetwork;
    }
}
