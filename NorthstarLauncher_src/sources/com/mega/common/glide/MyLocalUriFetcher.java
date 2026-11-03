package com.mega.common.glide;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.DataFetcher;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MyLocalUriFetcher<T> implements DataFetcher<T> {
    private static final String TAG = "MyLocalUriFetcher";
    private final ContentResolver mContentResolver;
    private T mData;
    private final Uri mUri;

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }

    protected abstract void close(T t) throws IOException;

    protected abstract T loadResource(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    public MyLocalUriFetcher(ContentResolver contentResolver, Uri uri) {
        this.mContentResolver = contentResolver;
        this.mUri = uri;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void loadData(Priority priority, DataFetcher.DataCallback<? super T> dataCallback) {
        try {
            T tLoadResource = loadResource(this.mUri, this.mContentResolver);
            this.mData = tLoadResource;
            dataCallback.onDataReady(tLoadResource);
        } catch (FileNotFoundException e) {
            Log.d(TAG, "Failed to open Uri " + this.mUri + ". " + e.getMessage());
            dataCallback.onLoadFailed(e);
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
        T t = this.mData;
        if (t != null) {
            try {
                close(t);
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public DataSource getDataSource() {
        return DataSource.LOCAL;
    }
}
