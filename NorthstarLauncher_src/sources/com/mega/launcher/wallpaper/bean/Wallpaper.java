package com.mega.launcher.wallpaper.bean;

import com.android.launcher3.LauncherSettings;
import com.mega.launcherapi.WallpaperConstant;
import com.mega.launcherapi.utils.LiveWallpaperContract;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Wallpaper.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\"\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018\u0000 G2\u00020\u0001:\u0001GB\u0007\b\u0017¢\u0006\u0002\u0010\u0002Bq\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f¢\u0006\u0002\u0010\u0010J\u000e\u0010.\u001a\u00020/2\u0006\u0010\u000f\u001a\u00020\fJ\t\u00100\u001a\u00020\u0004HÆ\u0003J\t\u00101\u001a\u00020\fHÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u00103\u001a\u00020\u0006HÆ\u0003J\t\u00104\u001a\u00020\u0006HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u00107\u001a\u00020\fHÆ\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001cJ\t\u00109\u001a\u00020\fHÆ\u0003Jz\u0010:\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\fHÆ\u0001¢\u0006\u0002\u0010;J\u0013\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0010\u0010?\u001a\u00020=2\u0006\u0010\u000f\u001a\u00020\fH\u0002J\t\u0010@\u001a\u00020\fHÖ\u0001J\u0006\u0010A\u001a\u00020=J\u0006\u0010B\u001a\u00020=J\u000e\u0010C\u001a\u00020/2\u0006\u0010\u000f\u001a\u00020\fJ\u000e\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020=J\t\u0010F\u001a\u00020\u0006HÖ\u0001R \u0010\t\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\u000f\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\u001e\u0010\r\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0012\"\u0004\b%\u0010\u0014R \u0010\n\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0012\"\u0004\b'\u0010\u0014R\u001e\u0010\u000e\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0016\"\u0004\b)\u0010\u0018R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0016\"\u0004\b+\u0010\u0018R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0012\"\u0004\b-\u0010\u0014¨\u0006H"}, d2 = {"Lcom/mega/launcher/wallpaper/bean/Wallpaper;", "", "()V", WallpaperConstant.WALLPAPER_COLUMN_ID, "", WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID, "", WallpaperConstant.WALLPAPER_COLUMN_NAME, "from", "dayPath", "nightPath", LiveWallpaperContract.KEY_TYPE, "", WallpaperConstant.WALLPAPER_COLUMN_HIDE, LauncherSettings.Favorites.RANK, WallpaperConstant.WALLPAPER_COLUMN_FLAGS, "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;II)V", "getDayPath", "()Ljava/lang/String;", "setDayPath", "(Ljava/lang/String;)V", "getFlags", "()I", "setFlags", "(I)V", "getFrom", "setFrom", "getHide", "()Ljava/lang/Integer;", "setHide", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getId", "()J", "setId", "(J)V", "getName", "setName", "getNightPath", "setNightPath", "getRank", "setRank", "getType", "setType", "getWallpaperId", "setWallpaperId", "addFlags", "", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;II)Lcom/mega/launcher/wallpaper/bean/Wallpaper;", "equals", "", "other", "hasFlags", "hashCode", "isDefault", "isHide", "removeFlags", "setDefault", "def", "toString", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class Wallpaper {
    public static final int FLAG_DEFAULT = 1;
    public static final int INVISIBLE = 1;
    public static final int VISIBLE = 0;
    private String dayPath;
    private int flags;
    private String from;
    private Integer hide;
    private long id;
    private String name;
    private String nightPath;
    private int rank;
    private int type;
    private String wallpaperId;

    private final boolean hasFlags(int flags) {
        return (this.flags & flags) != 0;
    }

    public final void addFlags(int flags) {
        this.flags = flags | this.flags;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final int getFlags() {
        return this.flags;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getWallpaperId() {
        return this.wallpaperId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getFrom() {
        return this.from;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDayPath() {
        return this.dayPath;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getNightPath() {
        return this.nightPath;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getHide() {
        return this.hide;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final int getRank() {
        return this.rank;
    }

    public final Wallpaper copy(long id, String wallpaperId, String name, String from, String dayPath, String nightPath, int type, Integer hide, int rank, int flags) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(from, "from");
        return new Wallpaper(id, wallpaperId, name, from, dayPath, nightPath, type, hide, rank, flags);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Wallpaper)) {
            return false;
        }
        Wallpaper wallpaper = (Wallpaper) other;
        return this.id == wallpaper.id && Intrinsics.areEqual(this.wallpaperId, wallpaper.wallpaperId) && Intrinsics.areEqual(this.name, wallpaper.name) && Intrinsics.areEqual(this.from, wallpaper.from) && Intrinsics.areEqual(this.dayPath, wallpaper.dayPath) && Intrinsics.areEqual(this.nightPath, wallpaper.nightPath) && this.type == wallpaper.type && Intrinsics.areEqual(this.hide, wallpaper.hide) && this.rank == wallpaper.rank && this.flags == wallpaper.flags;
    }

    public final String getDayPath() {
        return this.dayPath;
    }

    public final int getFlags() {
        return this.flags;
    }

    public final String getFrom() {
        return this.from;
    }

    public final Integer getHide() {
        return this.hide;
    }

    public final long getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getNightPath() {
        return this.nightPath;
    }

    public final int getRank() {
        return this.rank;
    }

    public final int getType() {
        return this.type;
    }

    public final String getWallpaperId() {
        return this.wallpaperId;
    }

    public int hashCode() {
        int iHashCode = Long.hashCode(this.id) * 31;
        String str = this.wallpaperId;
        int iHashCode2 = (((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.name.hashCode()) * 31) + this.from.hashCode()) * 31;
        String str2 = this.dayPath;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.nightPath;
        int iHashCode4 = (((iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31) + Integer.hashCode(this.type)) * 31;
        Integer num = this.hide;
        return ((((iHashCode4 + (num != null ? num.hashCode() : 0)) * 31) + Integer.hashCode(this.rank)) * 31) + Integer.hashCode(this.flags);
    }

    public final void removeFlags(int flags) {
        this.flags = (~flags) & this.flags;
    }

    public final void setDayPath(String str) {
        this.dayPath = str;
    }

    public final void setFlags(int i) {
        this.flags = i;
    }

    public final void setFrom(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.from = str;
    }

    public final void setHide(Integer num) {
        this.hide = num;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setNightPath(String str) {
        this.nightPath = str;
    }

    public final void setRank(int i) {
        this.rank = i;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setWallpaperId(String str) {
        this.wallpaperId = str;
    }

    public String toString() {
        return "Wallpaper(id=" + this.id + ", wallpaperId=" + this.wallpaperId + ", name=" + this.name + ", from=" + this.from + ", dayPath=" + this.dayPath + ", nightPath=" + this.nightPath + ", type=" + this.type + ", hide=" + this.hide + ", rank=" + this.rank + ", flags=" + this.flags + ')';
    }

    public Wallpaper(long j, String str, String name, String from, String str2, String str3, int i, Integer num, int i2, int i3) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(from, "from");
        this.id = j;
        this.wallpaperId = str;
        this.name = name;
        this.from = from;
        this.dayPath = str2;
        this.nightPath = str3;
        this.type = i;
        this.hide = num;
        this.rank = i2;
        this.flags = i3;
    }

    public /* synthetic */ Wallpaper(long j, String str, String str2, String str3, String str4, String str5, int i, Integer num, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0L : j, (i4 & 2) != 0 ? "" : str, (i4 & 4) != 0 ? "" : str2, (i4 & 8) != 0 ? "" : str3, (i4 & 16) != 0 ? "" : str4, (i4 & 32) == 0 ? str5 : "", (i4 & 64) != 0 ? 0 : i, (i4 & 128) != 0 ? 0 : num, (i4 & 256) != 0 ? Integer.MAX_VALUE : i2, (i4 & 512) == 0 ? i3 : 0);
    }

    public Wallpaper() {
        this(0L, null, null, null, null, null, 0, null, 0, 0, 1022, null);
    }

    public final boolean isHide() {
        Integer num = this.hide;
        return (num == null || num == null || num.intValue() != 1) ? false : true;
    }

    public final boolean isDefault() {
        return hasFlags(1);
    }

    public final void setDefault(boolean def) {
        if (def) {
            addFlags(1);
        } else {
            removeFlags(1);
        }
    }
}
