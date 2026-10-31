package androidx.emoji2.text;

import android.content.res.AssetManager;
import androidx.annotation.AnyThread;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.emoji2.text.flatbuffer.MetadataList;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.UShort;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo$Scope.LIBRARY})
class MetadataListReader {
    private static final int EMJI_TAG = 1164798569;
    private static final int EMJI_TAG_DEPRECATED = 1701669481;
    private static final int META_TABLE_NAME = 1835365473;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private MetadataListReader() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static MetadataListReader$OffsetInfo findOffsetInfo(MetadataListReader$OpenTypeReader metadataListReader$OpenTypeReader) throws IOException {
        long unsignedInt;
        metadataListReader$OpenTypeReader.skip(4);
        int unsignedShort = metadataListReader$OpenTypeReader.readUnsignedShort();
        if (unsignedShort > 100) {
            n0.b.A("Cannot read metadata.");
            return null;
        }
        metadataListReader$OpenTypeReader.skip(6);
        int i9 = 0;
        while (true) {
            if (i9 >= unsignedShort) {
                unsignedInt = -1;
                break;
            }
            int tag = metadataListReader$OpenTypeReader.readTag();
            metadataListReader$OpenTypeReader.skip(4);
            unsignedInt = metadataListReader$OpenTypeReader.readUnsignedInt();
            metadataListReader$OpenTypeReader.skip(4);
            if (META_TABLE_NAME == tag) {
                break;
            }
            i9++;
        }
        if (unsignedInt != -1) {
            metadataListReader$OpenTypeReader.skip((int) (unsignedInt - metadataListReader$OpenTypeReader.getPosition()));
            metadataListReader$OpenTypeReader.skip(12);
            long unsignedInt2 = metadataListReader$OpenTypeReader.readUnsignedInt();
            for (int i10 = 0; i10 < unsignedInt2; i10++) {
                int tag2 = metadataListReader$OpenTypeReader.readTag();
                long unsignedInt3 = metadataListReader$OpenTypeReader.readUnsignedInt();
                long unsignedInt4 = metadataListReader$OpenTypeReader.readUnsignedInt();
                if (EMJI_TAG == tag2 || EMJI_TAG_DEPRECATED == tag2) {
                    return new MetadataListReader$OffsetInfo(unsignedInt3 + unsignedInt, unsignedInt4);
                }
            }
        }
        n0.b.A("Cannot read metadata.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static MetadataList read(InputStream inputStream) throws IOException {
        MetadataListReader$InputStreamOpenTypeReader metadataListReader$InputStreamOpenTypeReader = new MetadataListReader$InputStreamOpenTypeReader(inputStream);
        MetadataListReader$OffsetInfo metadataListReader$OffsetInfoFindOffsetInfo = findOffsetInfo(metadataListReader$InputStreamOpenTypeReader);
        metadataListReader$InputStreamOpenTypeReader.skip((int) (metadataListReader$OffsetInfoFindOffsetInfo.getStartOffset() - metadataListReader$InputStreamOpenTypeReader.getPosition()));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) metadataListReader$OffsetInfoFindOffsetInfo.getLength());
        int i9 = inputStream.read(byteBufferAllocate.array());
        if (i9 == metadataListReader$OffsetInfoFindOffsetInfo.getLength()) {
            return MetadataList.getRootAsMetadataList(byteBufferAllocate);
        }
        throw new IOException("Needed " + metadataListReader$OffsetInfoFindOffsetInfo.getLength() + " bytes, got " + i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long toUnsignedInt(int i9) {
        return ((long) i9) & 4294967295L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int toUnsignedShort(short s5) {
        return s5 & UShort.MAX_VALUE;
    }

    public static MetadataList read(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position((int) findOffsetInfo(new MetadataListReader$ByteBufferReader(byteBufferDuplicate)).getStartOffset());
        return MetadataList.getRootAsMetadataList(byteBufferDuplicate);
    }

    public static MetadataList read(AssetManager assetManager, String str) throws IOException {
        InputStream inputStreamOpen = assetManager.open(str);
        try {
            MetadataList metadataList = read(inputStreamOpen);
            if (inputStreamOpen != null) {
                inputStreamOpen.close();
            }
            return metadataList;
        } catch (Throwable th) {
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
