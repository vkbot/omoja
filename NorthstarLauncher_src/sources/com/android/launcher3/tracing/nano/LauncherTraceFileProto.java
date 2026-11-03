package com.android.launcher3.tracing.nano;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InternalNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class LauncherTraceFileProto extends MessageNano {
    private static volatile LauncherTraceFileProto[] _emptyArray;
    public LauncherTraceEntryProto[] entry;
    public long magicNumber;

    public interface MagicNumber {
        public static final int INVALID = 0;
        public static final int MAGIC_NUMBER_H = 1129469010;
        public static final int MAGIC_NUMBER_L = 1212370508;
    }

    public static LauncherTraceFileProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new LauncherTraceFileProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public LauncherTraceFileProto() {
        clear();
    }

    public LauncherTraceFileProto clear() {
        this.magicNumber = 0L;
        this.entry = LauncherTraceEntryProto.emptyArray();
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        long j = this.magicNumber;
        if (j != 0) {
            codedOutputByteBufferNano.writeFixed64(1, j);
        }
        LauncherTraceEntryProto[] launcherTraceEntryProtoArr = this.entry;
        if (launcherTraceEntryProtoArr != null && launcherTraceEntryProtoArr.length > 0) {
            int i = 0;
            while (true) {
                LauncherTraceEntryProto[] launcherTraceEntryProtoArr2 = this.entry;
                if (i >= launcherTraceEntryProtoArr2.length) {
                    break;
                }
                LauncherTraceEntryProto launcherTraceEntryProto = launcherTraceEntryProtoArr2[i];
                if (launcherTraceEntryProto != null) {
                    codedOutputByteBufferNano.writeMessage(2, launcherTraceEntryProto);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        long j = this.magicNumber;
        if (j != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeFixed64Size(1, j);
        }
        LauncherTraceEntryProto[] launcherTraceEntryProtoArr = this.entry;
        if (launcherTraceEntryProtoArr != null && launcherTraceEntryProtoArr.length > 0) {
            int i = 0;
            while (true) {
                LauncherTraceEntryProto[] launcherTraceEntryProtoArr2 = this.entry;
                if (i >= launcherTraceEntryProtoArr2.length) {
                    break;
                }
                LauncherTraceEntryProto launcherTraceEntryProto = launcherTraceEntryProtoArr2[i];
                if (launcherTraceEntryProto != null) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, launcherTraceEntryProto);
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public LauncherTraceFileProto mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 9) {
                this.magicNumber = codedInputByteBufferNano.readFixed64();
            } else if (tag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                LauncherTraceEntryProto[] launcherTraceEntryProtoArr = this.entry;
                int length = launcherTraceEntryProtoArr == null ? 0 : launcherTraceEntryProtoArr.length;
                int i = repeatedFieldArrayLength + length;
                LauncherTraceEntryProto[] launcherTraceEntryProtoArr2 = new LauncherTraceEntryProto[i];
                if (length != 0) {
                    System.arraycopy(launcherTraceEntryProtoArr, 0, launcherTraceEntryProtoArr2, 0, length);
                }
                while (length < i - 1) {
                    LauncherTraceEntryProto launcherTraceEntryProto = new LauncherTraceEntryProto();
                    launcherTraceEntryProtoArr2[length] = launcherTraceEntryProto;
                    codedInputByteBufferNano.readMessage(launcherTraceEntryProto);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                LauncherTraceEntryProto launcherTraceEntryProto2 = new LauncherTraceEntryProto();
                launcherTraceEntryProtoArr2[length] = launcherTraceEntryProto2;
                codedInputByteBufferNano.readMessage(launcherTraceEntryProto2);
                this.entry = launcherTraceEntryProtoArr2;
            }
        }
    }

    public static LauncherTraceFileProto parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (LauncherTraceFileProto) MessageNano.mergeFrom(new LauncherTraceFileProto(), bArr);
    }

    public static LauncherTraceFileProto parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new LauncherTraceFileProto().mergeFrom(codedInputByteBufferNano);
    }
}
