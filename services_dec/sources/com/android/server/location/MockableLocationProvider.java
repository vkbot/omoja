package com.android.server.location;

import android.location.Location;
import android.os.Bundle;
import com.android.internal.location.ProviderRequest;
import com.android.internal.util.ConcurrentUtils;
import com.android.internal.util.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class MockableLocationProvider extends AbstractLocationProvider {
    private MockProvider mMockProvider;
    private final Object mOwnerLock;
    private AbstractLocationProvider mProvider;
    private AbstractLocationProvider mRealProvider;
    private ProviderRequest mRequest;

    public MockableLocationProvider(Object ownerLock, AbstractLocationProvider.Listener listener) {
        super(ConcurrentUtils.DIRECT_EXECUTOR, (Set<String>) Collections.emptySet());
        this.mOwnerLock = ownerLock;
        this.mRequest = ProviderRequest.EMPTY_REQUEST;
        setListener(listener);
    }

    public AbstractLocationProvider getProvider() {
        AbstractLocationProvider abstractLocationProvider;
        synchronized (this.mOwnerLock) {
            abstractLocationProvider = this.mProvider;
        }
        return abstractLocationProvider;
    }

    public void setRealProvider(AbstractLocationProvider provider) {
        synchronized (this.mOwnerLock) {
            if (this.mRealProvider == provider) {
                return;
            }
            this.mRealProvider = provider;
            if (!isMock()) {
                setProviderLocked(this.mRealProvider);
            }
        }
    }

    public void setMockProvider(MockProvider provider) {
        synchronized (this.mOwnerLock) {
            if (this.mMockProvider == provider) {
                return;
            }
            this.mMockProvider = provider;
            if (provider != null) {
                setProviderLocked(provider);
            } else {
                setProviderLocked(this.mRealProvider);
            }
        }
    }

    private void setProviderLocked(AbstractLocationProvider provider) {
        AbstractLocationProvider.State newState;
        ProviderRequest providerRequest;
        if (this.mProvider == provider) {
            return;
        }
        AbstractLocationProvider oldProvider = this.mProvider;
        this.mProvider = provider;
        if (oldProvider != null) {
            oldProvider.setListener(null);
            oldProvider.setRequest(ProviderRequest.EMPTY_REQUEST);
        }
        AbstractLocationProvider abstractLocationProvider = this.mProvider;
        if (abstractLocationProvider != null) {
            newState = abstractLocationProvider.setListener(new ListenerWrapper(abstractLocationProvider));
        } else {
            newState = AbstractLocationProvider.State.EMPTY_STATE;
        }
        ProviderRequest oldRequest = this.mRequest;
        setState(newState);
        AbstractLocationProvider abstractLocationProvider2 = this.mProvider;
        if (abstractLocationProvider2 != null && oldRequest == (providerRequest = this.mRequest)) {
            abstractLocationProvider2.setRequest(providerRequest);
        }
    }

    public boolean isMock() {
        boolean z;
        synchronized (this.mOwnerLock) {
            z = this.mMockProvider != null && this.mProvider == this.mMockProvider;
        }
        return z;
    }

    public void setMockProviderAllowed(boolean allowed) {
        synchronized (this.mOwnerLock) {
            Preconditions.checkState(isMock());
            this.mMockProvider.setProviderAllowed(allowed);
        }
    }

    public void setMockProviderLocation(Location location) {
        synchronized (this.mOwnerLock) {
            Preconditions.checkState(isMock());
            this.mMockProvider.setProviderLocation(location);
        }
    }

    public ProviderRequest getCurrentRequest() {
        ProviderRequest providerRequest;
        synchronized (this.mOwnerLock) {
            providerRequest = this.mRequest;
        }
        return providerRequest;
    }

    @Override // com.android.server.location.AbstractLocationProvider
    protected void onSetRequest(ProviderRequest request) {
        synchronized (this.mOwnerLock) {
            if (request == this.mRequest) {
                return;
            }
            this.mRequest = request;
            if (this.mProvider != null) {
                this.mProvider.setRequest(request);
            }
        }
    }

    @Override // com.android.server.location.AbstractLocationProvider
    protected void onExtraCommand(int uid, int pid, String command, Bundle extras) {
        synchronized (this.mOwnerLock) {
            if (this.mProvider != null) {
                this.mProvider.sendExtraCommand(uid, pid, command, extras);
            }
        }
    }

    @Override // com.android.server.location.AbstractLocationProvider
    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        AbstractLocationProvider provider;
        Preconditions.checkState(!Thread.holdsLock(this.mOwnerLock));
        synchronized (this.mOwnerLock) {
            provider = this.mProvider;
            pw.println("allowed=" + getState().allowed);
            pw.println("properties=" + getState().properties);
            pw.println("packages=" + getState().providerPackageNames);
            pw.println("request=" + this.mRequest);
        }
        if (provider != null) {
            provider.dump(fd, pw, args);
        }
    }

    private class ListenerWrapper implements AbstractLocationProvider.Listener {
        private final AbstractLocationProvider mListenerProvider;

        private ListenerWrapper(AbstractLocationProvider listenerProvider) {
            this.mListenerProvider = listenerProvider;
        }

        @Override // com.android.server.location.AbstractLocationProvider.Listener
        public final void onStateChanged(AbstractLocationProvider.State oldState, AbstractLocationProvider.State newState) {
            synchronized (MockableLocationProvider.this.mOwnerLock) {
                if (this.mListenerProvider != MockableLocationProvider.this.mProvider) {
                    return;
                }
                MockableLocationProvider.this.setState(newState);
            }
        }

        @Override // com.android.server.location.AbstractLocationProvider.Listener
        public final void onReportLocation(Location location) {
            synchronized (MockableLocationProvider.this.mOwnerLock) {
                if (this.mListenerProvider != MockableLocationProvider.this.mProvider) {
                    return;
                }
                MockableLocationProvider.this.reportLocation(location);
            }
        }

        @Override // com.android.server.location.AbstractLocationProvider.Listener
        public final void onReportLocation(List<Location> locations) {
            synchronized (MockableLocationProvider.this.mOwnerLock) {
                if (this.mListenerProvider != MockableLocationProvider.this.mProvider) {
                    return;
                }
                MockableLocationProvider.this.reportLocation(locations);
            }
        }
    }
}
