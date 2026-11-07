package com.android.server.location;

import android.content.Context;
import android.location.Location;
import android.os.Binder;
import android.os.Bundle;
import android.util.ArraySet;
import com.android.internal.location.ProviderProperties;
import com.android.internal.location.ProviderRequest;
import com.android.internal.util.function.QuintConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiConsumer;
import java.util.function.UnaryOperator;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractLocationProvider {
    protected final Executor mExecutor;
    private final AtomicReference<InternalState> mInternalState;

    public interface Listener {
        void onReportLocation(Location location);

        void onReportLocation(List<Location> list);

        void onStateChanged(State state, State state2);
    }

    public abstract void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    protected abstract void onExtraCommand(int i, int i2, String str, Bundle bundle);

    protected abstract void onSetRequest(ProviderRequest providerRequest);

    public static final class State {
        public static final State EMPTY_STATE = new State(false, null, Collections.emptySet());
        public final boolean allowed;
        public final ProviderProperties properties;
        public final Set<String> providerPackageNames;

        private State(boolean allowed, ProviderProperties properties, Set<String> providerPackageNames) {
            this.allowed = allowed;
            this.properties = properties;
            Objects.requireNonNull(providerPackageNames);
            this.providerPackageNames = providerPackageNames;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public State withAllowed(boolean allowed) {
            if (allowed == this.allowed) {
                return this;
            }
            return new State(allowed, this.properties, this.providerPackageNames);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public State withProperties(ProviderProperties properties) {
            if (properties.equals(this.properties)) {
                return this;
            }
            return new State(this.allowed, properties, this.providerPackageNames);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public State withProviderPackageNames(Set<String> providerPackageNames) {
            if (providerPackageNames.equals(this.providerPackageNames)) {
                return this;
            }
            return new State(this.allowed, this.properties, Collections.unmodifiableSet(new ArraySet(providerPackageNames)));
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (!(o instanceof State)) {
                return false;
            }
            State state = (State) o;
            return this.allowed == state.allowed && this.properties == state.properties && this.providerPackageNames.equals(state.providerPackageNames);
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(this.allowed), this.properties, this.providerPackageNames);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class InternalState {
        public final Listener listener;
        public final State state;

        private InternalState(Listener listener, State state) {
            this.listener = listener;
            this.state = state;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public InternalState withListener(Listener listener) {
            if (listener == this.listener) {
                return this;
            }
            return new InternalState(listener, this.state);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public InternalState withState(State state) {
            if (state.equals(this.state)) {
                return this;
            }
            return new InternalState(this.listener, state);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public InternalState withState(UnaryOperator<State> operator) {
            return withState((State) operator.apply(this.state));
        }
    }

    protected AbstractLocationProvider(Executor executor, Context context) {
        this(executor, (Set<String>) Collections.singleton(context.getPackageName()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected AbstractLocationProvider(Executor executor, Set<String> set) {
        this.mExecutor = executor;
        this.mInternalState = new AtomicReference<>(new InternalState(null, State.EMPTY_STATE.withProviderPackageNames(set)));
    }

    protected State setListener(final Listener listener) {
        return this.mInternalState.updateAndGet(new UnaryOperator() { // from class: com.android.server.location.-$$Lambda$AbstractLocationProvider$diUZq3K1KUpjC4EqB0SQY_fHHGM
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((AbstractLocationProvider.InternalState) obj).withListener(listener);
            }
        }).state;
    }

    public State getState() {
        return this.mInternalState.get().state;
    }

    protected void setState(final State newState) {
        InternalState oldInternalState = this.mInternalState.getAndUpdate(new UnaryOperator() { // from class: com.android.server.location.-$$Lambda$AbstractLocationProvider$I29l5_Y-rKhaHygNa-fvF70mzA0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((AbstractLocationProvider.InternalState) obj).withState(newState);
            }
        });
        if (!newState.equals(oldInternalState.state) && oldInternalState.listener != null) {
            long identity = Binder.clearCallingIdentity();
            try {
                oldInternalState.listener.onStateChanged(oldInternalState.state, newState);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    private void setState(final UnaryOperator<State> operator) {
        InternalState oldInternalState = this.mInternalState.getAndUpdate(new UnaryOperator() { // from class: com.android.server.location.-$$Lambda$AbstractLocationProvider$kFGsZg9Hx50h6WYQeAMQABkRKNU
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((AbstractLocationProvider.InternalState) obj).withState((UnaryOperator<AbstractLocationProvider.State>) operator);
            }
        });
        State newState = (State) operator.apply(oldInternalState.state);
        if (!newState.equals(oldInternalState.state) && oldInternalState.listener != null) {
            long identity = Binder.clearCallingIdentity();
            try {
                oldInternalState.listener.onStateChanged(oldInternalState.state, newState);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    protected boolean isAllowed() {
        return this.mInternalState.get().state.allowed;
    }

    protected ProviderProperties getProperties() {
        return this.mInternalState.get().state.properties;
    }

    protected Set<String> getProviderPackages() {
        return this.mInternalState.get().state.providerPackageNames;
    }

    protected void setAllowed(final boolean allowed) {
        setState(new UnaryOperator() { // from class: com.android.server.location.-$$Lambda$AbstractLocationProvider$s_g7M1EFAxoisWC6LYYgN-hWTwc
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((AbstractLocationProvider.State) obj).withAllowed(allowed);
            }
        });
    }

    protected void setProperties(final ProviderProperties properties) {
        setState(new UnaryOperator() { // from class: com.android.server.location.-$$Lambda$AbstractLocationProvider$wZCGZbIMAspHRG64AcKlNjhWJEk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((AbstractLocationProvider.State) obj).withProperties(properties);
            }
        });
    }

    protected void setPackageNames(final Set<String> packageNames) {
        setState(new UnaryOperator() { // from class: com.android.server.location.-$$Lambda$AbstractLocationProvider$Cz0MzfhYL-KpWWW0XmxsZTNwnI0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((AbstractLocationProvider.State) obj).withProviderPackageNames(packageNames);
            }
        });
    }

    protected void reportLocation(Location location) {
        Listener listener = this.mInternalState.get().listener;
        if (listener != null) {
            long identity = Binder.clearCallingIdentity();
            try {
                listener.onReportLocation(location);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    protected void reportLocation(List<Location> locations) {
        Listener listener = this.mInternalState.get().listener;
        if (listener != null) {
            long identity = Binder.clearCallingIdentity();
            try {
                listener.onReportLocation(locations);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    public final void setRequest(ProviderRequest request) {
        this.mExecutor.execute(PooledLambda.obtainRunnable(new BiConsumer() { // from class: com.android.server.location.-$$Lambda$hUPZkLaip7KhcHlSjfSfX2fzk_I
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((AbstractLocationProvider) obj).onSetRequest((ProviderRequest) obj2);
            }
        }, this, request).recycleOnUse());
    }

    public final void sendExtraCommand(int uid, int pid, String command, Bundle extras) {
        this.mExecutor.execute(PooledLambda.obtainRunnable(new QuintConsumer() { // from class: com.android.server.location.-$$Lambda$emxC4DBjBtjrPCOadFmmcL-kgiw
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                ((AbstractLocationProvider) obj).onExtraCommand(((Integer) obj2).intValue(), ((Integer) obj3).intValue(), (String) obj4, (Bundle) obj5);
            }
        }, this, Integer.valueOf(uid), Integer.valueOf(pid), command, extras).recycleOnUse());
    }
}
