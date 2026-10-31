package org.apache.commons.io.channels;

import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.SeekableByteChannel;
import java.util.Objects;
import l9.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class FileChannels {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FileChannels() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean contentEquals(ReadableByteChannel readableByteChannel, ReadableByteChannel readableByteChannel2, int i) {
        if (Objects.equals(readableByteChannel, readableByteChannel2)) {
            return true;
        }
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i);
        ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(i);
        boolean z = false;
        boolean z2 = false;
        int toLimit = 0;
        int toLimit2 = 0;
        while (true) {
            if (!z) {
                toLimit = readToLimit(readableByteChannel, byteBufferAllocateDirect);
                byteBufferAllocateDirect.clear();
                z2 = toLimit == 0;
            }
            if (!z2) {
                toLimit2 = readToLimit(readableByteChannel2, byteBufferAllocateDirect2);
                byteBufferAllocateDirect2.clear();
                z = toLimit2 == 0;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int readToLimit(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) {
        int i;
        if (!byteBuffer.hasRemaining()) {
            i.a();
            return 0;
        }
        int i2 = 0;
        while (byteBuffer.hasRemaining() && (i = readableByteChannel.read(byteBuffer)) != -1) {
            if (i == 0) {
                Thread.yield();
            } else {
                i2 += i;
            }
        }
        if (i2 != 0) {
            return i2;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static long size(SeekableByteChannel seekableByteChannel) {
        if (seekableByteChannel != null) {
            return seekableByteChannel.size();
        }
        return 0L;
    }

    @Deprecated
    public static boolean contentEquals(FileChannel fileChannel, FileChannel fileChannel2, int i) {
        return contentEquals((SeekableByteChannel) fileChannel, (SeekableByteChannel) fileChannel2, i);
    }

    public static boolean contentEquals(SeekableByteChannel seekableByteChannel, SeekableByteChannel seekableByteChannel2, int i) {
        if (Objects.equals(seekableByteChannel, seekableByteChannel2)) {
            return true;
        }
        long size = size(seekableByteChannel);
        long size2 = size(seekableByteChannel2);
        if (size != size2) {
            return false;
        }
        return (size == 0 && size2 == 0) || contentEquals((ReadableByteChannel) seekableByteChannel, (ReadableByteChannel) seekableByteChannel2, i);
    }
}
