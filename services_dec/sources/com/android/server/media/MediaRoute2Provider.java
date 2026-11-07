package com.android.server.media;

import android.content.ComponentName;
import android.media.MediaRoute2ProviderInfo;
import android.media.RouteDiscoveryPreference;
import android.media.RoutingSessionInfo;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
abstract class MediaRoute2Provider {
    Callback mCallback;
    final ComponentName mComponentName;
    boolean mIsSystemRouteProvider;
    private volatile MediaRoute2ProviderInfo mProviderInfo;
    final String mUniqueId;
    final Object mLock = new Object();
    final List<RoutingSessionInfo> mSessionInfos = new ArrayList();

    public interface Callback {
        void onProviderStateChanged(MediaRoute2Provider mediaRoute2Provider);

        void onRequestFailed(MediaRoute2Provider mediaRoute2Provider, long j, int i);

        void onSessionCreated(MediaRoute2Provider mediaRoute2Provider, long j, RoutingSessionInfo routingSessionInfo);

        void onSessionReleased(MediaRoute2Provider mediaRoute2Provider, RoutingSessionInfo routingSessionInfo);

        void onSessionUpdated(MediaRoute2Provider mediaRoute2Provider, RoutingSessionInfo routingSessionInfo);
    }

    public abstract void deselectRoute(long j, String str, String str2);

    public abstract void prepareReleaseSession(String str);

    public abstract void releaseSession(long j, String str);

    public abstract void requestCreateSession(long j, String str, String str2, Bundle bundle);

    public abstract void selectRoute(long j, String str, String str2);

    public abstract void setRouteVolume(long j, String str, int i);

    public abstract void setSessionVolume(long j, String str, int i);

    public abstract void transferToRoute(long j, String str, String str2);

    public abstract void updateDiscoveryPreference(RouteDiscoveryPreference routeDiscoveryPreference);

    MediaRoute2Provider(ComponentName componentName) {
        Objects.requireNonNull(componentName, "Component name must not be null.");
        this.mComponentName = componentName;
        this.mUniqueId = componentName.flattenToShortString();
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public String getUniqueId() {
        return this.mUniqueId;
    }

    public MediaRoute2ProviderInfo getProviderInfo() {
        return this.mProviderInfo;
    }

    public List<RoutingSessionInfo> getSessionInfos() {
        ArrayList arrayList;
        synchronized (this.mLock) {
            arrayList = new ArrayList(this.mSessionInfos);
        }
        return arrayList;
    }

    void setProviderState(MediaRoute2ProviderInfo providerInfo) {
        if (providerInfo == null) {
            this.mProviderInfo = null;
        } else {
            this.mProviderInfo = new MediaRoute2ProviderInfo.Builder(providerInfo).setUniqueId(this.mUniqueId).setSystemRouteProvider(this.mIsSystemRouteProvider).build();
        }
    }

    void notifyProviderState() {
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onProviderStateChanged(this);
        }
    }

    void setAndNotifyProviderState(MediaRoute2ProviderInfo providerInfo) {
        setProviderState(providerInfo);
        notifyProviderState();
    }

    public boolean hasComponentName(String packageName, String className) {
        return this.mComponentName.getPackageName().equals(packageName) && this.mComponentName.getClassName().equals(className);
    }
}
