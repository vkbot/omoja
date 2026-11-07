package com.android.server.om;

import android.text.TextUtils;
import android.util.Pair;
import com.android.internal.util.CollectionUtils;
import com.android.server.SystemConfig;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class OverlayReferenceMapper {
    private boolean mDeferRebuild;
    private final Provider mProvider;
    private final Object mLock = new Object();
    private final Map<String, Map<String, Set<String>>> mActorToTargetToOverlays = new HashMap();
    private final Map<String, Set<String>> mActorPkgToPkgs = new HashMap();

    public interface Provider {
        String getActorPkg(String str);

        Map<String, Set<String>> getTargetToOverlayables(AndroidPackage androidPackage);
    }

    public OverlayReferenceMapper(boolean deferRebuild, Provider provider) {
        this.mDeferRebuild = deferRebuild;
        this.mProvider = provider != null ? provider : new Provider() { // from class: com.android.server.om.OverlayReferenceMapper.1
            @Override // com.android.server.om.OverlayReferenceMapper.Provider
            public String getActorPkg(String actor) {
                Map<String, Map<String, String>> namedActors = SystemConfig.getInstance().getNamedActors();
                Pair<String, OverlayActorEnforcer.ActorState> actorPair = OverlayActorEnforcer.getPackageNameForActor(actor, namedActors);
                return (String) actorPair.first;
            }

            @Override // com.android.server.om.OverlayReferenceMapper.Provider
            public Map<String, Set<String>> getTargetToOverlayables(AndroidPackage pkg) {
                String target = pkg.getOverlayTarget();
                if (TextUtils.isEmpty(target)) {
                    return Collections.emptyMap();
                }
                String overlayable = pkg.getOverlayTargetName();
                Map<String, Set<String>> targetToOverlayables = new HashMap<>();
                Set<String> overlayables = new HashSet<>();
                overlayables.add(overlayable);
                targetToOverlayables.put(target, overlayables);
                return targetToOverlayables;
            }
        };
    }

    public Map<String, Set<String>> getActorPkgToPkgs() {
        return this.mActorPkgToPkgs;
    }

    public boolean isValidActor(String targetName, String actorPackageName) {
        boolean z;
        synchronized (this.mLock) {
            assertMapBuilt();
            Set<String> validSet = this.mActorPkgToPkgs.get(actorPackageName);
            z = validSet != null && validSet.contains(targetName);
        }
        return z;
    }

    public void addPkg(AndroidPackage pkg, Map<String, AndroidPackage> otherPkgs) {
        synchronized (this.mLock) {
            if (!pkg.getOverlayables().isEmpty()) {
                addTarget(pkg, otherPkgs);
            }
            if (!this.mProvider.getTargetToOverlayables(pkg).isEmpty()) {
                addOverlay(pkg, otherPkgs);
            }
            if (!this.mDeferRebuild) {
                rebuild();
            }
        }
    }

    public void removePkg(String pkgName) {
        synchronized (this.mLock) {
            removeTarget(pkgName);
            removeOverlay(pkgName);
            if (!this.mDeferRebuild) {
                rebuild();
            }
        }
    }

    private void removeTarget(String target) {
        synchronized (this.mLock) {
            Iterator<Map<String, Set<String>>> iterator = this.mActorToTargetToOverlays.values().iterator();
            while (iterator.hasNext()) {
                Map<String, Set<String>> next = iterator.next();
                next.remove(target);
                if (next.isEmpty()) {
                    iterator.remove();
                }
            }
        }
    }

    private void addTarget(AndroidPackage targetPkg, Map<String, AndroidPackage> otherPkgs) {
        synchronized (this.mLock) {
            String target = targetPkg.getPackageName();
            removeTarget(target);
            Map<String, String> overlayablesToActors = targetPkg.getOverlayables();
            for (String overlayable : overlayablesToActors.keySet()) {
                String actor = overlayablesToActors.get(overlayable);
                addTargetToMap(actor, target);
                for (AndroidPackage overlayPkg : otherPkgs.values()) {
                    Map<String, Set<String>> targetToOverlayables = this.mProvider.getTargetToOverlayables(overlayPkg);
                    Set<String> overlayables = targetToOverlayables.get(target);
                    if (!CollectionUtils.isEmpty(overlayables)) {
                        if (overlayables.contains(overlayable)) {
                            addOverlayToMap(actor, target, overlayPkg.getPackageName());
                        }
                    }
                }
            }
        }
    }

    private void removeOverlay(String overlay) {
        synchronized (this.mLock) {
            for (Map<String, Set<String>> targetToOverlays : this.mActorToTargetToOverlays.values()) {
                for (Set<String> overlays : targetToOverlays.values()) {
                    overlays.remove(overlay);
                }
            }
        }
    }

    private void addOverlay(AndroidPackage overlayPkg, Map<String, AndroidPackage> otherPkgs) throws Throwable {
        synchronized (this.mLock) {
            try {
                try {
                    String overlay = overlayPkg.getPackageName();
                    removeOverlay(overlay);
                    try {
                        Map<String, Set<String>> targetToOverlayables = this.mProvider.getTargetToOverlayables(overlayPkg);
                        for (Map.Entry<String, Set<String>> entry : targetToOverlayables.entrySet()) {
                            String target = entry.getKey();
                            Set<String> overlayables = entry.getValue();
                            AndroidPackage targetPkg = otherPkgs.get(target);
                            if (targetPkg != null) {
                                String targetPkgName = targetPkg.getPackageName();
                                Map<String, String> overlayableToActor = targetPkg.getOverlayables();
                                for (String overlayable : overlayables) {
                                    String actor = overlayableToActor.get(overlayable);
                                    if (!TextUtils.isEmpty(actor)) {
                                        addOverlayToMap(actor, targetPkgName, overlay);
                                    }
                                }
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public void rebuildIfDeferred() {
        synchronized (this.mLock) {
            if (this.mDeferRebuild) {
                rebuild();
                this.mDeferRebuild = false;
            }
        }
    }

    private void assertMapBuilt() {
        if (this.mDeferRebuild) {
            throw new IllegalStateException("The actor map must be built by calling rebuildIfDeferred before it is queried");
        }
    }

    private void rebuild() {
        synchronized (this.mLock) {
            this.mActorPkgToPkgs.clear();
            for (String actor : this.mActorToTargetToOverlays.keySet()) {
                String actorPkg = this.mProvider.getActorPkg(actor);
                if (!TextUtils.isEmpty(actorPkg)) {
                    Map<String, Set<String>> targetToOverlays = this.mActorToTargetToOverlays.get(actor);
                    Set<String> pkgs = new HashSet<>();
                    for (String target : targetToOverlays.keySet()) {
                        Set<String> overlays = targetToOverlays.get(target);
                        pkgs.add(target);
                        pkgs.addAll(overlays);
                    }
                    this.mActorPkgToPkgs.put(actorPkg, pkgs);
                }
            }
        }
    }

    private void addTargetToMap(String actor, String target) {
        Map<String, Set<String>> targetToOverlays = this.mActorToTargetToOverlays.get(actor);
        if (targetToOverlays == null) {
            targetToOverlays = new HashMap();
            this.mActorToTargetToOverlays.put(actor, targetToOverlays);
        }
        Set<String> overlays = targetToOverlays.get(target);
        if (overlays == null) {
            Set<String> overlays2 = new HashSet<>();
            targetToOverlays.put(target, overlays2);
        }
    }

    private void addOverlayToMap(String actor, String target, String overlay) {
        synchronized (this.mLock) {
            Map<String, Set<String>> targetToOverlays = this.mActorToTargetToOverlays.get(actor);
            if (targetToOverlays == null) {
                targetToOverlays = new HashMap();
                this.mActorToTargetToOverlays.put(actor, targetToOverlays);
            }
            Set<String> overlays = targetToOverlays.get(target);
            if (overlays == null) {
                overlays = new HashSet();
                targetToOverlays.put(target, overlays);
            }
            overlays.add(overlay);
        }
    }
}
