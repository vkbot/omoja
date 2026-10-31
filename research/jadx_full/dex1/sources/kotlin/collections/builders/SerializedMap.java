package kotlin.collections.builders;

import ai.onnxruntime.a;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Map;
import java.util.Map$Entry;
import kotlin.Metadata;
import kotlin.collections.MapsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0002R\u0016\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lkotlin/collections/builders/SerializedMap;", "Ljava/io/Externalizable;", "map", "", "<init>", "(Ljava/util/Map;)V", "()V", "writeExternal", "", "output", "Ljava/io/ObjectOutput;", "readExternal", "input", "Ljava/io/ObjectInput;", "readResolve", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
final class SerializedMap implements Externalizable {
    public static final SerializedMap$Companion Companion = new SerializedMap$Companion(null);
    private static final long serialVersionUID = 0;
    private Map<?, ?> map;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SerializedMap(Map<?, ?> map) {
        map.getClass();
        this.map = map;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final Object readResolve() {
        return this.map;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Externalizable
    public void readExternal(ObjectInput input) throws IOException {
        input.getClass();
        byte b9 = input.readByte();
        if (b9 != 0) {
            throw new InvalidObjectException(a.e(b9, "Unsupported flags value: "));
        }
        int i9 = input.readInt();
        if (i9 < 0) {
            i.b(i9, "Illegal size value: ");
            return;
        }
        Map mapCreateMapBuilder = MapsKt.createMapBuilder(i9);
        for (int i10 = 0; i10 < i9; i10++) {
            mapCreateMapBuilder.put(input.readObject(), input.readObject());
        }
        this.map = MapsKt.build(mapCreateMapBuilder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput output) throws IOException {
        output.getClass();
        output.writeByte(0);
        output.writeInt(this.map.size());
        for (Map$Entry<?, ?> map$Entry : this.map.entrySet()) {
            output.writeObject(map$Entry.getKey());
            output.writeObject(map$Entry.getValue());
        }
    }

    public SerializedMap() {
        this(MapsKt.emptyMap());
    }
}
