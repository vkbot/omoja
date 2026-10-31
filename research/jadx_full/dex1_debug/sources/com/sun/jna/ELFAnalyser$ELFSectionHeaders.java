package com.sun.jna;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ELFAnalyser$ELFSectionHeaders {
    private final List<ELFAnalyser$ELFSectionHeaderEntry> entries = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ELFAnalyser$ELFSectionHeaders(boolean z8, boolean z9, ByteBuffer byteBuffer, RandomAccessFile randomAccessFile) throws IOException {
        long j9;
        short s5;
        short s9;
        short s10;
        byte b9;
        if (z8) {
            j9 = byteBuffer.getLong(40);
            s5 = byteBuffer.getShort(58);
            s9 = byteBuffer.getShort(60);
            s10 = byteBuffer.getShort(62);
        } else {
            j9 = byteBuffer.getInt(32);
            s5 = byteBuffer.getShort(46);
            s9 = byteBuffer.getShort(48);
            s10 = byteBuffer.getShort(50);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(s9 * s5);
        byteBufferAllocate.order(z9 ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        randomAccessFile.getChannel().read(byteBufferAllocate, j9);
        for (int i9 = 0; i9 < s9; i9++) {
            byteBufferAllocate.position(i9 * s5);
            ByteBuffer byteBufferSlice = byteBufferAllocate.slice();
            byteBufferSlice.order(byteBufferAllocate.order());
            byteBufferSlice.limit(s5);
            this.entries.add(new ELFAnalyser$ELFSectionHeaderEntry(z8, byteBufferSlice));
        }
        ELFAnalyser$ELFSectionHeaderEntry eLFAnalyser$ELFSectionHeaderEntry = this.entries.get(s10);
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(eLFAnalyser$ELFSectionHeaderEntry.getSize());
        byteBufferAllocate2.order(z9 ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        randomAccessFile.getChannel().read(byteBufferAllocate2, eLFAnalyser$ELFSectionHeaderEntry.getOffset());
        byteBufferAllocate2.rewind();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(20);
        for (ELFAnalyser$ELFSectionHeaderEntry eLFAnalyser$ELFSectionHeaderEntry2 : this.entries) {
            byteArrayOutputStream.reset();
            byteBufferAllocate2.position(eLFAnalyser$ELFSectionHeaderEntry2.getNameOffset());
            while (byteBufferAllocate2.position() < byteBufferAllocate2.limit() && (b9 = byteBufferAllocate2.get()) != 0) {
                byteArrayOutputStream.write(b9);
            }
            eLFAnalyser$ELFSectionHeaderEntry2.setName(byteArrayOutputStream.toString("ASCII"));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<ELFAnalyser$ELFSectionHeaderEntry> getEntries() {
        return this.entries;
    }
}
