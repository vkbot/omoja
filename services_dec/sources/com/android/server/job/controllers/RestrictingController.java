package com.android.server.job.controllers;

import com.android.server.job.JobSchedulerService;

/* JADX INFO: loaded from: classes.dex */
public abstract class RestrictingController extends StateController {
    public abstract void startTrackingRestrictedJobLocked(JobStatus jobStatus);

    public abstract void stopTrackingRestrictedJobLocked(JobStatus jobStatus);

    RestrictingController(JobSchedulerService service) {
        super(service);
    }
}
