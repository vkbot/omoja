package com.android.launcher3.tracing.nano;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InternalNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class TouchInteractionServiceProto extends MessageNano {
    private static volatile TouchInteractionServiceProto[] _emptyArray;
    public boolean serviceConnected;

    public static TouchInteractionServiceProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new TouchInteractionServiceProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public TouchInteractionServiceProto() {
        clear();
    }

    public TouchInteractionServiceProto clear() {
        this.serviceConnected = false;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        boolean z = this.serviceConnected;
        if (z) {
            codedOutputByteBufferNano.writeBool(1, z);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override // com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        boolean z = this.serviceConnected;
        return z ? iComputeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(1, z) : iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public TouchInteractionServiceProto mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag != 8) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.serviceConnected = codedInputByteBufferNano.readBool();
            }
        }
    }

    public static TouchInteractionServiceProto parseFrom(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (TouchInteractionServiceProto) MessageNano.mergeFrom(new TouchInteractionServiceProto(), bArr);
    }

    public static TouchInteractionServiceProto parseFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new TouchInteractionServiceProto().mergeFrom(codedInputByteBufferNano);
    }
}
