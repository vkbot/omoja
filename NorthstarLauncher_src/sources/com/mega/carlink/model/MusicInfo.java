package com.mega.carlink.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MusicInfo implements Parcelable {
    public static final Parcelable.Creator<MusicInfo> CREATOR = new Parcelable.Creator<MusicInfo>() { // from class: com.mega.carlink.model.MusicInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MusicInfo createFromParcel(Parcel parcel) {
            return new MusicInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MusicInfo[] newArray(int i) {
            return new MusicInfo[i];
        }
    };
    public String albumName;
    public int appId;
    public String artistName;
    public String authorName;
    public String composerName;
    public byte[] cover;
    public String coverArt;
    public boolean isDestroyed;
    public boolean isFavorite;
    public boolean isPlaying;
    public String lyrics;
    public int playingCurrentTimeMs;
    public String title;
    public long totalTimesMs;
    public String writerName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAlbumName() {
        return this.albumName;
    }

    public int getAppId() {
        return this.appId;
    }

    public String getArtistName() {
        return this.artistName;
    }

    public String getAuthorName() {
        return this.authorName;
    }

    public String getComposerName() {
        return this.composerName;
    }

    public byte[] getCover() {
        return this.cover;
    }

    public String getCoverArt() {
        return this.coverArt;
    }

    public String getLyrics() {
        return this.lyrics;
    }

    public int getPlayingCurrentTimeMs() {
        return this.playingCurrentTimeMs;
    }

    public String getTitle() {
        return this.title;
    }

    public long getTotalTimesMs() {
        return this.totalTimesMs;
    }

    public String getWriterName() {
        return this.writerName;
    }

    public boolean isDestroyed() {
        return this.isDestroyed;
    }

    public boolean isFavorite() {
        return this.isFavorite;
    }

    public boolean isPlaying() {
        return this.isPlaying;
    }

    public void setAlbumName(String str) {
        this.albumName = str;
    }

    public void setAppId(int i) {
        this.appId = i;
    }

    public void setArtistName(String str) {
        this.artistName = str;
    }

    public void setAuthorName(String str) {
        this.authorName = str;
    }

    public void setComposerName(String str) {
        this.composerName = str;
    }

    public void setCover(byte[] bArr) {
        this.cover = bArr;
    }

    public void setCoverArt(String str) {
        this.coverArt = str;
    }

    public void setDestroyed(boolean z) {
        this.isDestroyed = z;
    }

    public void setFavorite(boolean z) {
        this.isFavorite = z;
    }

    public void setLyrics(String str) {
        this.lyrics = str;
    }

    public void setPlaying(boolean z) {
        this.isPlaying = z;
    }

    public void setPlayingCurrentTimeMs(int i) {
        this.playingCurrentTimeMs = i;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTotalTimesMs(long j) {
        this.totalTimesMs = j;
    }

    public void setWriterName(String str) {
        this.writerName = str;
    }

    public MusicInfo(String str, String str2, String str3, String str4, long j, String str5, String str6, String str7, String str8, int i, boolean z, boolean z2, byte[] bArr, boolean z3, int i2) {
        this.artistName = str;
        this.albumName = str2;
        this.coverArt = str3;
        this.lyrics = str4;
        this.totalTimesMs = j;
        this.title = str5;
        this.authorName = str6;
        this.writerName = str7;
        this.composerName = str8;
        this.playingCurrentTimeMs = i;
        this.isFavorite = z;
        this.isPlaying = z2;
        this.cover = bArr;
        this.isDestroyed = z3;
        this.appId = i2;
    }

    protected MusicInfo(Parcel parcel) {
        this.artistName = parcel.readString();
        this.albumName = parcel.readString();
        this.coverArt = parcel.readString();
        this.lyrics = parcel.readString();
        this.totalTimesMs = parcel.readLong();
        this.title = parcel.readString();
        this.authorName = parcel.readString();
        this.writerName = parcel.readString();
        this.composerName = parcel.readString();
        this.playingCurrentTimeMs = parcel.readInt();
        this.isFavorite = parcel.readByte() != 0;
        this.isPlaying = parcel.readByte() != 0;
        this.cover = parcel.createByteArray();
        this.isDestroyed = parcel.readByte() != 0;
        this.appId = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.artistName);
        parcel.writeString(this.albumName);
        parcel.writeString(this.coverArt);
        parcel.writeString(this.lyrics);
        parcel.writeLong(this.totalTimesMs);
        parcel.writeString(this.title);
        parcel.writeString(this.authorName);
        parcel.writeString(this.writerName);
        parcel.writeString(this.composerName);
        parcel.writeInt(this.playingCurrentTimeMs);
        parcel.writeByte(this.isFavorite ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isPlaying ? (byte) 1 : (byte) 0);
        parcel.writeByteArray(this.cover);
        parcel.writeByte(this.isDestroyed ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.appId);
    }

    public String toString() {
        return "MusicInfo{artistName='" + this.artistName + "', albumName='" + this.albumName + "', coverArt='" + this.coverArt + "', lyrics='" + this.lyrics + "', totalTimesMs=" + this.totalTimesMs + ", title='" + this.title + "', authorName='" + this.authorName + "', writerName='" + this.writerName + "', composerName='" + this.composerName + "', playingCurrentTimeMs=" + this.playingCurrentTimeMs + ", isFavorite=" + this.isFavorite + ", isPlaying=" + this.isPlaying + ", cover=" + Arrays.toString(this.cover).length() + ", isDestroyed=" + this.isDestroyed + ", appId=" + this.appId + '}';
    }
}
