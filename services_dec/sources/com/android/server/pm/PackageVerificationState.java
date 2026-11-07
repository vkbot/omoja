package com.android.server.pm;

import android.util.SparseBooleanArray;

/* JADX INFO: loaded from: classes.dex */
class PackageVerificationState {
    private boolean mIntegrityVerificationComplete;
    private final PackageManagerService.InstallParams mParams;
    private boolean mRequiredVerificationComplete;
    private boolean mRequiredVerificationPassed;
    private int mRequiredVerifierUid;
    private boolean mSufficientVerificationComplete;
    private boolean mSufficientVerificationPassed;
    private final SparseBooleanArray mSufficientVerifierUids = new SparseBooleanArray();
    private boolean mExtendedTimeout = false;

    PackageVerificationState(PackageManagerService.InstallParams params) {
        this.mParams = params;
    }

    PackageManagerService.InstallParams getInstallParams() {
        return this.mParams;
    }

    void setRequiredVerifierUid(int uid) {
        this.mRequiredVerifierUid = uid;
    }

    void addSufficientVerifier(int uid) {
        this.mSufficientVerifierUids.put(uid, true);
    }

    boolean setVerifierResponse(int uid, int code) {
        if (uid == this.mRequiredVerifierUid) {
            this.mRequiredVerificationComplete = true;
            if (code == 1) {
                this.mRequiredVerificationPassed = true;
            } else if (code == 2) {
                this.mSufficientVerifierUids.clear();
                this.mRequiredVerificationPassed = true;
            } else {
                this.mRequiredVerificationPassed = false;
            }
            return true;
        }
        if (!this.mSufficientVerifierUids.get(uid)) {
            return false;
        }
        if (code == 1) {
            this.mSufficientVerificationComplete = true;
            this.mSufficientVerificationPassed = true;
        }
        this.mSufficientVerifierUids.delete(uid);
        if (this.mSufficientVerifierUids.size() == 0) {
            this.mSufficientVerificationComplete = true;
        }
        return true;
    }

    boolean isVerificationComplete() {
        if (!this.mRequiredVerificationComplete) {
            return false;
        }
        if (this.mSufficientVerifierUids.size() == 0) {
            return true;
        }
        return this.mSufficientVerificationComplete;
    }

    boolean isInstallAllowed() {
        if (!this.mRequiredVerificationPassed) {
            return false;
        }
        if (this.mSufficientVerificationComplete) {
            return this.mSufficientVerificationPassed;
        }
        return true;
    }

    void extendTimeout() {
        if (!this.mExtendedTimeout) {
            this.mExtendedTimeout = true;
        }
    }

    boolean timeoutExtended() {
        return this.mExtendedTimeout;
    }

    void setIntegrityVerificationResult(int code) {
        this.mIntegrityVerificationComplete = true;
    }

    boolean isIntegrityVerificationComplete() {
        return this.mIntegrityVerificationComplete;
    }

    boolean areAllVerificationsComplete() {
        return this.mIntegrityVerificationComplete && isVerificationComplete();
    }
}
