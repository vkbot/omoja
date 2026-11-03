package com.android.launcher3.model.data;

import com.android.launcher3.icons.BitmapInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class ItemInfoWithIcon extends ItemInfo {
    public static final int FLAG_ADAPTIVE_ICON = 256;
    public static final int FLAG_DISABLED_BY_PUBLISHER = 16;
    public static final int FLAG_DISABLED_LOCKED_USER = 32;
    public static final int FLAG_DISABLED_MASK = 63;
    public static final int FLAG_DISABLED_NOT_AVAILABLE = 2;
    public static final int FLAG_DISABLED_QUIET_USER = 8;
    public static final int FLAG_DISABLED_SAFEMODE = 1;
    public static final int FLAG_DISABLED_SUSPENDED = 4;
    public static final int FLAG_ICON_BADGED = 512;
    public static final int FLAG_SYSTEM_MASK = 192;
    public static final int FLAG_SYSTEM_NO = 128;
    public static final int FLAG_SYSTEM_YES = 64;
    public static final String TAG = "ItemInfoDebug";
    public BitmapInfo bitmap;
    public int runtimeStatusFlags;

    @Override // 
    /* JADX INFO: renamed from: clone */
    public abstract ItemInfoWithIcon mo125clone();

    @Override // com.android.launcher3.model.data.ItemInfo
    public boolean isDisabled() {
        return (this.runtimeStatusFlags & 63) != 0;
    }

    protected ItemInfoWithIcon() {
        this.bitmap = BitmapInfo.LOW_RES_INFO;
        this.runtimeStatusFlags = 0;
    }

    protected ItemInfoWithIcon(ItemInfoWithIcon info) {
        super(info);
        this.bitmap = BitmapInfo.LOW_RES_INFO;
        this.runtimeStatusFlags = 0;
        this.bitmap = info.bitmap;
        this.runtimeStatusFlags = info.runtimeStatusFlags;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    protected String dumpProperties() {
        return super.dumpProperties() + " runtimeStatusFlags=" + this.runtimeStatusFlags;
    }

    public boolean usingLowResIcon() {
        return this.bitmap.isLowRes();
    }
}
