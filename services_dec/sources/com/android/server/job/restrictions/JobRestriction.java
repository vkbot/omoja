package com.android.server.job.restrictions;

import android.util.proto.ProtoOutputStream;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.job.JobSchedulerService;
import com.android.server.job.controllers.JobStatus;

/* JADX INFO: loaded from: classes.dex */
public abstract class JobRestriction {
    private final int mReason;
    final JobSchedulerService mService;

    public abstract void dumpConstants(ProtoOutputStream protoOutputStream);

    public abstract void dumpConstants(IndentingPrintWriter indentingPrintWriter);

    public abstract boolean isJobRestricted(JobStatus jobStatus);

    JobRestriction(JobSchedulerService service, int reason) {
        this.mService = service;
        this.mReason = reason;
    }

    public void onSystemServicesReady() {
    }

    public final int getReason() {
        return this.mReason;
    }
}
