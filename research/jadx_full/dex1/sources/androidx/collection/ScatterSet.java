package androidx.collection;

import ai.onnxruntime.a;
import androidx.annotation.IntRange;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.b;
import j1.i;
import java.util.Set;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001<B\u0007\b\u0004¢\u0006\u0002\u0010\u0003J:\u0010\u0013\u001a\u00020\u00142!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00140\u0016H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001J\u0006\u0010\u001a\u001a\u00020\u0014J:\u0010\u001a\u001a\u00020\u00142!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00140\u0016H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001J\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cJ\u0016\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0002\u0010\u001eJ\b\u0010\u001f\u001a\u00020\u0005H\u0007J:\u0010\u001f\u001a\u00020\u00052!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00140\u0016H\u0087\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001J\u0013\u0010 \u001a\u00020\u00142\b\u0010!\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0018\u0010\"\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b#\u0010$J\u000e\u0010%\u001a\u00028\u0000H\u0086\b¢\u0006\u0002\u0010&J?\u0010%\u001a\u00028\u00002!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00140\u0016H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0002\u0010'JA\u0010(\u001a\u0004\u0018\u00018\u00002!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00140\u0016H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0002\u0010'J:\u0010)\u001a\u00020*2!\u0010+\u001a\u001d\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020*0\u0016H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001J:\u0010,\u001a\u00020*2!\u0010+\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(-\u0012\u0004\u0012\u00020*0\u0016H\u0081\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001J\b\u0010.\u001a\u00020\u0005H\u0016J\u0006\u0010/\u001a\u00020\u0014J\u0006\u00100\u001a\u00020\u0014JR\u00101\u001a\u0002022\b\b\u0002\u00103\u001a\u0002042\b\b\u0002\u00105\u001a\u0002042\b\b\u0002\u00106\u001a\u0002042\b\b\u0002\u00107\u001a\u00020\u00052\b\b\u0002\u00108\u001a\u0002042\u0016\b\u0002\u00109\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u000204\u0018\u00010\u0016H\u0007J\u0006\u0010:\u001a\u00020\u0014J\b\u0010;\u001a\u000202H\u0016R\u0012\u0010\u0004\u001a\u00020\u00058\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\"\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000b8\u0000@\u0000X\u0081\u000e¢\u0006\n\n\u0002\u0010\r\u0012\u0004\b\f\u0010\u0003R\u0018\u0010\u000e\u001a\u00020\u000f8\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0010\u0010\u0003R\u0011\u0010\u0011\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b\u0012\u0010\t\u0082\u0001\u0001=\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006>"}, d2 = {"Landroidx/collection/ScatterSet;", ExifInterface.LONGITUDE_EAST, "", "()V", "_capacity", "", "_size", "capacity", "getCapacity", "()I", "elements", "", "getElements$annotations", "[Ljava/lang/Object;", "metadata", "", "getMetadata$annotations", "size", "getSize", "all", "", "predicate", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "element", "any", "asSet", "", "contains", "(Ljava/lang/Object;)Z", "count", "equals", "other", "findElementIndex", "findElementIndex$collection", "(Ljava/lang/Object;)I", "first", "()Ljava/lang/Object;", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "firstOrNull", "forEach", "", "block", "forEachIndex", "index", "hashCode", "isEmpty", "isNotEmpty", "joinToString", "", "separator", "", "prefix", "postfix", "limit", "truncated", "transform", "none", "toString", "SetWrapper", "Landroidx/collection/MutableScatterSet;", "collection"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nScatterSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1100:1\n267#1,4:1101\n237#1,7:1105\n248#1,3:1113\n251#1,2:1117\n272#1,2:1119\n254#1,6:1121\n274#1:1127\n267#1,4:1128\n237#1,7:1132\n248#1,3:1140\n251#1,2:1144\n272#1,2:1146\n254#1,6:1148\n274#1:1154\n267#1,4:1155\n237#1,7:1159\n248#1,3:1167\n251#1,2:1171\n272#1,2:1173\n254#1,6:1175\n274#1:1181\n237#1,7:1184\n248#1,3:1192\n251#1,9:1196\n267#1,4:1205\n237#1,7:1209\n248#1,3:1217\n251#1,2:1221\n272#1,2:1223\n254#1,6:1225\n274#1:1231\n267#1,4:1232\n237#1,7:1236\n248#1,3:1244\n251#1,2:1248\n272#1,2:1250\n254#1,6:1252\n274#1:1258\n267#1,4:1259\n237#1,7:1263\n248#1,3:1271\n251#1,2:1275\n272#1,2:1277\n254#1,6:1279\n274#1:1285\n433#1:1286\n434#1:1290\n436#1,2:1292\n438#1,3:1295\n441#1:1301\n442#1:1305\n443#1:1307\n444#1,4:1310\n450#1:1315\n451#1,8:1317\n267#1,4:1325\n237#1,7:1329\n248#1,3:1337\n251#1,2:1341\n272#1,2:1343\n254#1,6:1345\n274#1:1351\n267#1,4:1352\n237#1,7:1356\n248#1,3:1364\n251#1,2:1368\n272#1,2:1370\n254#1,6:1372\n274#1:1378\n267#1,4:1379\n237#1,7:1383\n248#1,3:1391\n251#1,2:1395\n272#1,2:1397\n254#1,6:1399\n274#1:1405\n1826#2:1112\n1688#2:1116\n1826#2:1139\n1688#2:1143\n1826#2:1166\n1688#2:1170\n1826#2:1182\n1688#2:1183\n1826#2:1191\n1688#2:1195\n1826#2:1216\n1688#2:1220\n1826#2:1243\n1688#2:1247\n1826#2:1270\n1688#2:1274\n1605#2,3:1287\n1619#2:1291\n1615#2:1294\n1795#2,3:1298\n1809#2,3:1302\n1733#2:1306\n1721#2:1308\n1715#2:1309\n1728#2:1314\n1818#2:1316\n1826#2:1336\n1688#2:1340\n1826#2:1363\n1688#2:1367\n1826#2:1390\n1688#2:1394\n1605#2,3:1406\n1619#2:1409\n1615#2:1410\n1795#2,3:1411\n1809#2,3:1414\n1733#2:1417\n1721#2:1418\n1715#2:1419\n1728#2:1420\n1818#2:1421\n*S KotlinDebug\n*F\n+ 1 ScatterSet.kt\nandroidx/collection/ScatterSet\n*L\n201#1:1101,4\n201#1:1105,7\n201#1:1113,3\n201#1:1117,2\n201#1:1119,2\n201#1:1121,6\n201#1:1127\n214#1:1128,4\n214#1:1132,7\n214#1:1140,3\n214#1:1144,2\n214#1:1146,2\n214#1:1148,6\n214#1:1154\n227#1:1155,4\n227#1:1159,7\n227#1:1167,3\n227#1:1171,2\n227#1:1173,2\n227#1:1175,6\n227#1:1181\n270#1:1184,7\n270#1:1192,3\n270#1:1196,9\n284#1:1205,4\n284#1:1209,7\n284#1:1217,3\n284#1:1221,2\n284#1:1223,2\n284#1:1225,6\n284#1:1231\n297#1:1232,4\n297#1:1236,7\n297#1:1244,3\n297#1:1248,2\n297#1:1250,2\n297#1:1252,6\n297#1:1258\n318#1:1259,4\n318#1:1263,7\n318#1:1271,3\n318#1:1275,2\n318#1:1277,2\n318#1:1279,6\n318#1:1285\n329#1:1286\n329#1:1290\n329#1:1292,2\n329#1:1295,3\n329#1:1301\n329#1:1305\n329#1:1307\n329#1:1310,4\n329#1:1315\n329#1:1317,8\n352#1:1325,4\n352#1:1329,7\n352#1:1337,3\n352#1:1341,2\n352#1:1343,2\n352#1:1345,6\n352#1:1351\n378#1:1352,4\n378#1:1356,7\n378#1:1364,3\n378#1:1368,2\n378#1:1370,2\n378#1:1372,6\n378#1:1378\n407#1:1379,4\n407#1:1383,7\n407#1:1391,3\n407#1:1395,2\n407#1:1397,2\n407#1:1399,6\n407#1:1405\n201#1:1112\n201#1:1116\n214#1:1139\n214#1:1143\n227#1:1166\n227#1:1170\n243#1:1182\n250#1:1183\n270#1:1191\n270#1:1195\n284#1:1216\n284#1:1220\n297#1:1243\n297#1:1247\n318#1:1270\n318#1:1274\n329#1:1287,3\n329#1:1291\n329#1:1294\n329#1:1298,3\n329#1:1302,3\n329#1:1306\n329#1:1308\n329#1:1309\n329#1:1314\n329#1:1316\n352#1:1336\n352#1:1340\n378#1:1363\n378#1:1367\n407#1:1390\n407#1:1394\n433#1:1406,3\n434#1:1409\n437#1:1410\n440#1:1411,3\n441#1:1414,3\n442#1:1417\n443#1:1418\n443#1:1419\n447#1:1420\n450#1:1421\n*E\n"})
public abstract class ScatterSet<E> {

    @JvmField
    public int _capacity;

    @JvmField
    public int _size;

    @JvmField
    public Object[] elements;

    @JvmField
    public long[] metadata;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ScatterSet() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.elements = ContainerHelpersKt.EMPTY_OBJECTS;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: androidx.collection.ScatterSet */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String joinToString$default(ScatterSet scatterSet, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i9, CharSequence charSequence4, Function1 function1, int i10, Object obj) {
        if (obj != null) {
            b.g("Super calls with default arguments not supported in this target, function: joinToString");
            return null;
        }
        if ((i10 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i10 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i10 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i10 & 8) != 0) {
            i9 = -1;
        }
        if ((i10 & 16) != 0) {
            charSequence4 = "...";
        }
        if ((i10 & 32) != 0) {
            function1 = null;
        }
        CharSequence charSequence5 = charSequence4;
        Function1 function2 = function1;
        return scatterSet.joinToString(charSequence, charSequence2, charSequence3, i9, charSequence5, function2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean all(Function1<? super E, Boolean> predicate) {
        predicate.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i9 = 0;
        while (true) {
            long j9 = jArr[i9];
            if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i10 = 8 - ((~(i9 - length)) >>> 31);
                for (int i11 = 0; i11 < i10; i11++) {
                    if ((255 & j9) < 128 && !predicate.invoke(objArr[(i9 << 3) + i11]).booleanValue()) {
                        return false;
                    }
                    j9 >>= 8;
                }
                if (i10 != 8) {
                    return true;
                }
            }
            if (i9 == length) {
                return true;
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:17:0x004c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x004e A[LOOP:0: B:5:0x000e->B:18:0x004e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x0051 A[SYNTHETIC] */
    public final boolean any(Function1<? super E, Boolean> predicate) {
        predicate.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i9 = 0;
            while (true) {
                long j9 = jArr[i9];
                if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i10 = 8 - ((~(i9 - length)) >>> 31);
                    for (int i11 = 0; i11 < i10; i11++) {
                        if ((255 & j9) < 128 && predicate.invoke(objArr[(i9 << 3) + i11]).booleanValue()) {
                            return true;
                        }
                        j9 >>= 8;
                    }
                    if (i10 == 8) {
                        if (i9 != length) {
                            i9++;
                        }
                    }
                } else if (i9 != length) {
                    i9++;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Set<E> asSet() {
        return new ScatterSet$SetWrapper(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean contains(E element) {
        int iNumberOfTrailingZeros;
        int iHashCode = (element != null ? element.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
        int i9 = iHashCode ^ (iHashCode << 16);
        int i10 = i9 & 127;
        int i11 = this._capacity;
        int i12 = (i9 >>> 7) & i11;
        int i13 = 0;
        loop0: while (true) {
            long[] jArr = this.metadata;
            int i14 = i12 >> 3;
            int i15 = (i12 & 7) << 3;
            long j9 = ((jArr[i14 + 1] << (64 - i15)) & ((-i15) >> 63)) | (jArr[i14] >>> i15);
            long j10 = (((long) i10) * ScatterMapKt.BitmaskLsb) ^ j9;
            for (long j11 = (~j10) & (j10 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j11 != 0; j11 &= j11 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j11) >> 3) + i12) & i11;
                if (Intrinsics.areEqual(this.elements[iNumberOfTrailingZeros], element)) {
                    break loop0;
                }
            }
            if ((j9 & ((~j9) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i13 += 8;
            i12 = (i12 + i13) & i11;
        }
        return iNumberOfTrailingZeros >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public final int count(Function1<? super E, Boolean> predicate) {
        predicate.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return 0;
        }
        int i9 = 0;
        int i10 = 0;
        while (true) {
            long j9 = jArr[i9];
            if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i9 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j9) < 128 && predicate.invoke(objArr[(i9 << 3) + i12]).booleanValue()) {
                        i10++;
                    }
                    j9 >>= 8;
                }
                if (i11 != 8) {
                    return i10;
                }
            }
            if (i9 == length) {
                return i10;
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: androidx.collection.ScatterSet */
    /* JADX WARN: Code duplicated, block: B:25:0x005c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x005e A[LOOP:0: B:14:0x0025->B:26:0x005e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0061 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ScatterSet)) {
            return false;
        }
        ScatterSet scatterSet = (ScatterSet) other;
        if (scatterSet.get_size() != get_size()) {
            return false;
        }
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i9 = 0;
            while (true) {
                long j9 = jArr[i9];
                if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i10 = 8 - ((~(i9 - length)) >>> 31);
                    for (int i11 = 0; i11 < i10; i11++) {
                        if ((255 & j9) < 128 && !scatterSet.contains(objArr[(i9 << 3) + i11])) {
                            return false;
                        }
                        j9 >>= 8;
                    }
                    if (i10 == 8) {
                        if (i9 != length) {
                            i9++;
                        }
                    }
                } else if (i9 != length) {
                    i9++;
                }
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int findElementIndex$collection(E element) {
        int i9 = 0;
        int iHashCode = (element != null ? element.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
        int i10 = iHashCode ^ (iHashCode << 16);
        int i11 = i10 & 127;
        int i12 = this._capacity;
        int i13 = i10 >>> 7;
        while (true) {
            int i14 = i13 & i12;
            long[] jArr = this.metadata;
            int i15 = i14 >> 3;
            int i16 = (i14 & 7) << 3;
            long j9 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j10 = (((long) i11) * ScatterMapKt.BitmaskLsb) ^ j9;
            for (long j11 = (~j10) & (j10 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j11 != 0; j11 &= j11 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j11) >> 3) + i14) & i12;
                if (Intrinsics.areEqual(this.elements[iNumberOfTrailingZeros], element)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j9 & ((~j9) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i9 += 8;
            i13 = i14 + i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:16:0x004b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x004d A[LOOP:0: B:5:0x000e->B:17:0x004d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:20:0x0050 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v5, types: [E, java.lang.Object] */
    public final E first(Function1<? super E, Boolean> predicate) {
        predicate.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i9 = 0;
            while (true) {
                long j9 = jArr[i9];
                if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i10 = 8 - ((~(i9 - length)) >>> 31);
                    for (int i11 = 0; i11 < i10; i11++) {
                        if ((255 & j9) < 128) {
                            ?? r10 = (Object) objArr[(i9 << 3) + i11];
                            if (predicate.invoke(r10).booleanValue()) {
                                return r10;
                            }
                        }
                        j9 >>= 8;
                    }
                    if (i10 == 8) {
                        if (i9 != length) {
                            i9++;
                        }
                    }
                } else if (i9 != length) {
                    i9++;
                }
            }
        }
        i.g("Could not find a match");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Type inference failed for: r10v5, types: [E, java.lang.Object] */
    public final E firstOrNull(Function1<? super E, Boolean> predicate) {
        predicate.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return null;
        }
        int i9 = 0;
        while (true) {
            long j9 = jArr[i9];
            if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i10 = 8 - ((~(i9 - length)) >>> 31);
                for (int i11 = 0; i11 < i10; i11++) {
                    if ((255 & j9) < 128) {
                        ?? r10 = (Object) objArr[(i9 << 3) + i11];
                        if (predicate.invoke(r10).booleanValue()) {
                            return r10;
                        }
                    }
                    j9 >>= 8;
                }
                if (i10 != 8) {
                    return null;
                }
            }
            if (i9 == length) {
                return null;
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void forEach(Function1<? super E, Unit> block) {
        block.getClass();
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i9 = 0;
        while (true) {
            long j9 = jArr[i9];
            if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i10 = 8 - ((~(i9 - length)) >>> 31);
                for (int i11 = 0; i11 < i10; i11++) {
                    if ((255 & j9) < 128) {
                        block.invoke(objArr[(i9 << 3) + i11]);
                    }
                    j9 >>= 8;
                }
                if (i10 != 8) {
                    return;
                }
            }
            if (i9 == length) {
                return;
            } else {
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @PublishedApi
    public final void forEachIndex(Function1<? super Integer, Unit> block) {
        block.getClass();
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i9 = 0;
        while (true) {
            long j9 = jArr[i9];
            if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i10 = 8 - ((~(i9 - length)) >>> 31);
                for (int i11 = 0; i11 < i10; i11++) {
                    if ((255 & j9) < 128) {
                        a.z(i9 << 3, i11, block);
                    }
                    j9 >>= 8;
                }
                if (i10 != 8) {
                    return;
                }
            }
            if (i9 == length) {
                return;
            } else {
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    /* JADX INFO: renamed from: getCapacity, reason: from getter */
    public final int get_capacity() {
        return this._capacity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    /* JADX INFO: renamed from: getSize, reason: from getter */
    public final int get_size() {
        return this._size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return 0;
        }
        int i9 = 0;
        int iHashCode = 0;
        while (true) {
            long j9 = jArr[i9];
            if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i10 = 8 - ((~(i9 - length)) >>> 31);
                for (int i11 = 0; i11 < i10; i11++) {
                    if ((255 & j9) < 128) {
                        Object obj = objArr[(i9 << 3) + i11];
                        iHashCode += obj != null ? obj.hashCode() : 0;
                    }
                    j9 >>= 8;
                }
                if (i10 != 8) {
                    return iHashCode;
                }
            }
            if (i9 == length) {
                return iHashCode;
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isEmpty() {
        return this._size == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int limit, CharSequence truncated, Function1<? super E, ? extends CharSequence> transform) {
        StringBuilder sbR = a.r(separator, prefix, postfix, truncated, prefix);
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sbR.append(postfix);
            break;
        }
        int i9 = 0;
        int i10 = 0;
        loop0: while (true) {
            long j9 = jArr[i9];
            if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8;
                int i12 = 8 - ((~(i9 - length)) >>> 31);
                int i13 = 0;
                while (i13 < i12) {
                    if ((j9 & 255) < 128) {
                        Object obj = objArr[(i9 << 3) + i13];
                        if (i10 == limit) {
                            sbR.append(truncated);
                            break loop0;
                        }
                        if (i10 != 0) {
                            sbR.append(separator);
                        }
                        if (transform == null) {
                            sbR.append(obj);
                        } else {
                            sbR.append(transform.invoke(obj));
                        }
                        i10++;
                    }
                    j9 >>= i11;
                    i13++;
                    i11 = i11;
                }
                if (i12 == i11) {
                }
                sbR.append(postfix);
                break;
            }
            if (i9 == length) {
                sbR.append(postfix);
                break;
            }
            i9++;
        }
        return sbR.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean none() {
        return this._size == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, new ScatterSet$toString$1(this), 25, null);
    }

    public /* synthetic */ ScatterSet(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @PublishedApi
    public static /* synthetic */ void getElements$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getMetadata$annotations() {
    }

    public final boolean any() {
        return this._size != 0;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x003e A[LOOP:0: B:5:0x000b->B:16:0x003e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x0041 A[SYNTHETIC] */
    public final E first() {
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i9 = 0;
            while (true) {
                long j9 = jArr[i9];
                if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i10 = 8 - ((~(i9 - length)) >>> 31);
                    for (int i11 = 0; i11 < i10; i11++) {
                        if ((255 & j9) < 128) {
                            return (E) objArr[(i9 << 3) + i11];
                        }
                        j9 >>= 8;
                    }
                    if (i10 == 8) {
                        if (i9 != length) {
                            i9++;
                        }
                    }
                } else if (i9 != length) {
                    i9++;
                }
            }
        }
        i.g("The ScatterSet is empty");
        return null;
    }

    @IntRange(from = ULong.MIN_VALUE)
    public final int count() {
        return get_size();
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence) {
        charSequence.getClass();
        return joinToString$default(this, charSequence, null, null, 0, null, null, 62, null);
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2) {
        charSequence.getClass();
        charSequence2.getClass();
        return joinToString$default(this, charSequence, charSequence2, null, 0, null, null, 60, null);
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        a.B(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, 0, null, null, 56, null);
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i9) {
        a.B(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i9, null, null, 48, null);
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i9, CharSequence charSequence4) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        charSequence4.getClass();
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i9, charSequence4, null, 32, null);
    }

    @JvmOverloads
    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, null, 63, null);
    }
}
