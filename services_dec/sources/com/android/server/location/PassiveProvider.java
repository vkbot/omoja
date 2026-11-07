package com.android.server.location;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.android.internal.location.ProviderProperties;
import com.android.internal.location.ProviderRequest;
import com.android.internal.util.ConcurrentUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class PassiveProvider extends AbstractLocationProvider {
    private static final ProviderProperties PROPERTIES = new ProviderProperties(false, false, false, false, false, false, false, 1, 2);
    private volatile boolean mReportLocation;

    public PassiveProvider(Context context) {
        super(ConcurrentUtils.DIRECT_EXECUTOR, context);
        this.mReportLocation = false;
        setProperties(PROPERTIES);
        setAllowed(true);
    }

    public void updateLocation(Location location) {
        if (this.mReportLocation) {
            reportLocation(location);
        }
    }

    @Override // com.android.server.location.AbstractLocationProvider
    public void onSetRequest(ProviderRequest request) {
        this.mReportLocation = request.reportLocation;
    }

    @Override // com.android.server.location.AbstractLocationProvider
    protected void onExtraCommand(int uid, int pid, String command, Bundle extras) {
    }

    @Override // com.android.server.location.AbstractLocationProvider
    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
    }
}
