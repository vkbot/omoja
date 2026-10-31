package org.apache.commons.p161io;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class CopyUtils {
    @Deprecated
    public CopyUtils() {
    }

    public static int copy(Reader reader, Writer writer) {
        IOUtils.ScratchChars scratchChars = IOUtils.ScratchChars.get();
        try {
            char[] cArrArray = scratchChars.array();
            int i10 = 0;
            while (true) {
                int i11 = reader.read(cArrArray);
                if (-1 == i11) {
                    scratchChars.close();
                    return i10;
                }
                writer.write(cArrArray, 0, i11);
                i10 += i11;
            }
        } catch (Throwable th) {
            if (scratchChars != null) {
                try {
                    scratchChars.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Deprecated
    public static void copy(byte[] bArr, Writer writer) {
        copy(new ByteArrayInputStream(bArr), writer);
    }

    public static void copy(byte[] bArr, Writer writer, String str) {
        copy(new ByteArrayInputStream(bArr), writer, str);
    }

    public static int copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArrByteArray = IOUtils.byteArray();
        int i10 = 0;
        while (true) {
            int i11 = inputStream.read(bArrByteArray);
            if (-1 == i11) {
                return i10;
            }
            outputStream.write(bArrByteArray, 0, i11);
            i10 += i11;
        }
    }

    @Deprecated
    public static void copy(InputStream inputStream, Writer writer) {
        copy(new InputStreamReader(inputStream, Charset.defaultCharset()), writer);
    }

    public static void copy(InputStream inputStream, Writer writer, String str) {
        copy(new InputStreamReader(inputStream, str), writer);
    }

    @Deprecated
    public static void copy(Reader reader, OutputStream outputStream) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, Charset.defaultCharset());
        copy(reader, outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static void copy(Reader reader, OutputStream outputStream, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, str);
        copy(reader, outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static void copy(byte[] bArr, OutputStream outputStream) throws IOException {
        outputStream.write(bArr);
    }

    @Deprecated
    public static void copy(String str, OutputStream outputStream) throws IOException {
        StringReader stringReader = new StringReader(str);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, Charset.defaultCharset());
        copy(stringReader, outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static void copy(String str, OutputStream outputStream, String str2) throws IOException {
        StringReader stringReader = new StringReader(str);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, str2);
        copy(stringReader, outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static void copy(String str, Writer writer) throws IOException {
        writer.write(str);
    }
}
