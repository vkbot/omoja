package com.android.server.wm;

import android.view.InsetsSource;
import android.view.WindowInsets;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class ImeInsetsSourceProvider extends InsetsSourceProvider {
    private boolean mImeShowing;
    private InsetsControlTarget mImeTargetFromIme;
    private boolean mIsImeLayoutDrawn;
    private Runnable mShowImeRunner;

    ImeInsetsSourceProvider(InsetsSource source, InsetsStateController stateController, DisplayContent displayContent) {
        super(source, stateController, displayContent);
    }

    void scheduleShowImePostLayout(InsetsControlTarget imeTarget) {
        InsetsControlTarget insetsControlTarget = this.mImeTargetFromIme;
        boolean targetChanged = (insetsControlTarget == imeTarget || insetsControlTarget == null || imeTarget == null || this.mShowImeRunner == null || imeTarget.getWindow() == null || this.mImeTargetFromIme.getWindow() == null || this.mImeTargetFromIme.getWindow().mActivityRecord != imeTarget.getWindow().mActivityRecord) ? false : true;
        this.mImeTargetFromIme = imeTarget;
        if (targetChanged) {
            if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, 140319294, 0, null, (Object[]) null);
            }
            checkShowImePostLayout();
        } else {
            if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
                String protoLogParam0 = String.valueOf(this.mImeTargetFromIme.getWindow() == null ? this.mImeTargetFromIme : this.mImeTargetFromIme.getWindow().getName());
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, -1410260105, 0, null, protoLogParam0);
            }
            this.mShowImeRunner = new Runnable() { // from class: com.android.server.wm.-$$Lambda$ImeInsetsSourceProvider$1aCwANZDoNIzXR0mfeN2iV_k2Yo
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$scheduleShowImePostLayout$0$ImeInsetsSourceProvider();
                }
            };
            this.mDisplayContent.mWmService.requestTraversal();
        }
    }

    public /* synthetic */ void lambda$scheduleShowImePostLayout$0$ImeInsetsSourceProvider() {
        if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, 1928325128, 0, null, (Object[]) null);
        }
        if (isImeTargetFromDisplayContentAndImeSame()) {
            InsetsControlTarget target = this.mDisplayContent.mInputMethodControlTarget;
            if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
                String protoLogParam0 = String.valueOf(target.getWindow() != null ? target.getWindow().getName() : "");
                ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_IME, 585839596, 0, null, protoLogParam0);
            }
            setImeShowing(true);
            target.showInsets(WindowInsets.Type.ime(), true);
            InsetsControlTarget insetsControlTarget = this.mImeTargetFromIme;
            if (target != insetsControlTarget && insetsControlTarget != null && ProtoLog$Cache.WM_DEBUG_IME_enabled) {
                String protoLogParam1 = String.valueOf(this.mImeTargetFromIme.getWindow() != null ? this.mImeTargetFromIme.getWindow().getName() : "");
                ProtoLogImpl.w(ProtoLogGroup.WM_DEBUG_IME, -1554521902, 0, null, protoLogParam1);
            }
        }
        abortShowImePostLayout();
    }

    void checkShowImePostLayout() {
        if (this.mIsImeLayoutDrawn || (this.mImeTargetFromIme != null && isImeTargetFromDisplayContentAndImeSame() && this.mWin != null && this.mWin.isDrawnLw() && !this.mWin.mGivenInsetsPending)) {
            this.mIsImeLayoutDrawn = true;
            Runnable runnable = this.mShowImeRunner;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    void abortShowImePostLayout() {
        if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, 1373000889, 0, null, (Object[]) null);
        }
        this.mImeTargetFromIme = null;
        this.mIsImeLayoutDrawn = false;
        this.mShowImeRunner = null;
    }

    boolean isImeTargetFromDisplayContentAndImeSame() {
        InsetsControlTarget insetsControlTarget;
        WindowState dcTarget = this.mDisplayContent.mInputMethodTarget;
        InsetsControlTarget controlTarget = this.mDisplayContent.mInputMethodControlTarget;
        if (dcTarget == null || this.mImeTargetFromIme == null) {
            return false;
        }
        if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
            String protoLogParam0 = String.valueOf(dcTarget.getName());
            String protoLogParam1 = String.valueOf(this.mImeTargetFromIme.getWindow() == null ? this.mImeTargetFromIme : this.mImeTargetFromIme.getWindow().getName());
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, 632168013, 0, null, protoLogParam0, protoLogParam1);
        }
        if ((dcTarget.isClosing() || this.mImeTargetFromIme != dcTarget) && (((insetsControlTarget = this.mImeTargetFromIme) == null || insetsControlTarget.getWindow() == null || dcTarget.getParentWindow() != this.mImeTargetFromIme || dcTarget.mSubLayer <= this.mImeTargetFromIme.getWindow().mSubLayer) && this.mImeTargetFromIme != this.mDisplayContent.getImeFallback() && this.mImeTargetFromIme != this.mDisplayContent.mInputMethodInputTarget)) {
            InsetsControlTarget insetsControlTarget2 = this.mImeTargetFromIme;
            if (controlTarget != insetsControlTarget2) {
                return false;
            }
            if (insetsControlTarget2.getWindow() != null && this.mImeTargetFromIme.getWindow().isClosing()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.android.server.wm.InsetsSourceProvider
    public void dump(PrintWriter pw, String prefix) {
        super.dump(pw, prefix);
        pw.print(prefix);
        pw.print("mImeShowing=");
        pw.print(this.mImeShowing);
        if (this.mImeTargetFromIme != null) {
            pw.print(" showImePostLayout pending for mImeTargetFromIme=");
            pw.print(this.mImeTargetFromIme);
        }
        pw.println();
    }

    public void setImeShowing(boolean imeShowing) {
        this.mImeShowing = imeShowing;
    }

    public boolean isImeShowing() {
        return this.mImeShowing;
    }
}
