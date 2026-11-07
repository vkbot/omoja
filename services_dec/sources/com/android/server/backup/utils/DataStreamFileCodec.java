package com.android.server.backup.utils;

import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class DataStreamFileCodec<T> {
    private final DataStreamCodec<T> mCodec;
    private final File mFile;

    public DataStreamFileCodec(File file, DataStreamCodec<T> codec) {
        this.mFile = file;
        this.mCodec = codec;
    }

    public T deserialize() throws IOException {
        FileInputStream fileInputStream = new FileInputStream(this.mFile);
        try {
            DataInputStream dataInputStream = new DataInputStream(fileInputStream);
            try {
                T tDeserialize = this.mCodec.deserialize(dataInputStream);
                dataInputStream.close();
                fileInputStream.close();
                return tDeserialize;
            } catch (Throwable th) {
                try {
                    dataInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                fileInputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public void serialize(T t) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(this.mFile);
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(bufferedOutputStream);
                try {
                    this.mCodec.serialize(t, dataOutputStream);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    bufferedOutputStream.close();
                    fileOutputStream.close();
                } catch (Throwable th) {
                    try {
                        dataOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    bufferedOutputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Throwable th5) {
            try {
                fileOutputStream.close();
            } catch (Throwable th6) {
                th5.addSuppressed(th6);
            }
            throw th5;
        }
    }
}
