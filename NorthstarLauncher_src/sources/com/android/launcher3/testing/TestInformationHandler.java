package com.android.launcher3.testing;

import android.app.Activity;
import android.content.Context;
import android.graphics.Insets;
import android.os.Bundle;
import android.view.WindowInsets;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.R;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ResourceBasedOverride;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.function.Function;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class TestInformationHandler implements ResourceBasedOverride {
    protected Context mContext;
    protected DeviceProfile mDeviceProfile;
    protected LauncherAppState mLauncherAppState;

    public interface BundleSetter<T> {
        void set(Bundle b, String key, T value);
    }

    public static TestInformationHandler newInstance(Context context) {
        return (TestInformationHandler) ResourceBasedOverride.Overrides.getObject(TestInformationHandler.class, context, R.string.test_information_handler_class);
    }

    public void init(Context context) {
        this.mContext = context;
        this.mDeviceProfile = InvariantDeviceProfile.INSTANCE.m166x39265fe7(context).getDeviceProfile(context);
        this.mLauncherAppState = LauncherAppState.getInstanceNoCreate();
    }

    public Bundle call(String method) {
        Bundle bundle = new Bundle();
        method.hashCode();
        switch (method) {
            case "is-launcher-initialized":
                return getUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.TestInformationHandler$$ExternalSyntheticLambda1
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle2, String str, Object obj) {
                        bundle2.putBoolean(str, ((Boolean) obj).booleanValue());
                    }
                }, new Function() { // from class: com.android.launcher3.testing.TestInformationHandler$$ExternalSyntheticLambda2
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return this.f$0.m156x8be103ae((Boolean) obj);
                    }
                }, new Supplier() { // from class: com.android.launcher3.testing.TestInformationHandler$$ExternalSyntheticLambda3
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return TestInformationHandler.lambda$call$1();
                    }
                });
            case "mock-sensor-rotation":
                TestProtocol.sDisableSensorRotation = true;
                return bundle;
            case "window-insets":
                return getUIProperty(new BundleSetter() { // from class: com.android.launcher3.testing.TestInformationHandler$$ExternalSyntheticLambda4
                    @Override // com.android.launcher3.testing.TestInformationHandler.BundleSetter
                    public final void set(Bundle bundle2, String str, Object obj) {
                        bundle2.putParcelable(str, (Insets) obj);
                    }
                }, new Function() { // from class: com.android.launcher3.testing.TestInformationHandler$$ExternalSyntheticLambda5
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return TestInformationHandler.lambda$call$2((Activity) obj);
                    }
                }, new Supplier() { // from class: com.android.launcher3.testing.TestInformationHandler$$ExternalSyntheticLambda6
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return this.f$0.getCurrentActivity();
                    }
                });
            case "icon-height":
                bundle.putInt(TestProtocol.TEST_INFO_RESPONSE_FIELD, this.mDeviceProfile.allAppsCellHeightPx);
                return bundle;
            default:
                return null;
        }
    }

    static /* synthetic */ Boolean lambda$call$1() {
        return true;
    }

    /* JADX INFO: renamed from: lambda$call$0$com-android-launcher3-testing-TestInformationHandler, reason: not valid java name */
    /* synthetic */ Boolean m156x8be103ae(Boolean bool) {
        return Boolean.valueOf(isLauncherInitialized());
    }

    static /* synthetic */ Insets lambda$call$2(Activity activity) {
        WindowInsets rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets();
        return Insets.max(rootWindowInsets.getSystemGestureInsets(), rootWindowInsets.getSystemWindowInsets());
    }

    protected boolean isLauncherInitialized() {
        return Launcher.ACTIVITY_TRACKER.getCreatedActivity() == null || LauncherAppState.getInstance(this.mContext).getModel().isModelLoaded();
    }

    protected Activity getCurrentActivity() {
        return Launcher.ACTIVITY_TRACKER.getCreatedActivity();
    }

    public static <T> Bundle getLauncherUIProperty(BundleSetter<T> bundleSetter, Function<Launcher, T> provider) {
        final ActivityTracker<Launcher> activityTracker = Launcher.ACTIVITY_TRACKER;
        Objects.requireNonNull(activityTracker);
        return getUIProperty(bundleSetter, provider, new Supplier() { // from class: com.android.launcher3.testing.TestInformationHandler$$ExternalSyntheticLambda7
            @Override // java.util.function.Supplier
            public final Object get() {
                return (Launcher) activityTracker.getCreatedActivity();
            }
        });
    }

    private static <S, T> Bundle getUIProperty(final BundleSetter<T> bundleSetter, final Function<S, T> function, final Supplier<S> supplier) {
        try {
            return (Bundle) Executors.MAIN_EXECUTOR.submit(new Callable() { // from class: com.android.launcher3.testing.TestInformationHandler$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return TestInformationHandler.lambda$getUIProperty$3(supplier, function, bundleSetter);
                }
            }).get();
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException(e);
        }
    }

    static /* synthetic */ Bundle lambda$getUIProperty$3(Supplier supplier, Function function, BundleSetter bundleSetter) throws Exception {
        Object obj = supplier.get();
        if (obj == null) {
            return null;
        }
        Object objApply = function.apply(obj);
        Bundle bundle = new Bundle();
        bundleSetter.set(bundle, TestProtocol.TEST_INFO_RESPONSE_FIELD, objApply);
        return bundle;
    }
}
