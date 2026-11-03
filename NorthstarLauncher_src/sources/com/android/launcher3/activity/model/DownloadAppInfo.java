package com.android.launcher3.activity.model;

import android.graphics.Bitmap;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DownloadAppInfo.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\nHÆ\u0003J\t\u0010!\u001a\u00020\fHÆ\u0003JS\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u0010&\u001a\u00020\u0003J\t\u0010'\u001a\u00020\fHÖ\u0001J\u0006\u0010(\u001a\u00020\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006*"}, d2 = {"Lcom/android/launcher3/activity/model/DownloadAppInfo;", "", "softwareId", "", "softwareName", "softwareIcon", "Landroid/graphics/Bitmap;", "softwareIconUrl", "packageName", "progress", "", NotificationCompat.CATEGORY_STATUS, "", "(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;FI)V", "getPackageName", "()Ljava/lang/String;", "getProgress", "()F", "setProgress", "(F)V", "getSoftwareIcon", "()Landroid/graphics/Bitmap;", "getSoftwareIconUrl", "getSoftwareId", "getSoftwareName", "getStatus", "()I", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "getStatusString", "hashCode", "toDebugStr", "toString", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class DownloadAppInfo {
    private final String packageName;
    private float progress;
    private final Bitmap softwareIcon;
    private final String softwareIconUrl;
    private final String softwareId;
    private final String softwareName;
    private final int status;

    public static /* synthetic */ DownloadAppInfo copy$default(DownloadAppInfo downloadAppInfo, String str, String str2, Bitmap bitmap, String str3, String str4, float f, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = downloadAppInfo.softwareId;
        }
        if ((i2 & 2) != 0) {
            str2 = downloadAppInfo.softwareName;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            bitmap = downloadAppInfo.softwareIcon;
        }
        Bitmap bitmap2 = bitmap;
        if ((i2 & 8) != 0) {
            str3 = downloadAppInfo.softwareIconUrl;
        }
        String str6 = str3;
        if ((i2 & 16) != 0) {
            str4 = downloadAppInfo.packageName;
        }
        String str7 = str4;
        if ((i2 & 32) != 0) {
            f = downloadAppInfo.progress;
        }
        float f2 = f;
        if ((i2 & 64) != 0) {
            i = downloadAppInfo.status;
        }
        return downloadAppInfo.copy(str, str5, bitmap2, str6, str7, f2, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSoftwareId() {
        return this.softwareId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSoftwareName() {
        return this.softwareName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Bitmap getSoftwareIcon() {
        return this.softwareIcon;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSoftwareIconUrl() {
        return this.softwareIconUrl;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final float getProgress() {
        return this.progress;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getStatus() {
        return this.status;
    }

    public final DownloadAppInfo copy(String softwareId, String softwareName, Bitmap softwareIcon, String softwareIconUrl, String packageName, float progress, int status) {
        Intrinsics.checkNotNullParameter(softwareId, "softwareId");
        Intrinsics.checkNotNullParameter(softwareName, "softwareName");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return new DownloadAppInfo(softwareId, softwareName, softwareIcon, softwareIconUrl, packageName, progress, status);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadAppInfo)) {
            return false;
        }
        DownloadAppInfo downloadAppInfo = (DownloadAppInfo) other;
        return Intrinsics.areEqual(this.softwareId, downloadAppInfo.softwareId) && Intrinsics.areEqual(this.softwareName, downloadAppInfo.softwareName) && Intrinsics.areEqual(this.softwareIcon, downloadAppInfo.softwareIcon) && Intrinsics.areEqual(this.softwareIconUrl, downloadAppInfo.softwareIconUrl) && Intrinsics.areEqual(this.packageName, downloadAppInfo.packageName) && Float.compare(this.progress, downloadAppInfo.progress) == 0 && this.status == downloadAppInfo.status;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final float getProgress() {
        return this.progress;
    }

    public final Bitmap getSoftwareIcon() {
        return this.softwareIcon;
    }

    public final String getSoftwareIconUrl() {
        return this.softwareIconUrl;
    }

    public final String getSoftwareId() {
        return this.softwareId;
    }

    public final String getSoftwareName() {
        return this.softwareName;
    }

    public final int getStatus() {
        return this.status;
    }

    public int hashCode() {
        int iHashCode = ((this.softwareId.hashCode() * 31) + this.softwareName.hashCode()) * 31;
        Bitmap bitmap = this.softwareIcon;
        int iHashCode2 = (iHashCode + (bitmap == null ? 0 : bitmap.hashCode())) * 31;
        String str = this.softwareIconUrl;
        return ((((((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31) + this.packageName.hashCode()) * 31) + Float.hashCode(this.progress)) * 31) + Integer.hashCode(this.status);
    }

    public final void setProgress(float f) {
        this.progress = f;
    }

    public String toString() {
        return "DownloadAppInfo(softwareId=" + this.softwareId + ", softwareName=" + this.softwareName + ", softwareIcon=" + this.softwareIcon + ", softwareIconUrl=" + this.softwareIconUrl + ", packageName=" + this.packageName + ", progress=" + this.progress + ", status=" + this.status + ')';
    }

    public DownloadAppInfo(String softwareId, String softwareName, Bitmap bitmap, String str, String packageName, float f, int i) {
        Intrinsics.checkNotNullParameter(softwareId, "softwareId");
        Intrinsics.checkNotNullParameter(softwareName, "softwareName");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        this.softwareId = softwareId;
        this.softwareName = softwareName;
        this.softwareIcon = bitmap;
        this.softwareIconUrl = str;
        this.packageName = packageName;
        this.progress = f;
        this.status = i;
    }

    public /* synthetic */ DownloadAppInfo(String str, String str2, Bitmap bitmap, String str3, String str4, float f, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : bitmap, (i2 & 8) != 0 ? null : str3, str4, (i2 & 32) != 0 ? -1.0f : f, i);
    }

    public final String toDebugStr() {
        return "DownloadAppInfo('" + this.softwareName + "' '" + this.packageName + "' " + this.progress + ' ' + getStatusString() + ')';
    }

    public final String getStatusString() {
        int i = this.status;
        if (i == -1) {
            return "ERROR" + this.status;
        }
        if (i == 0) {
            return "DOWNLOAD" + this.status;
        }
        if (i == 1) {
            return "SUCCESS" + this.status;
        }
        if (i == 2) {
            return "CANCEL" + this.status;
        }
        return "Unknown" + this.status;
    }
}
