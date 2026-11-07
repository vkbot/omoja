package com.android.server.contentcapture;

import android.content.ComponentName;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.service.contentcapture.ActivityEvent;
import android.service.contentcapture.IContentCaptureService;
import android.service.contentcapture.IContentCaptureServiceCallback;
import android.service.contentcapture.IDataShareCallback;
import android.service.contentcapture.SnapshotData;
import android.util.Slog;
import android.view.contentcapture.ContentCaptureContext;
import android.view.contentcapture.ContentCaptureHelper;
import android.view.contentcapture.DataRemovalRequest;
import android.view.contentcapture.DataShareRequest;
import com.android.internal.infra.AbstractMultiplePendingRequestsRemoteService;
import com.android.internal.infra.AbstractRemoteService;
import com.android.internal.os.IResultReceiver;

/* JADX INFO: loaded from: classes.dex */
final class RemoteContentCaptureService extends AbstractMultiplePendingRequestsRemoteService<RemoteContentCaptureService, IContentCaptureService> {
    private final int mIdleUnbindTimeoutMs;
    private final ContentCapturePerUserService mPerUserService;
    private final IBinder mServerCallback;

    public interface ContentCaptureServiceCallbacks extends AbstractRemoteService.VultureCallback<RemoteContentCaptureService> {
    }

    RemoteContentCaptureService(Context context, String serviceInterface, ComponentName serviceComponentName, IContentCaptureServiceCallback callback, int userId, ContentCapturePerUserService perUserService, boolean bindInstantServiceAllowed, boolean verbose, int idleUnbindTimeoutMs) {
        super(context, serviceInterface, serviceComponentName, userId, perUserService, context.getMainThreadHandler(), (bindInstantServiceAllowed ? 4194304 : 0) | 4096, verbose, 2);
        this.mPerUserService = perUserService;
        this.mServerCallback = callback.asBinder();
        this.mIdleUnbindTimeoutMs = idleUnbindTimeoutMs;
        ensureBoundLocked();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IContentCaptureService getServiceInterface(IBinder service) {
        return IContentCaptureService.Stub.asInterface(service);
    }

    protected long getTimeoutIdleBindMillis() {
        return this.mIdleUnbindTimeoutMs;
    }

    protected void handleOnConnectedStateChanged(boolean connected) {
        if (connected && getTimeoutIdleBindMillis() != 0) {
            scheduleUnbind();
        }
        try {
            if (connected) {
                try {
                    this.mService.onConnected(this.mServerCallback, ContentCaptureHelper.sVerbose, ContentCaptureHelper.sDebug);
                    ContentCaptureMetricsLogger.writeServiceEvent(1, this.mComponentName);
                    return;
                } finally {
                    this.mPerUserService.onConnected();
                }
            }
            this.mService.onDisconnected();
            ContentCaptureMetricsLogger.writeServiceEvent(2, this.mComponentName);
        } catch (Exception e) {
            Slog.w(this.mTag, "Exception calling onConnectedStateChanged(" + connected + "): " + e);
        }
    }

    public void ensureBoundLocked() {
        scheduleBind();
    }

    public void onSessionStarted(final ContentCaptureContext context, final int sessionId, final int uid, final IResultReceiver clientReceiver, final int initialState) {
        scheduleAsyncRequest(new AbstractRemoteService.AsyncRequest() { // from class: com.android.server.contentcapture.-$$Lambda$RemoteContentCaptureService$PMsA3CmwChlM0Qy__Uy6Yr5CFzk
            public final void run(IInterface iInterface) {
                ((IContentCaptureService) iInterface).onSessionStarted(context, sessionId, uid, clientReceiver, initialState);
            }
        });
        ContentCaptureMetricsLogger.writeSessionEvent(sessionId, 1, initialState, getComponentName(), context.getActivityComponent(), false);
    }

    public void onSessionFinished(final int sessionId) {
        scheduleAsyncRequest(new AbstractRemoteService.AsyncRequest() { // from class: com.android.server.contentcapture.-$$Lambda$RemoteContentCaptureService$QbbzaxOFnxJI34vQptxzLE9Vvog
            public final void run(IInterface iInterface) {
                ((IContentCaptureService) iInterface).onSessionFinished(sessionId);
            }
        });
        ContentCaptureMetricsLogger.writeSessionEvent(sessionId, 2, 0, getComponentName(), null, false);
    }

    public void onActivitySnapshotRequest(final int sessionId, final SnapshotData snapshotData) {
        scheduleAsyncRequest(new AbstractRemoteService.AsyncRequest() { // from class: com.android.server.contentcapture.-$$Lambda$RemoteContentCaptureService$WZi4-GWL57wurriOS0cLTQHXrS8
            public final void run(IInterface iInterface) {
                ((IContentCaptureService) iInterface).onActivitySnapshot(sessionId, snapshotData);
            }
        });
    }

    public void onDataRemovalRequest(final DataRemovalRequest request) {
        scheduleAsyncRequest(new AbstractRemoteService.AsyncRequest() { // from class: com.android.server.contentcapture.-$$Lambda$RemoteContentCaptureService$haMfPWsaVUWwKcAPgM3AadAkvOQ
            public final void run(IInterface iInterface) {
                ((IContentCaptureService) iInterface).onDataRemovalRequest(request);
            }
        });
        ContentCaptureMetricsLogger.writeServiceEvent(5, this.mComponentName);
    }

    public void onDataShareRequest(final DataShareRequest request, final IDataShareCallback.Stub dataShareCallback) {
        scheduleAsyncRequest(new AbstractRemoteService.AsyncRequest() { // from class: com.android.server.contentcapture.-$$Lambda$RemoteContentCaptureService$_mh-Du6CgOoVdmP9EpDMBTIRjro
            public final void run(IInterface iInterface) {
                ((IContentCaptureService) iInterface).onDataShared(request, dataShareCallback);
            }
        });
        ContentCaptureMetricsLogger.writeServiceEvent(6, this.mComponentName, request.getPackageName());
    }

    public void onActivityLifecycleEvent(final ActivityEvent event) {
        scheduleAsyncRequest(new AbstractRemoteService.AsyncRequest() { // from class: com.android.server.contentcapture.-$$Lambda$RemoteContentCaptureService$12wkbjo54EUwTPFKOuEn42KWKFg
            public final void run(IInterface iInterface) {
                ((IContentCaptureService) iInterface).onActivityEvent(event);
            }
        });
    }
}
