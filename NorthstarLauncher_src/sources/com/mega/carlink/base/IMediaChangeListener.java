package com.mega.carlink.base;

import com.mega.carlink.model.MusicInfo;

/* JADX INFO: loaded from: classes2.dex */
public interface IMediaChangeListener {
    void onMediaInfoChanged(int i, MusicInfo musicInfo);

    void onMediaStateChange(int i, int i2);
}
