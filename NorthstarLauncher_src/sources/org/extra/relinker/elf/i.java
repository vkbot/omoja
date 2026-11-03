package org.extra.relinker.elf;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.UByte;
import kotlin.UShort;

/* JADX INFO: loaded from: classes2.dex */
public class i implements Closeable {
    private final int a = 1179403647;
    private final FileChannel b;

    public i(File file) {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.b = new FileInputStream(file).getChannel();
    }

    public d a() throws IOException {
        this.b.position(0L);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        if (e(byteBufferAllocate, 0L) != 1179403647) {
            throw new IllegalArgumentException("Invalid ELF Magic!");
        }
        short sA = a(byteBufferAllocate, 4L);
        boolean z = a(byteBufferAllocate, 5L) == 2;
        if (sA == 1) {
            return new g(z, this);
        }
        if (sA == 2) {
            return new h(z, this);
        }
        throw new IllegalStateException("Invalid class type!");
    }

    public List b() throws IOException {
        long j;
        c cVarA;
        this.b.position(0L);
        ArrayList arrayList = new ArrayList();
        d dVarA = a();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(dVarA.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = dVarA.f;
        int i = 0;
        if (j2 == 65535) {
            j2 = dVarA.a(0).a;
        }
        long j3 = 0;
        while (true) {
            if (j3 >= j2) {
                j = 0;
                break;
            }
            e eVarA = dVarA.a(j3);
            if (eVarA.a == 2) {
                j = eVarA.b;
                break;
            }
            j3++;
        }
        if (j == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        long j4 = 0;
        do {
            cVarA = dVarA.a(j, i);
            long j5 = cVarA.a;
            if (j5 == 1) {
                arrayList2.add(Long.valueOf(cVarA.b));
            } else if (j5 == 5) {
                j4 = cVarA.b;
            }
            i++;
        } while (cVarA.a != 0);
        if (j4 == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long jA = a(dVarA, j2, j4);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList.add(d(byteBufferAllocate, ((Long) it.next()).longValue() + jA));
        }
        return arrayList;
    }

    protected long c(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.close();
    }

    protected String d(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j2 = 1 + j;
            short sA = a(byteBuffer, j);
            if (sA == 0) {
                return sb.toString();
            }
            sb.append((char) sA);
            j = j2;
        }
    }

    protected long e(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 4);
        return ((long) byteBuffer.getInt()) & 4294967295L;
    }

    private long a(d dVar, long j, long j2) {
        for (long j3 = 0; j3 < j; j3++) {
            e eVarA = dVar.a(j3);
            if (eVarA.a == 1) {
                long j4 = eVarA.c;
                if (j4 <= j2 && j2 <= eVarA.d + j4) {
                    return (j2 - j4) + eVarA.b;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    protected short a(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & UByte.MAX_VALUE);
    }

    protected void a(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < i) {
            int i2 = this.b.read(byteBuffer, j + j2);
            if (i2 == -1) {
                throw new EOFException();
            }
            j2 += (long) i2;
        }
        byteBuffer.position(0);
    }

    protected int b(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 2);
        return byteBuffer.getShort() & UShort.MAX_VALUE;
    }
}
