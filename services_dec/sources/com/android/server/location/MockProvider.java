package com.android.server.location;

import android.location.Location;
import android.os.Bundle;
import com.android.internal.location.ProviderProperties;
import com.android.internal.location.ProviderRequest;
import com.android.internal.util.ConcurrentUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class MockProvider extends AbstractLocationProvider {
    private Location mLocation;

    public MockProvider(ProviderProperties properties) {
        super(ConcurrentUtils.DIRECT_EXECUTOR, (Set<String>) Collections.emptySet());
        setProperties(properties);
    }

    public void setProviderAllowed(boolean allowed) {
        setAllowed(allowed);
    }

    public void setProviderLocation(Location l) {
        Location location = new Location(l);
        location.setIsFromMockProvider(true);
        this.mLocation = location;
        reportLocation(location);
    }

    @Override // com.android.server.location.AbstractLocationProvider
    public void onSetRequest(ProviderRequest request) {
    }

    @Override // com.android.server.location.AbstractLocationProvider
    protected void onExtraCommand(int uid, int pid, String command, Bundle extras) {
    }

    @Override // com.android.server.location.AbstractLocationProvider
    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("last mock location=" + this.mLocation);
    }
}
