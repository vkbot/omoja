package com.android.launcher3.config;

import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import com.android.launcher3.AppFilter;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.R;
import com.android.launcher3.activity.model.Utils;
import com.android.launcher3.carproperty.CarPropertyKt;
import com.android.launcher3.model.CarControlModel;
import com.android.launcher3.util.Const;
import com.android.launcher3.util.FlavorUtils;
import com.android.launcher3.util.Props;
import com.mega.launcher.model.AppUtils;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.function.Predicate;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class CheryAppFilter extends AppFilter {
    private static final String TAG = "CheryAppFilter";
    private final Set<ComponentName> mHiddenByComponent;
    private final Set<String> mHiddenByPackage;

    public CheryAppFilter() {
        HashSet hashSet = new HashSet();
        this.mHiddenByPackage = hashSet;
        HashSet hashSet2 = new HashSet();
        this.mHiddenByComponent = hashSet2;
        hashSet.addAll(Arrays.asList(LauncherApplication.get().getResources().getStringArray(R.array.hidden_icons_common)));
        if (FlavorUtils.isT19CFL1()) {
            hashSet.addAll(Arrays.asList(LauncherApplication.get().getResources().getStringArray(R.array.hidden_icons_t19cfl)));
        }
        if (!CarControlModel.getInstance(LauncherApplication.get()).isSupportCamera()) {
            hashSet.add("com.mega.chery.camera");
        }
        if (!FlavorUtils.getShowLionMediaIcons()) {
            hashSet.add(Const.PACKAGE_WIDGET);
        }
        if (FlavorUtils.isT28()) {
            if (!CarPropertyKt.isDvrVisible() || !CarPropertyKt.isT28DvrIntegrated()) {
                MLog.i(TAG, "<init>: T28 hide DVR");
                hashSet.add("com.skyworthauto.dvrchery");
            }
        } else if (!CarPropertyKt.isDvrVisible()) {
            hashSet.add("com.skyworthauto.dvrchery");
        }
        if (FlavorUtils.isT1GC() || FlavorUtils.isT1GCInt() || FlavorUtils.isT19CFL1()) {
            MLog.i(TAG, "CheryAppFilter: T1GC=" + FlavorUtils.isT1GC() + ", T1GCInt=" + FlavorUtils.isT1GCInt() + ", T19CFL1=" + FlavorUtils.isT19CFL1() + ", APA=" + Utils.getAPA() + ", AVM=" + Utils.getAVM() + ", AVM Method=0b" + Integer.toBinaryString(Utils.getAvmMethod()) + ", AVM Mode=0b" + Integer.toBinaryString(Utils.getAVMMode()) + ", Parking Function=0b" + Integer.toBinaryString(Utils.getParingFunction()));
            if (!Utils.showMegaApa()) {
                MLog.i(TAG, "loadAppsImpl: hide Mega APA");
                hashSet2.add(new ComponentName(Const.PACKAGE_AVM, "com.mega.apa.ApaMainActivity"));
            }
            if (!Utils.showMegaAvm()) {
                MLog.i(TAG, "loadAppsImpl: hide Mega AVM");
                hashSet2.add(new ComponentName(Const.PACKAGE_AVM, "com.mega.avm.AvmMainActivity"));
            }
            if (FlavorUtils.isT1GCInt() || FlavorUtils.isT19CFL1()) {
                hashSet.add("com.chery.auto.activate");
                if (!FlavorUtils.isNetworkArea()) {
                    hashSet.add(AppUtils.PKG_UPGRADE);
                    hashSet.add(AppUtils.PKG_UPGRADE_V5);
                }
            }
        }
        if (FlavorUtils.isT1GC()) {
            hashSet2.add(Const.ICON_QQ_MUSIC);
        } else if (FlavorUtils.isT28()) {
            hashSet2.add(Const.ICON_NETEASE);
        }
        if (FlavorUtils.isT1GCInt() && !shouldShowSceneMode()) {
            hashSet.add("com.bitech.scenemode");
        }
        if (FlavorUtils.isT19CFL1() && !Utils.isEV(LauncherApplication.get())) {
            hashSet.add("com.bitech.scenemode");
        }
        MLog.d(TAG, "mHiddenByPackage = " + hashSet);
        MLog.d(TAG, "mHiddenByComponent=" + hashSet2);
    }

    private boolean shouldShowSceneMode() {
        try {
            Bundle bundleCall = LauncherApplication.get().getContentResolver().call(Uri.parse("content://com.bitech.scenemode.mycontentprovider"), "query_icon_status", "", (Bundle) null);
            if (bundleCall != null) {
                bundleCall.size();
            }
            MLog.d(TAG, "shouldShowSceneMode: result=" + bundleCall);
            if (bundleCall != null) {
                return bundleCall.getBoolean("iconstatus", true);
            }
            return Props.INSTANCE.isShowScene();
        } catch (IllegalArgumentException e) {
            MLog.e(TAG, "shouldShowSceneMode: " + e.getMessage());
            return Props.INSTANCE.isShowScene();
        }
    }

    @Override // com.android.launcher3.AppFilter
    public boolean shouldShowApp(ComponentName component) {
        if (this.mHiddenByPackage.contains(component.getPackageName())) {
            return false;
        }
        return !this.mHiddenByComponent.contains(component);
    }

    @Override // com.android.launcher3.AppFilter
    public boolean shouldShowApp(final String packageName, final String className) {
        if (this.mHiddenByPackage.contains(packageName)) {
            return false;
        }
        return this.mHiddenByComponent.stream().noneMatch(new Predicate() { // from class: com.android.launcher3.config.CheryAppFilter$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return CheryAppFilter.lambda$shouldShowApp$0(packageName, className, (ComponentName) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$shouldShowApp$0(String str, String str2, ComponentName componentName) {
        return Objects.equals(str, componentName.getPackageName()) && Objects.equals(str2, componentName.getClassName());
    }
}
