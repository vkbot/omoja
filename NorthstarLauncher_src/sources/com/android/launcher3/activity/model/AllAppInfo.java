package com.android.launcher3.activity.model;

import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public class AllAppInfo {
    private Bitmap mDownloadIcon;
    private String mDownloadIconUrl;
    private DownloadAppInfo mDownloadInfo;
    private Drawable mIcon;
    private int mIndex;
    private ResolveInfo mResolveInfo;
    private String mTitle;

    public Bitmap getDownloadIcon() {
        return this.mDownloadIcon;
    }

    public String getDownloadIconUrl() {
        return this.mDownloadIconUrl;
    }

    public DownloadAppInfo getDownloadInfo() {
        return this.mDownloadInfo;
    }

    public Drawable getIcon() {
        return this.mIcon;
    }

    public int getIndex() {
        return this.mIndex;
    }

    public ResolveInfo getResolveInfo() {
        return this.mResolveInfo;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public boolean isDownloading() {
        return this.mDownloadInfo != null;
    }

    public void setIcon(Drawable icon) {
        this.mIcon = icon;
    }

    public void setIndex(int index) {
        this.mIndex = index;
    }

    public void setResolveInfo(ResolveInfo ri) {
        this.mResolveInfo = ri;
    }

    public void setTitle(String title) {
        this.mTitle = title;
    }

    public AllAppInfo(ResolveInfo info, int index) {
        this.mResolveInfo = info;
        this.mIndex = index;
    }

    public AllAppInfo(DownloadAppInfo info, int index) {
        this.mIndex = index;
        setDownloadInfo(info);
    }

    public void setDownloadInfo(DownloadAppInfo info) {
        this.mDownloadInfo = info;
        if (info == null) {
            return;
        }
        this.mDownloadIcon = info.getSoftwareIcon();
        this.mDownloadIconUrl = info.getSoftwareIconUrl();
    }

    public String getPackageName() {
        DownloadAppInfo downloadAppInfo = this.mDownloadInfo;
        if (downloadAppInfo != null) {
            return downloadAppInfo.getPackageName();
        }
        return this.mResolveInfo.activityInfo.packageName;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AllAppInfo{");
        if (this.mResolveInfo != null) {
            sb.append(" ResolveInfo component=").append(this.mResolveInfo.activityInfo.packageName).append('/').append(this.mResolveInfo.activityInfo.name);
        }
        if (this.mDownloadInfo != null) {
            sb.append(" AppInfo package=").append(this.mDownloadInfo.getPackageName()).append(" id=").append(this.mDownloadInfo.getSoftwareId()).append(" status=").append(this.mDownloadInfo.getStatus()).append(" progress=").append(this.mDownloadInfo.getProgress());
        }
        sb.append(" }");
        return sb.toString();
    }
}
