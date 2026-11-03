package com.android.launcher3.tracing.nano;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InternalNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class LauncherTraceEntryProto extends MessageNano {
    private static volatile LauncherTraceEntryProto[] _emptyArray;
    public long elapsedRealtimeNanos;
    public LauncherTraceProto launcher;

    public static LauncherTraceEntryProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new LauncherTraceEntryProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public LauncherTraceEntryProto() {
        clear();
    }

    public LauncherTraceEntryProto clear() {
        this.elapsedRealtimeNanos = 0L;
        this.launcher = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        long j = this.elapsedRealtimeNanos;
        if (j != 0) {
            codedOutputByteBufferNano.writeFixed64(1, j);
        }
        LauncherTraceProto launcherTraceProto = this.launcher;
        if (launcherTraceProto != null) {
            codedOutputByteBufferNano.writeMessage(3, launcherTraceProto);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        long j = this.elapsedRealtimeNanos;
        if (j != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeFixed64Size(1, j);
        }
        LauncherTraceProto launcherTraceProto = this.launcher;
        return launcherTraceProto != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, launcherTraceProto) : iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public LauncherTraceEntryProto mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 9) {
                this.elapsedRealtimeNanos = codedInputByteBufferNano.readFixed64();
            } else if (tag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                if (this.launcher == null) {
                    this.launcher = new LauncherTraceProto();
                }
                codedInputByteBufferNano.readMessage(this.launcher);
            }
        }
    }

    public static LauncherTraceEntryProto parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (LauncherTraceEntryProto) MessageNano.mergeFrom(new LauncherTraceEntryProto(), bArr);
    }

    public static LauncherTraceEntryProto parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new LauncherTraceEntryProto().mergeFrom(codedInputByteBufferNano);
    }
}
