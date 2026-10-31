package org.apache.commons.p161io.channels;

import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.SeekableByteChannel;
import java.util.Objects;
import p130l9.C2237i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class FileChannels {
    private FileChannels() {
    }

    public static boolean contentEquals(ReadableByteChannel readableByteChannel, ReadableByteChannel readableByteChannel2, int i10) {
        if (Objects.equals(readableByteChannel, readableByteChannel2)) {
            return true;
        }
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i10);
        ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(i10);
        boolean z9 = false;
        boolean z10 = false;
        int toLimit = 0;
        int toLimit2 = 0;
        while (true) {
            if (!z9) {
                toLimit = readToLimit(readableByteChannel, byteBufferAllocateDirect);
                byteBufferAllocateDirect.clear();
                z10 = toLimit == 0;
            }
            if (!z10) {
                toLimit2 = readToLimit(readableByteChannel2, byteBufferAllocateDirect2);
                byteBufferAllocateDirect2.clear();
                z9 = toLimit2 == 0;
            }
            if (toLimit == -1 && toLimit2 == -1) {
                return byteBufferAllocateDirect.equals(byteBufferAllocateDirect2);
            }
            if (toLimit == 0 || toLimit2 == 0) {
                Thread.yield();
            } else if (toLimit != toLimit2 || !byteBufferAllocateDirect.equals(byteBufferAllocateDirect2)) {
                return false;
            }
        }
    }

    private static int readToLimit(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) {
        int i10;
        if (!byteBuffer.hasRemaining()) {
            C2237i.m3594a();
            return 0;
        }
        int i11 = 0;
        while (byteBuffer.hasRemaining() && (i10 = readableByteChannel.read(byteBuffer)) != -1) {
            if (i10 == 0) {
                Thread.yield();
            } else {
                i11 += i10;
            }
        }
        if (i11 != 0) {
            return i11;
        }
        return -1;
    }

    private static long size(SeekableByteChannel seekableByteChannel) {
        if (seekableByteChannel != null) {
            return seekableByteChannel.size();
        }
        return 0L;
    }

    @Deprecated
    public static boolean contentEquals(FileChannel fileChannel, FileChannel fileChannel2, int i10) {
        return contentEquals((SeekableByteChannel) fileChannel, (SeekableByteChannel) fileChannel2, i10);
    }

    public static boolean contentEquals(SeekableByteChannel seekableByteChannel, SeekableByteChannel seekableByteChannel2, int i10) {
        if (Objects.equals(seekableByteChannel, seekableByteChannel2)) {
            return true;
        }
        long size = size(seekableByteChannel);
        long size2 = size(seekableByteChannel2);
        if (size != size2) {
            return false;
        }
        return (size == 0 && size2 == 0) || contentEquals((ReadableByteChannel) seekableByteChannel, (ReadableByteChannel) seekableByteChannel2, i10);
    }
}
