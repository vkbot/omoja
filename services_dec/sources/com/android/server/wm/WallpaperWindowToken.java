package com.android.server.wm;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.DisplayInfo;
import android.view.WindowManager;
import android.view.animation.Animation;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
class WallpaperWindowToken extends WindowToken {
    private static final String TAG = "WindowManager";

    WallpaperWindowToken(WindowManagerService service, IBinder token, boolean explicit, DisplayContent dc, boolean ownerCanManageAppTokens) {
        super(service, token, 2013, explicit, dc, ownerCanManageAppTokens);
        dc.mWallpaperController.addWallpaperToken(this);
        setWindowingMode(1);
    }

    @Override // com.android.server.wm.WindowToken
    void setExiting() {
        super.setExiting();
        this.mDisplayContent.mWallpaperController.removeWallpaperToken(this);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void hideWallpaperToken(boolean wasDeferred, String reason) {
        for (int j = this.mChildren.size() - 1; j >= 0; j--) {
            WindowState wallpaper = (WindowState) this.mChildren.get(j);
            wallpaper.hideWallpaperWindow(wasDeferred, reason);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void sendWindowWallpaperCommand(String action, int x, int y, int z, Bundle extras, boolean sync) {
        for (int wallpaperNdx = this.mChildren.size() - 1; wallpaperNdx >= 0; wallpaperNdx--) {
            WindowState wallpaper = (WindowState) this.mChildren.get(wallpaperNdx);
            try {
                wallpaper.mClient.dispatchWallpaperCommand(action, x, y, z, extras, sync);
                sync = false;
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void updateWallpaperOffset(boolean sync) {
        WallpaperController wallpaperController = this.mDisplayContent.mWallpaperController;
        for (int wallpaperNdx = this.mChildren.size() - 1; wallpaperNdx >= 0; wallpaperNdx--) {
            WindowState wallpaper = (WindowState) this.mChildren.get(wallpaperNdx);
            if (wallpaperController.updateWallpaperOffset(wallpaper, sync)) {
                sync = false;
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void updateWallpaperVisibility(boolean visible) {
        if (isVisible() != visible) {
            this.mDisplayContent.setLayoutNeeded();
        }
        WallpaperController wallpaperController = this.mDisplayContent.mWallpaperController;
        for (int wallpaperNdx = this.mChildren.size() - 1; wallpaperNdx >= 0; wallpaperNdx--) {
            WindowState wallpaper = (WindowState) this.mChildren.get(wallpaperNdx);
            if (visible) {
                wallpaperController.updateWallpaperOffset(wallpaper, false);
            }
            wallpaper.dispatchWallpaperVisibility(visible);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void startAnimation(Animation anim) {
        for (int ndx = this.mChildren.size() - 1; ndx >= 0; ndx--) {
            WindowState windowState = (WindowState) this.mChildren.get(ndx);
            windowState.startAnimation(anim);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void updateWallpaperWindows(boolean visible) {
        if (isVisible() != visible) {
            this.mDisplayContent.setLayoutNeeded();
        }
        WallpaperController wallpaperController = this.mDisplayContent.mWallpaperController;
        WindowState wallpaperTarget = wallpaperController.getWallpaperTarget();
        if (visible && wallpaperTarget != null) {
            RecentsAnimationController recentsAnimationController = this.mWmService.getRecentsAnimationController();
            if (recentsAnimationController != null && recentsAnimationController.isAnimatingTask(wallpaperTarget.getTask())) {
                recentsAnimationController.linkFixedRotationTransformIfNeeded(this);
            } else if ((wallpaperTarget.mActivityRecord == null || wallpaperTarget.mActivityRecord.mVisibleRequested) && wallpaperTarget.mToken.hasFixedRotationTransform()) {
                linkFixedRotationTransform(wallpaperTarget.mToken);
            }
        }
        for (int wallpaperNdx = this.mChildren.size() - 1; wallpaperNdx >= 0; wallpaperNdx--) {
            WindowState wallpaper = (WindowState) this.mChildren.get(wallpaperNdx);
            if (visible) {
                wallpaperController.updateWallpaperOffset(wallpaper, false);
            }
            wallpaper.dispatchWallpaperVisibility(visible);
        }
    }

    @Override // com.android.server.wm.WindowToken
    void adjustWindowParams(WindowState win, WindowManager.LayoutParams attrs) {
        if (attrs.height == -1 || attrs.width == -1) {
            return;
        }
        DisplayInfo displayInfo = win.getDisplayInfo();
        float layoutScale = Math.max(displayInfo.logicalHeight / attrs.height, displayInfo.logicalWidth / attrs.width);
        attrs.height = (int) (attrs.height * layoutScale);
        attrs.width = (int) (attrs.width * layoutScale);
        attrs.flags |= 16384;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    boolean hasVisibleNotDrawnWallpaper() {
        for (int j = this.mChildren.size() - 1; j >= 0; j--) {
            WindowState wallpaper = (WindowState) this.mChildren.get(j);
            if (wallpaper.hasVisibleNotDrawnWallpaper()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.android.server.wm.WindowContainer
    void forAllWallpaperWindows(Consumer<WallpaperWindowToken> callback) {
        callback.accept(this);
    }

    @Override // com.android.server.wm.WindowToken
    public String toString() {
        if (this.stringName == null) {
            this.stringName = "WallpaperWindowToken{" + Integer.toHexString(System.identityHashCode(this)) + " token=" + this.token + '}';
        }
        return this.stringName;
    }
}
