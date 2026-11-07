package com.android.server.devicepolicy;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.ArraySet;
import android.view.inputmethod.InputMethodInfo;
import com.android.internal.util.Preconditions;
import com.android.server.inputmethod.InputMethodManagerInternal;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class OverlayPackagesProvider {
    protected static final String TAG = "OverlayPackagesProvider";
    private final Context mContext;
    private final Injector mInjector;
    private final PackageManager mPm;

    interface Injector {
        List<InputMethodInfo> getInputMethodListAsUser(int i);
    }

    public OverlayPackagesProvider(Context context) {
        this(context, new DefaultInjector());
    }

    private static final class DefaultInjector implements Injector {
        private DefaultInjector() {
        }

        @Override // com.android.server.devicepolicy.OverlayPackagesProvider.Injector
        public List<InputMethodInfo> getInputMethodListAsUser(int userId) {
            return InputMethodManagerInternal.get().getInputMethodListAsUser(userId);
        }
    }

    OverlayPackagesProvider(Context context, Injector injector) {
        this.mContext = context;
        this.mPm = (PackageManager) Preconditions.checkNotNull(context.getPackageManager());
        this.mInjector = (Injector) Preconditions.checkNotNull(injector);
    }

    public Set<String> getNonRequiredApps(ComponentName admin, int userId, String provisioningAction) {
        Set<String> nonRequiredApps = getLaunchableApps(userId);
        nonRequiredApps.removeAll(getRequiredApps(provisioningAction, admin.getPackageName()));
        nonRequiredApps.removeAll(getSystemInputMethods(userId));
        nonRequiredApps.addAll(getDisallowedApps(provisioningAction));
        return nonRequiredApps;
    }

    private Set<String> getLaunchableApps(int userId) {
        Intent launcherIntent = new Intent("android.intent.action.MAIN");
        launcherIntent.addCategory("android.intent.category.LAUNCHER");
        List<ResolveInfo> resolveInfos = this.mPm.queryIntentActivitiesAsUser(launcherIntent, 795136, userId);
        Set<String> apps = new ArraySet<>();
        for (ResolveInfo resolveInfo : resolveInfos) {
            apps.add(resolveInfo.activityInfo.packageName);
        }
        return apps;
    }

    private Set<String> getSystemInputMethods(int userId) {
        List<InputMethodInfo> inputMethods = this.mInjector.getInputMethodListAsUser(userId);
        Set<String> systemInputMethods = new ArraySet<>();
        for (InputMethodInfo inputMethodInfo : inputMethods) {
            ApplicationInfo applicationInfo = inputMethodInfo.getServiceInfo().applicationInfo;
            if (applicationInfo.isSystemApp()) {
                systemInputMethods.add(inputMethodInfo.getPackageName());
            }
        }
        return systemInputMethods;
    }

    private Set<String> getRequiredApps(String provisioningAction, String dpcPackageName) {
        Set<String> requiredApps = new ArraySet<>();
        requiredApps.addAll(getRequiredAppsSet(provisioningAction));
        requiredApps.addAll(getVendorRequiredAppsSet(provisioningAction));
        requiredApps.add(dpcPackageName);
        return requiredApps;
    }

    private Set<String> getDisallowedApps(String provisioningAction) {
        Set<String> disallowedApps = new ArraySet<>();
        disallowedApps.addAll(getDisallowedAppsSet(provisioningAction));
        disallowedApps.addAll(getVendorDisallowedAppsSet(provisioningAction));
        return disallowedApps;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    private Set<String> getRequiredAppsSet(String provisioningAction) {
        byte b;
        int resId;
        int iHashCode = provisioningAction.hashCode();
        if (iHashCode != -920528692) {
            if (iHashCode != -514404415) {
                if (iHashCode == -340845101 && provisioningAction.equals("android.app.action.PROVISION_MANAGED_PROFILE")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (provisioningAction.equals("android.app.action.PROVISION_MANAGED_USER")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (provisioningAction.equals("android.app.action.PROVISION_MANAGED_DEVICE")) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            resId = R.array.config_protectedNetworks;
        } else if (b == 1) {
            resId = R.array.config_profcollectOnCameraOpenedSkipPackages;
        } else if (b == 2) {
            resId = R.array.config_priorityOnlyDndExemptPackages;
        } else {
            throw new IllegalArgumentException("Provisioning type " + provisioningAction + " not supported.");
        }
        return new ArraySet(Arrays.asList(this.mContext.getResources().getStringArray(resId)));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    private Set<String> getDisallowedAppsSet(String provisioningAction) {
        byte b;
        int resId;
        int iHashCode = provisioningAction.hashCode();
        if (iHashCode != -920528692) {
            if (iHashCode != -514404415) {
                if (iHashCode == -340845101 && provisioningAction.equals("android.app.action.PROVISION_MANAGED_PROFILE")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (provisioningAction.equals("android.app.action.PROVISION_MANAGED_USER")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (provisioningAction.equals("android.app.action.PROVISION_MANAGED_DEVICE")) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            resId = R.array.config_mappedColorModes;
        } else if (b == 1) {
            resId = R.array.config_mainBuiltInDisplayWaterfallCutout;
        } else if (b == 2) {
            resId = R.array.config_mainBuiltInDisplayCutoutSideOverride;
        } else {
            throw new IllegalArgumentException("Provisioning type " + provisioningAction + " not supported.");
        }
        return new ArraySet(Arrays.asList(this.mContext.getResources().getStringArray(resId)));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    private Set<String> getVendorRequiredAppsSet(String provisioningAction) {
        byte b;
        int resId;
        int iHashCode = provisioningAction.hashCode();
        if (iHashCode != -920528692) {
            if (iHashCode != -514404415) {
                if (iHashCode == -340845101 && provisioningAction.equals("android.app.action.PROVISION_MANAGED_PROFILE")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (provisioningAction.equals("android.app.action.PROVISION_MANAGED_USER")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (provisioningAction.equals("android.app.action.PROVISION_MANAGED_DEVICE")) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            resId = R.array.config_screenBrighteningThresholds;
        } else if (b == 1) {
            resId = R.array.config_satellite_providers;
        } else if (b == 2) {
            resId = R.array.config_safeModeEnabledVibePattern;
        } else {
            throw new IllegalArgumentException("Provisioning type " + provisioningAction + " not supported.");
        }
        return new ArraySet(Arrays.asList(this.mContext.getResources().getStringArray(resId)));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034  */
    private Set<String> getVendorDisallowedAppsSet(String provisioningAction) {
        byte b;
        int resId;
        int iHashCode = provisioningAction.hashCode();
        if (iHashCode != -920528692) {
            if (iHashCode != -514404415) {
                if (iHashCode == -340845101 && provisioningAction.equals("android.app.action.PROVISION_MANAGED_PROFILE")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (provisioningAction.equals("android.app.action.PROVISION_MANAGED_USER")) {
                b = 0;
            } else {
                b = -1;
            }
        } else if (provisioningAction.equals("android.app.action.PROVISION_MANAGED_DEVICE")) {
            b = 2;
        } else {
            b = -1;
        }
        if (b == 0) {
            resId = R.array.config_roundedCornerTopRadiusArray;
        } else if (b == 1) {
            resId = R.array.config_roundedCornerTopRadiusAdjustmentArray;
        } else if (b == 2) {
            resId = R.array.config_roundedCornerRadiusArray;
        } else {
            throw new IllegalArgumentException("Provisioning type " + provisioningAction + " not supported.");
        }
        return new ArraySet(Arrays.asList(this.mContext.getResources().getStringArray(resId)));
    }
}
