package com.android.launcher3.tracing.nano;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InternalNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class LauncherTraceProto extends MessageNano {
    private static volatile LauncherTraceProto[] _emptyArray;
    public TouchInteractionServiceProto touchInteractionService;

    public static LauncherTraceProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new LauncherTraceProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public LauncherTraceProto() {
        clear();
    }

    public LauncherTraceProto clear() {
        this.touchInteractionService = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        TouchInteractionServiceProto touchInteractionServiceProto = this.touchInteractionService;
        if (touchInteractionServiceProto != null) {
            codedOutputByteBufferNano.writeMessage(1, touchInteractionServiceProto);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        TouchInteractionServiceProto touchInteractionServiceProto = this.touchInteractionService;
        return touchInteractionServiceProto != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, touchInteractionServiceProto) : iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public LauncherTraceProto mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag != 10) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                if (this.touchInteractionService == null) {
                    this.touchInteractionService = new TouchInteractionServiceProto();
                }
                codedInputByteBufferNano.readMessage(this.touchInteractionService);
            }
        }
    }

    public static LauncherTraceProto parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (LauncherTraceProto) MessageNano.mergeFrom(new LauncherTraceProto(), bArr);
    }

    public static LauncherTraceProto parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new LauncherTraceProto().mergeFrom(codedInputByteBufferNano);
    }
}
