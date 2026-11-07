package com.android.server.accessibility;

import android.R;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.IAccessibilityServiceClient;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ParceledListSlice;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Slog;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.inputmethod.InputMethodManagerInternal;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.WindowManagerInternal;
import java.lang.ref.WeakReference;
import java.util.Set;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
class AccessibilityServiceConnection extends AbstractAccessibilityServiceConnection {
    private static final String LOG_TAG = "AccessibilityServiceConnection";
    final ActivityTaskManagerInternal mActivityTaskManagerService;
    final Intent mIntent;
    private final Handler mMainHandler;
    final WeakReference<AccessibilityUserState> mUserStateWeakReference;

    AccessibilityServiceConnection(AccessibilityUserState userState, Context context, ComponentName componentName, AccessibilityServiceInfo accessibilityServiceInfo, int id, Handler mainHandler, Object lock, AccessibilitySecurityPolicy securityPolicy, AbstractAccessibilityServiceConnection.SystemSupport systemSupport, WindowManagerInternal windowManagerInternal, SystemActionPerformer systemActionPerfomer, AccessibilityWindowManager awm, ActivityTaskManagerInternal activityTaskManagerService) {
        super(context, componentName, accessibilityServiceInfo, id, mainHandler, lock, securityPolicy, systemSupport, windowManagerInternal, systemActionPerfomer, awm);
        this.mUserStateWeakReference = new WeakReference<>(userState);
        Intent component = new Intent().setComponent(this.mComponentName);
        this.mIntent = component;
        this.mMainHandler = mainHandler;
        component.putExtra("android.intent.extra.client_label", R.string.add_account_button_label);
        this.mActivityTaskManagerService = activityTaskManagerService;
        long identity = Binder.clearCallingIdentity();
        try {
            this.mIntent.putExtra("android.intent.extra.client_intent", this.mSystemSupport.getPendingIntentActivity(this.mContext, 0, new Intent("android.settings.ACCESSIBILITY_SETTINGS"), 67108864));
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void bindLocked() {
        AccessibilityUserState userState = this.mUserStateWeakReference.get();
        if (userState == null) {
            return;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            int flags = userState.getBindInstantServiceAllowedLocked() ? 34607105 | 4194304 : 34607105;
            if (this.mService == null && this.mContext.bindServiceAsUser(this.mIntent, this, flags, new UserHandle(userState.mUserId))) {
                userState.getBindingServicesLocked().add(this.mComponentName);
            }
            Binder.restoreCallingIdentity(identity);
            this.mActivityTaskManagerService.setAllowAppSwitches(this.mComponentName.flattenToString(), this.mAccessibilityServiceInfo.getResolveInfo().serviceInfo.applicationInfo.uid, userState.mUserId);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    public void unbindLocked() {
        this.mContext.unbindService(this);
        AccessibilityUserState userState = this.mUserStateWeakReference.get();
        if (userState == null) {
            return;
        }
        userState.removeServiceLocked(this);
        this.mSystemSupport.getMagnificationController().resetAllIfNeeded(this.mId);
        this.mActivityTaskManagerService.setAllowAppSwitches(this.mComponentName.flattenToString(), -1, userState.mUserId);
        resetLocked();
    }

    public boolean canRetrieveInteractiveWindowsLocked() {
        return this.mSecurityPolicy.canRetrieveWindowContentLocked(this) && this.mRetrieveInteractiveWindows;
    }

    public void disableSelf() {
        synchronized (this.mLock) {
            AccessibilityUserState userState = this.mUserStateWeakReference.get();
            if (userState == null) {
                return;
            }
            if (userState.getEnabledServicesLocked().remove(this.mComponentName)) {
                long identity = Binder.clearCallingIdentity();
                try {
                    this.mSystemSupport.persistComponentNamesToSettingLocked("enabled_accessibility_services", userState.getEnabledServicesLocked(), userState.mUserId);
                    Binder.restoreCallingIdentity(identity);
                    this.mSystemSupport.onClientChangeLocked(false);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder service) {
        synchronized (this.mLock) {
            if (this.mService != service) {
                if (this.mService != null) {
                    this.mService.unlinkToDeath(this, 0);
                }
                this.mService = service;
                try {
                    this.mService.linkToDeath(this, 0);
                } catch (RemoteException e) {
                    Slog.e(LOG_TAG, "Failed registering death link");
                    binderDied();
                    return;
                }
            }
            this.mServiceInterface = IAccessibilityServiceClient.Stub.asInterface(service);
            AccessibilityUserState userState = this.mUserStateWeakReference.get();
            if (userState == null) {
                return;
            }
            userState.addServiceLocked(this);
            this.mSystemSupport.onClientChangeLocked(false);
            this.mMainHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityServiceConnection$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((AccessibilityServiceConnection) obj).initializeService();
                }
            }, this));
        }
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection
    public AccessibilityServiceInfo getServiceInfo() {
        return this.mAccessibilityServiceInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeService() {
        IAccessibilityServiceClient serviceInterface = null;
        synchronized (this.mLock) {
            AccessibilityUserState userState = this.mUserStateWeakReference.get();
            if (userState == null) {
                return;
            }
            Set<ComponentName> bindingServices = userState.getBindingServicesLocked();
            Set<ComponentName> crashedServices = userState.getCrashedServicesLocked();
            if (bindingServices.contains(this.mComponentName) || crashedServices.contains(this.mComponentName)) {
                bindingServices.remove(this.mComponentName);
                crashedServices.remove(this.mComponentName);
                this.mAccessibilityServiceInfo.crashed = false;
                serviceInterface = this.mServiceInterface;
            }
            if (serviceInterface != null && !userState.getEnabledServicesLocked().contains(this.mComponentName)) {
                this.mSystemSupport.onClientChangeLocked(false);
                return;
            }
            if (serviceInterface == null) {
                binderDied();
                return;
            }
            try {
                serviceInterface.init(this, this.mId, this.mOverlayWindowTokens.get(0));
            } catch (RemoteException re) {
                Slog.w(LOG_TAG, "Error while setting connection for service: " + serviceInterface, re);
                binderDied();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        binderDied();
        AccessibilityUserState userState = this.mUserStateWeakReference.get();
        if (userState != null) {
            this.mActivityTaskManagerService.setAllowAppSwitches(this.mComponentName.flattenToString(), -1, userState.mUserId);
        }
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection
    protected boolean hasRightsToCurrentUserLocked() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 0 || callingUid == 1000 || callingUid == 2000 || this.mSecurityPolicy.resolveProfileParentLocked(UserHandle.getUserId(callingUid)) == this.mSystemSupport.getCurrentUserIdLocked() || this.mSecurityPolicy.hasPermission("android.permission.INTERACT_ACROSS_USERS") || this.mSecurityPolicy.hasPermission("android.permission.INTERACT_ACROSS_USERS_FULL")) {
            return true;
        }
        return false;
    }

    public boolean setSoftKeyboardShowMode(int showMode) {
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                return false;
            }
            AccessibilityUserState userState = this.mUserStateWeakReference.get();
            if (userState == null) {
                return false;
            }
            return userState.setSoftKeyboardModeLocked(showMode, this.mComponentName);
        }
    }

    public int getSoftKeyboardShowMode() {
        AccessibilityUserState userState = this.mUserStateWeakReference.get();
        if (userState != null) {
            return userState.getSoftKeyboardShowModeLocked();
        }
        return 0;
    }

    public boolean switchToInputMethod(String imeId) {
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                return false;
            }
            int callingUserId = UserHandle.getCallingUserId();
            long identity = Binder.clearCallingIdentity();
            try {
                boolean result = InputMethodManagerInternal.get().switchToInputMethod(imeId, callingUserId);
                return result;
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    public boolean isAccessibilityButtonAvailable() {
        synchronized (this.mLock) {
            boolean z = false;
            if (!hasRightsToCurrentUserLocked()) {
                return false;
            }
            AccessibilityUserState userState = this.mUserStateWeakReference.get();
            if (userState != null && isAccessibilityButtonAvailableLocked(userState)) {
                z = true;
            }
            return z;
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        synchronized (this.mLock) {
            if (isConnectedLocked()) {
                this.mAccessibilityServiceInfo.crashed = true;
                AccessibilityUserState userState = this.mUserStateWeakReference.get();
                if (userState != null) {
                    userState.serviceDisconnectedLocked(this);
                }
                resetLocked();
                this.mSystemSupport.getMagnificationController().resetAllIfNeeded(this.mId);
                this.mSystemSupport.onClientChangeLocked(false);
            }
        }
    }

    public boolean isAccessibilityButtonAvailableLocked(AccessibilityUserState userState) {
        return this.mRequestAccessibilityButton && this.mSystemSupport.isAccessibilityButtonShown();
    }

    @Override // com.android.server.accessibility.FingerprintGestureDispatcher.FingerprintGestureClient
    public boolean isCapturingFingerprintGestures() {
        return this.mServiceInterface != null && this.mSecurityPolicy.canCaptureFingerprintGestures(this) && this.mCaptureFingerprintGestures;
    }

    @Override // com.android.server.accessibility.FingerprintGestureDispatcher.FingerprintGestureClient
    public void onFingerprintGestureDetectionActiveChanged(boolean active) {
        IAccessibilityServiceClient serviceInterface;
        if (!isCapturingFingerprintGestures()) {
            return;
        }
        synchronized (this.mLock) {
            serviceInterface = this.mServiceInterface;
        }
        if (serviceInterface != null) {
            try {
                this.mServiceInterface.onFingerprintCapturingGesturesChanged(active);
            } catch (RemoteException e) {
            }
        }
    }

    @Override // com.android.server.accessibility.FingerprintGestureDispatcher.FingerprintGestureClient
    public void onFingerprintGesture(int gesture) {
        IAccessibilityServiceClient serviceInterface;
        if (!isCapturingFingerprintGestures()) {
            return;
        }
        synchronized (this.mLock) {
            serviceInterface = this.mServiceInterface;
        }
        if (serviceInterface != null) {
            try {
                this.mServiceInterface.onFingerprintGesture(gesture);
            } catch (RemoteException e) {
            }
        }
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection
    public void dispatchGesture(int sequence, ParceledListSlice gestureSteps, int displayId) {
        boolean isTouchableDisplay = this.mWindowManagerService.isTouchableDisplay(displayId);
        synchronized (this.mLock) {
            if (this.mSecurityPolicy.canPerformGestures(this)) {
                MotionEventInjector motionEventInjector = this.mSystemSupport.getMotionEventInjectorForDisplayLocked(displayId);
                if (motionEventInjector != null && isTouchableDisplay) {
                    motionEventInjector.injectEvents(gestureSteps.getList(), this.mServiceInterface, sequence, displayId);
                } else {
                    try {
                        this.mServiceInterface.onPerformGestureResult(sequence, false);
                    } catch (RemoteException re) {
                        Slog.e(LOG_TAG, "Error sending motion event injection failure to " + this.mServiceInterface, re);
                    }
                }
            }
        }
    }
}
