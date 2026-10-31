package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import p003a2.EnumC0005b;
import p039d2.C1254j;
import p039d2.C1263s;
import p047e0.RunnableC1375j2;
import p100j2.C1953i;
import p100j2.RunnableC1948d;
import p142n0.C2467b;
import p143n2.AbstractC2473a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@RequiresApi(api = 21)
public class JobInfoSchedulerService extends JobService {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f1998b = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i10 = jobParameters.getExtras().getInt("priority");
        int i11 = jobParameters.getExtras().getInt("attemptNumber");
        C1263s.m2260b(getApplicationContext());
        if (string == null) {
            C2467b.m3828n("Null backendName");
            return false;
        }
        EnumC0005b enumC0005bM3840b = AbstractC2473a.m3840b(i10);
        byte[] bArrDecode = string2 != null ? Base64.decode(string2, 0) : null;
        C1953i c1953i = C1263s.m2259a().f2982a;
        c1953i.f5331e.execute(new RunnableC1948d(c1953i, new C1254j(string, bArrDecode, enumC0005bM3840b), i11, new RunnableC1375j2(11, this, jobParameters), 0));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
