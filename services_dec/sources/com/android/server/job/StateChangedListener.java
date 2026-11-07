package com.android.server.job;

import com.android.server.job.controllers.JobStatus;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface StateChangedListener {
    void onControllerStateChanged();

    void onDeviceIdleStateChanged(boolean z);

    void onRestrictedBucketChanged(List<JobStatus> list);

    void onRunJobNow(JobStatus jobStatus);
}
