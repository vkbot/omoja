package com.android.server.job.restrictions;

import android.os.PowerManager;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.job.JobSchedulerService;
import com.android.server.job.controllers.JobStatus;

/* JADX INFO: loaded from: classes.dex */
public class ThermalStatusRestriction extends JobRestriction {
    private static final String TAG = "ThermalStatusRestriction";
    private volatile boolean mIsThermalRestricted;
    private PowerManager mPowerManager;

    public ThermalStatusRestriction(JobSchedulerService service) {
        super(service, 5);
        this.mIsThermalRestricted = false;
    }

    @Override // com.android.server.job.restrictions.JobRestriction
    public void onSystemServicesReady() {
        PowerManager powerManager = (PowerManager) this.mService.getContext().getSystemService(PowerManager.class);
        this.mPowerManager = powerManager;
        powerManager.addThermalStatusListener(new PowerManager.OnThermalStatusChangedListener() { // from class: com.android.server.job.restrictions.ThermalStatusRestriction.1
            @Override // android.os.PowerManager.OnThermalStatusChangedListener
            public void onThermalStatusChanged(int status) {
                boolean shouldBeActive = status >= 3;
                if (ThermalStatusRestriction.this.mIsThermalRestricted != shouldBeActive) {
                    ThermalStatusRestriction.this.mIsThermalRestricted = shouldBeActive;
                    ThermalStatusRestriction.this.mService.onControllerStateChanged();
                }
            }
        });
    }

    @Override // com.android.server.job.restrictions.JobRestriction
    public boolean isJobRestricted(JobStatus job) {
        return this.mIsThermalRestricted && job.hasConnectivityConstraint();
    }

    @Override // com.android.server.job.restrictions.JobRestriction
    public void dumpConstants(IndentingPrintWriter pw) {
        pw.print("In thermal throttling?: ");
        pw.print(this.mIsThermalRestricted);
    }

    @Override // com.android.server.job.restrictions.JobRestriction
    public void dumpConstants(ProtoOutputStream proto) {
        proto.write(1133871366163L, this.mIsThermalRestricted);
    }
}
