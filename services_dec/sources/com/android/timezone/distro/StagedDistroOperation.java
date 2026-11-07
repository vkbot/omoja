package com.android.timezone.distro;

/* JADX INFO: loaded from: classes2.dex */
public class StagedDistroOperation {
    private static final StagedDistroOperation UNINSTALL_STAGED = new StagedDistroOperation(true, null);
    public final DistroVersion distroVersion;
    public final boolean isUninstall;

    private StagedDistroOperation(boolean isUninstall, DistroVersion distroVersion) {
        this.isUninstall = isUninstall;
        this.distroVersion = distroVersion;
    }

    public static StagedDistroOperation install(DistroVersion distroVersion) {
        if (distroVersion == null) {
            throw new NullPointerException("distroVersion==null");
        }
        return new StagedDistroOperation(false, distroVersion);
    }

    public static StagedDistroOperation uninstall() {
        return UNINSTALL_STAGED;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        StagedDistroOperation that = (StagedDistroOperation) o;
        if (this.isUninstall != that.isUninstall) {
            return false;
        }
        DistroVersion distroVersion = this.distroVersion;
        if (distroVersion != null) {
            return distroVersion.equals(that.distroVersion);
        }
        if (that.distroVersion == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i = (this.isUninstall ? 1 : 0) * 31;
        DistroVersion distroVersion = this.distroVersion;
        return i + (distroVersion != null ? distroVersion.hashCode() : 0);
    }

    public String toString() {
        return "StagedDistroOperation{isUninstall=" + this.isUninstall + ", distroVersion=" + this.distroVersion + '}';
    }
}
