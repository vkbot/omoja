package androidx.collection;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.C0674b;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0016\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002J&\u0010\u0014\u001a\u00020\u00152\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00150\u0017H\u0086\bø\u0001\u0000J\u0006\u0010\u0019\u001a\u00020\u0015J&\u0010\u0019\u001a\u00020\u00152\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00150\u0017H\u0086\bø\u0001\u0000J\u0011\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0018H\u0086\u0002J\u000e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0018J\u0006\u0010\u001f\u001a\u00020\u0004J&\u0010\u001f\u001a\u00020\u00042\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00150\u0017H\u0086\bø\u0001\u0000J\u0013\u0010 \u001a\u00020\u00152\b\u0010!\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0010\u0010\"\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0018H\u0001JD\u0010#\u001a\u00020$26\u0010%\u001a2\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001b\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020$0\u0017H\u0086\bø\u0001\u0000J/\u0010(\u001a\u00020$2!\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(*\u0012\u0004\u0012\u00020$0)H\u0081\bø\u0001\u0000J/\u0010+\u001a\u00020$2!\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020$0)H\u0086\bø\u0001\u0000J/\u0010,\u001a\u00020$2!\u0010%\u001a\u001d\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020$0)H\u0086\bø\u0001\u0000J\u0011\u0010-\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u0018H\u0086\u0002J\u0016\u0010.\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00182\u0006\u0010/\u001a\u00020\u0018J\"\u00100\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00182\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001801H\u0086\bø\u0001\u0000J\b\u00102\u001a\u00020\u0004H\u0016J\u0006\u00103\u001a\u00020\u0015J\u0006\u00104\u001a\u00020\u0015J:\u00105\u001a\u0002062\b\b\u0002\u00107\u001a\u0002082\b\b\u0002\u00109\u001a\u0002082\b\b\u0002\u0010:\u001a\u0002082\b\b\u0002\u0010;\u001a\u00020\u00042\b\b\u0002\u0010<\u001a\u000208H\u0007Jx\u00105\u001a\u0002062\b\b\u0002\u00107\u001a\u0002082\b\b\u0002\u00109\u001a\u0002082\b\b\u0002\u0010:\u001a\u0002082\b\b\u0002\u0010;\u001a\u00020\u00042\b\b\u0002\u0010<\u001a\u00020828\b\u0004\u0010=\u001a2\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001b\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u0002080\u0017H\u0087\bø\u0001\u0000J\u0006\u0010>\u001a\u00020\u0015J\b\u0010?\u001a\u000206H\u0016R\u0018\u0010\u0003\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002R\u0018\u0010\u0006\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0002R\u0011\u0010\b\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0018\u0010\u000b\u001a\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\r\u0010\u0002R\u0018\u0010\u000e\u001a\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u000f\u0010\u0002R\u0011\u0010\u0010\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\nR\u0018\u0010\u0012\u001a\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0000\u0012\u0004\b\u0013\u0010\u0002\u0082\u0001\u0001@\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006A"}, m3159d2 = {"Landroidx/collection/LongLongMap;", "", "()V", "_capacity", "", "get_capacity$collection$annotations", "_size", "get_size$collection$annotations", "capacity", "getCapacity", "()I", "keys", "", "getKeys$annotations", "metadata", "getMetadata$annotations", "size", "getSize", "values", "getValues$annotations", "all", "", "predicate", "Lkotlin/Function2;", "", "any", "contains", "key", "containsKey", "containsValue", "value", "count", "equals", "other", "findKeyIndex", "forEach", "", "block", "Lkotlin/ParameterName;", "name", "forEachIndexed", "Lkotlin/Function1;", "index", "forEachKey", "forEachValue", "get", "getOrDefault", "defaultValue", "getOrElse", "Lkotlin/Function0;", "hashCode", "isEmpty", "isNotEmpty", "joinToString", "", "separator", "", "prefix", "postfix", "limit", "truncated", "transform", "none", "toString", "Landroidx/collection/MutableLongLongMap;", "collection"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nLongLongMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongLongMap.kt\nandroidx/collection/LongLongMap\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 3 LongSet.kt\nandroidx/collection/LongSetKt\n*L\n1#1,1047:1\n357#1,6:1050\n367#1,3:1057\n370#1,9:1061\n357#1,6:1070\n367#1,3:1077\n370#1,9:1081\n357#1,6:1090\n367#1,3:1097\n370#1,9:1101\n385#1,4:1110\n357#1,6:1114\n367#1,3:1121\n370#1,2:1125\n389#1,2:1127\n373#1,6:1129\n391#1:1135\n385#1,4:1136\n357#1,6:1140\n367#1,3:1147\n370#1,2:1151\n389#1,2:1153\n373#1,6:1155\n391#1:1161\n385#1,4:1162\n357#1,6:1166\n367#1,3:1173\n370#1,2:1177\n389#1,2:1179\n373#1,6:1181\n391#1:1187\n410#1,3:1188\n357#1,6:1191\n367#1,3:1198\n370#1,2:1202\n413#1,2:1204\n373#1,6:1206\n415#1:1212\n385#1,4:1213\n357#1,6:1217\n367#1,3:1224\n370#1,2:1228\n389#1,2:1230\n373#1,6:1232\n391#1:1238\n385#1,4:1239\n357#1,6:1243\n367#1,3:1250\n370#1,2:1254\n389#1,2:1256\n373#1,6:1258\n391#1:1264\n385#1,4:1265\n357#1,6:1269\n367#1,3:1276\n370#1,2:1280\n389#1,2:1282\n373#1,6:1284\n391#1:1290\n385#1,4:1291\n357#1,6:1295\n367#1,3:1302\n370#1,2:1306\n389#1,2:1308\n373#1,6:1310\n391#1:1316\n385#1,4:1317\n357#1,6:1321\n367#1,3:1328\n370#1,2:1332\n389#1,2:1334\n373#1,6:1336\n391#1:1342\n385#1,4:1343\n357#1,6:1347\n367#1,3:1354\n370#1,2:1358\n389#1,2:1360\n373#1,6:1362\n391#1:1368\n519#1,11:1385\n385#1,4:1396\n357#1,6:1400\n367#1,3:1407\n370#1,2:1411\n389#1:1413\n530#1,10:1414\n390#1:1424\n373#1,6:1425\n391#1:1431\n540#1,2:1432\n519#1,11:1434\n385#1,4:1445\n357#1,6:1449\n367#1,3:1456\n370#1,2:1460\n389#1:1462\n530#1,10:1463\n390#1:1473\n373#1,6:1474\n391#1:1480\n540#1,2:1481\n519#1,11:1483\n385#1,4:1494\n357#1,6:1498\n367#1,3:1505\n370#1,2:1509\n389#1:1511\n530#1,10:1512\n390#1:1522\n373#1,6:1523\n391#1:1529\n540#1,2:1530\n519#1,11:1532\n385#1,4:1543\n357#1,6:1547\n367#1,3:1554\n370#1,2:1558\n389#1:1560\n530#1,10:1561\n390#1:1571\n373#1,6:1572\n391#1:1578\n540#1,2:1579\n519#1,11:1581\n385#1,4:1592\n357#1,6:1596\n367#1,3:1603\n370#1,2:1607\n389#1:1609\n530#1,10:1610\n390#1:1620\n373#1,6:1621\n391#1:1627\n540#1,2:1628\n1826#2:1048\n1688#2:1049\n1826#2:1056\n1688#2:1060\n1826#2:1076\n1688#2:1080\n1826#2:1096\n1688#2:1100\n1826#2:1120\n1688#2:1124\n1826#2:1146\n1688#2:1150\n1826#2:1172\n1688#2:1176\n1826#2:1197\n1688#2:1201\n1826#2:1223\n1688#2:1227\n1826#2:1249\n1688#2:1253\n1826#2:1275\n1688#2:1279\n1826#2:1301\n1688#2:1305\n1826#2:1327\n1688#2:1331\n1826#2:1353\n1688#2:1357\n1619#2:1372\n1615#2:1373\n1795#2,3:1374\n1809#2,3:1377\n1733#2:1380\n1721#2:1381\n1715#2:1382\n1728#2:1383\n1818#2:1384\n1826#2:1406\n1688#2:1410\n1826#2:1455\n1688#2:1459\n1826#2:1504\n1688#2:1508\n1826#2:1553\n1688#2:1557\n1826#2:1602\n1688#2:1606\n849#3,3:1369\n*S KotlinDebug\n*F\n+ 1 LongLongMap.kt\nandroidx/collection/LongLongMap\n*L\n388#1:1050,6\n388#1:1057,3\n388#1:1061,9\n400#1:1070,6\n400#1:1077,3\n400#1:1081,9\n412#1:1090,6\n412#1:1097,3\n412#1:1101,9\n421#1:1110,4\n421#1:1114,6\n421#1:1121,3\n421#1:1125,2\n421#1:1127,2\n421#1:1129,6\n421#1:1135\n431#1:1136,4\n431#1:1140,6\n431#1:1147,3\n431#1:1151,2\n431#1:1153,2\n431#1:1155,6\n431#1:1161\n447#1:1162,4\n447#1:1166,6\n447#1:1173,3\n447#1:1177,2\n447#1:1179,2\n447#1:1181,6\n447#1:1187\n470#1:1188,3\n470#1:1191,6\n470#1:1198,3\n470#1:1202,2\n470#1:1204,2\n470#1:1206,6\n470#1:1212\n494#1:1213,4\n494#1:1217,6\n494#1:1224,3\n494#1:1228,2\n494#1:1230,2\n494#1:1232,6\n494#1:1238\n529#1:1239,4\n529#1:1243,6\n529#1:1250,3\n529#1:1254,2\n529#1:1256,2\n529#1:1258,6\n529#1:1264\n529#1:1265,4\n529#1:1269,6\n529#1:1276,3\n529#1:1280,2\n529#1:1282,2\n529#1:1284,6\n529#1:1290\n550#1:1291,4\n550#1:1295,6\n550#1:1302,3\n550#1:1306,2\n550#1:1308,2\n550#1:1310,6\n550#1:1316\n576#1:1317,4\n576#1:1321,6\n576#1:1328,3\n576#1:1332,2\n576#1:1334,2\n576#1:1336,6\n576#1:1342\n598#1:1343,4\n598#1:1347,6\n598#1:1354,3\n598#1:1358,2\n598#1:1360,2\n598#1:1362,6\n598#1:1368\n-1#1:1385,11\n-1#1:1396,4\n-1#1:1400,6\n-1#1:1407,3\n-1#1:1411,2\n-1#1:1413\n-1#1:1414,10\n-1#1:1424\n-1#1:1425,6\n-1#1:1431\n-1#1:1432,2\n-1#1:1434,11\n-1#1:1445,4\n-1#1:1449,6\n-1#1:1456,3\n-1#1:1460,2\n-1#1:1462\n-1#1:1463,10\n-1#1:1473\n-1#1:1474,6\n-1#1:1480\n-1#1:1481,2\n-1#1:1483,11\n-1#1:1494,4\n-1#1:1498,6\n-1#1:1505,3\n-1#1:1509,2\n-1#1:1511\n-1#1:1512,10\n-1#1:1522\n-1#1:1523,6\n-1#1:1529\n-1#1:1530,2\n-1#1:1532,11\n-1#1:1543,4\n-1#1:1547,6\n-1#1:1554,3\n-1#1:1558,2\n-1#1:1560\n-1#1:1561,10\n-1#1:1571\n-1#1:1572,6\n-1#1:1578\n-1#1:1579,2\n-1#1:1581,11\n-1#1:1592,4\n-1#1:1596,6\n-1#1:1603,3\n-1#1:1607,2\n-1#1:1609\n-1#1:1610,10\n-1#1:1620\n-1#1:1621,6\n-1#1:1627\n-1#1:1628,2\n362#1:1048\n369#1:1049\n388#1:1056\n388#1:1060\n400#1:1076\n400#1:1080\n412#1:1096\n412#1:1100\n421#1:1120\n421#1:1124\n431#1:1146\n431#1:1150\n447#1:1172\n447#1:1176\n470#1:1197\n470#1:1201\n494#1:1223\n494#1:1227\n529#1:1249\n529#1:1253\n529#1:1275\n529#1:1279\n550#1:1301\n550#1:1305\n576#1:1327\n576#1:1331\n598#1:1353\n598#1:1357\n618#1:1372\n621#1:1373\n625#1:1374,3\n626#1:1377,3\n627#1:1380\n628#1:1381\n628#1:1382\n632#1:1383\n635#1:1384\n-1#1:1406\n-1#1:1410\n-1#1:1455\n-1#1:1459\n-1#1:1504\n-1#1:1508\n-1#1:1553\n-1#1:1557\n-1#1:1602\n-1#1:1606\n617#1:1369,3\n*E\n"})
public abstract class LongLongMap {

    @JvmField
    public int _capacity;

    @JvmField
    public int _size;

    @JvmField
    public long[] keys;

    @JvmField
    public long[] metadata;

    @JvmField
    public long[] values;

    private LongLongMap() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.keys = LongSetKt.getEmptyLongArray();
        this.values = LongSetKt.getEmptyLongArray();
    }

    public static /* synthetic */ String joinToString$default(LongLongMap longLongMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function2 function2, int i11, Object obj) {
        long[] jArr;
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: joinToString");
            return null;
        }
        CharSequence charSequence5 = (i11 & 1) != 0 ? ", " : charSequence;
        CharSequence charSequence6 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence7 = (i11 & 4) == 0 ? charSequence3 : "";
        int i12 = (i11 & 8) != 0 ? -1 : i10;
        CharSequence charSequence8 = (i11 & 16) != 0 ? "..." : charSequence4;
        StringBuilder sbM168s = AbstractC0074a.m168s(charSequence5, charSequence6, charSequence7, charSequence8, function2);
        sbM168s.append(charSequence6);
        long[] jArr2 = longLongMap.keys;
        long[] jArr3 = longLongMap.values;
        long[] jArr4 = longLongMap.metadata;
        int length = jArr4.length - 2;
        if (length < 0) {
            sbM168s.append(charSequence7);
            break;
        }
        int i13 = 0;
        int i14 = 0;
        loop0: while (true) {
            long j10 = jArr4[i13];
            int i15 = i13;
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i16 = 8;
                int i17 = 8 - ((~(i15 - length)) >>> 31);
                int i18 = 0;
                while (i18 < i17) {
                    if ((j10 & 255) < 128) {
                        int i19 = (i15 << 3) + i18;
                        long j11 = jArr2[i19];
                        long j12 = jArr3[i19];
                        if (i14 == i12) {
                            sbM168s.append(charSequence8);
                            break loop0;
                        }
                        if (i14 != 0) {
                            sbM168s.append(charSequence5);
                        }
                        sbM168s.append((CharSequence) function2.invoke(Long.valueOf(j11), Long.valueOf(j12)));
                        i14++;
                    }
                    j10 >>= i16;
                    i18++;
                    i16 = i16;
                    jArr4 = jArr4;
                }
                jArr = jArr4;
                if (i17 == i16) {
                }
                sbM168s.append(charSequence7);
                break;
            }
            jArr = jArr4;
            if (i15 == length) {
                sbM168s.append(charSequence7);
                break;
            }
            i13 = i15 + 1;
            jArr4 = jArr;
        }
        return sbM168s.toString();
    }

    public final boolean all(Function2<? super Long, ? super Long, Boolean> predicate) {
        predicate.getClass();
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            return true;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr3[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        int i13 = (i10 << 3) + i12;
                        if (!predicate.invoke(Long.valueOf(jArr[i13]), Long.valueOf(jArr2[i13])).booleanValue()) {
                            return false;
                        }
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return true;
                }
            }
            if (i10 == length) {
                return true;
            }
            i10++;
        }
    }

    public final boolean any(Function2<? super Long, ? super Long, Boolean> predicate) {
        predicate.getClass();
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr3[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            if (predicate.invoke(Long.valueOf(jArr[i13]), Long.valueOf(jArr2[i13])).booleanValue()) {
                                return true;
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i11 == 8) {
                    }
                }
                if (i10 != length) {
                    i10++;
                }
            }
        }
        return false;
    }

    public final boolean contains(long key) {
        return findKeyIndex(key) >= 0;
    }

    public final boolean containsKey(long key) {
        return findKeyIndex(key) >= 0;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0041 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0043 A[LOOP:0: B:5:0x000b->B:18:0x0043, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x0046 A[SYNTHETIC] */
    public final boolean containsValue(long value) {
        long[] jArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128 && value == jArr[(i10 << 3) + i12]) {
                            return true;
                        }
                        j10 >>= 8;
                    }
                    if (i11 == 8) {
                        if (i10 != length) {
                            i10++;
                        }
                    }
                } else if (i10 != length) {
                    i10++;
                }
            }
        }
        return false;
    }

    public final int count(Function2<? super Long, ? super Long, Boolean> predicate) {
        predicate.getClass();
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            return 0;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            long j10 = jArr3[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - ((~(i10 - length)) >>> 31);
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j10) < 128) {
                        int i14 = (i10 << 3) + i13;
                        if (predicate.invoke(Long.valueOf(jArr[i14]), Long.valueOf(jArr2[i14])).booleanValue()) {
                            i11++;
                        }
                    }
                    j10 >>= 8;
                }
                if (i12 != 8) {
                    return i11;
                }
            }
            if (i10 == length) {
                return i11;
            }
            i10++;
        }
    }

    public boolean equals(Object other) {
        boolean z9;
        long[] jArr;
        long[] jArr2;
        boolean z10 = true;
        if (other == this) {
            return true;
        }
        if (!(other instanceof LongLongMap)) {
            return false;
        }
        LongLongMap longLongMap = (LongLongMap) other;
        if (longLongMap.get_size() != get_size()) {
            return false;
        }
        long[] jArr3 = this.keys;
        long[] jArr4 = this.values;
        long[] jArr5 = this.metadata;
        int length = jArr5.length - 2;
        if (length < 0) {
            return true;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr5[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                int i12 = 0;
                while (i12 < i11) {
                    if ((255 & j10) < 128) {
                        int i13 = (i10 << 3) + i12;
                        jArr2 = jArr3;
                        if (jArr4[i13] != longLongMap.get(jArr2[i13])) {
                            return false;
                        }
                    } else {
                        jArr2 = jArr3;
                    }
                    j10 >>= 8;
                    i12++;
                    z10 = z10;
                    jArr3 = jArr2;
                }
                z9 = z10;
                jArr = jArr3;
                if (i11 != 8) {
                    return z9;
                }
            } else {
                z9 = z10;
                jArr = jArr3;
            }
            if (i10 == length) {
                return z9;
            }
            i10++;
            z10 = z9;
            jArr3 = jArr;
        }
    }

    @PublishedApi
    public final int findKeyIndex(long key) {
        int iHashCode = Long.hashCode(key) * ScatterMapKt.MurmurHashC1;
        int i10 = iHashCode ^ (iHashCode << 16);
        int i11 = i10 & 127;
        int i12 = this._capacity;
        int i13 = (i10 >>> 7) & i12;
        int i14 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i15 = i13 >> 3;
            int i16 = (i13 & 7) << 3;
            long j10 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j11 = (((long) i11) * ScatterMapKt.BitmaskLsb) ^ j10;
            for (long j12 = (~j11) & (j11 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i13) & i12;
                if (this.keys[iNumberOfTrailingZeros] == key) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j10 & ((~j10) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i14 += 8;
            i13 = (i13 + i14) & i12;
        }
    }

    public final void forEach(Function2<? super Long, ? super Long, Unit> block) {
        block.getClass();
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr3[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        int i13 = (i10 << 3) + i12;
                        block.invoke(Long.valueOf(jArr[i13]), Long.valueOf(jArr2[i13]));
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    @PublishedApi
    public final void forEachIndexed(Function1<? super Integer, Unit> block) {
        block.getClass();
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        AbstractC0074a.m175z(i10 << 3, i12, block);
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    public final void forEachKey(Function1<? super Long, Unit> block) {
        block.getClass();
        long[] jArr = this.keys;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr2[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        block.invoke(Long.valueOf(jArr[(i10 << 3) + i12]));
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    public final void forEachValue(Function1<? super Long, Unit> block) {
        block.getClass();
        long[] jArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr2[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        block.invoke(Long.valueOf(jArr[(i10 << 3) + i12]));
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    public final long get(long key) {
        int iFindKeyIndex = findKeyIndex(key);
        if (iFindKeyIndex >= 0) {
            return this.values[iFindKeyIndex];
        }
        C1929i.m3025g(AbstractC0074a.m157h(key, "Cannot find value for key "));
        return 0L;
    }

    /* JADX INFO: renamed from: getCapacity, reason: from getter */
    public final int get_capacity() {
        return this._capacity;
    }

    public final long getOrDefault(long key, long defaultValue) {
        int iFindKeyIndex = findKeyIndex(key);
        return iFindKeyIndex >= 0 ? this.values[iFindKeyIndex] : defaultValue;
    }

    public final long getOrElse(long key, Function0<Long> defaultValue) {
        defaultValue.getClass();
        int iFindKeyIndex = findKeyIndex(key);
        return iFindKeyIndex < 0 ? defaultValue.invoke().longValue() : this.values[iFindKeyIndex];
    }

    /* JADX INFO: renamed from: getSize, reason: from getter */
    public final int get_size() {
        return this._size;
    }

    public int hashCode() {
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            return 0;
        }
        int i10 = 0;
        int iHashCode = 0;
        while (true) {
            long j10 = jArr3[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        int i13 = (i10 << 3) + i12;
                        iHashCode += Long.hashCode(jArr[i13]) ^ Long.hashCode(jArr2[i13]);
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return iHashCode;
                }
            }
            if (i10 == length) {
                return iHashCode;
            }
            i10++;
        }
    }

    public final boolean isEmpty() {
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    @JvmOverloads
    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int limit, CharSequence truncated) {
        long[] jArr;
        long[] jArr2;
        long[] jArr3;
        StringBuilder sbM167r = AbstractC0074a.m167r(separator, prefix, postfix, truncated, prefix);
        long[] jArr4 = this.keys;
        long[] jArr5 = this.values;
        long[] jArr6 = this.metadata;
        int length = jArr6.length - 2;
        if (length < 0) {
            sbM167r.append(postfix);
            break;
        }
        int i10 = 0;
        int i11 = 0;
        loop0: while (true) {
            long j10 = jArr6[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8;
                int i13 = 8 - ((~(i10 - length)) >>> 31);
                int i14 = 0;
                while (i14 < i13) {
                    if ((j10 & 255) < 128) {
                        int i15 = (i10 << 3) + i14;
                        jArr3 = jArr5;
                        long j11 = jArr4[i15];
                        long j12 = jArr3[i15];
                        if (i11 == limit) {
                            sbM167r.append(truncated);
                            break loop0;
                        }
                        if (i11 != 0) {
                            sbM167r.append(separator);
                        }
                        sbM167r.append(j11);
                        sbM167r.append('=');
                        sbM167r.append(j12);
                        i11++;
                    } else {
                        jArr3 = jArr5;
                    }
                    j10 >>= i12;
                    i14++;
                    i12 = i12;
                    jArr5 = jArr3;
                    jArr6 = jArr6;
                }
                jArr = jArr5;
                jArr2 = jArr6;
                if (i13 == i12) {
                }
                sbM167r.append(postfix);
                break;
            }
            jArr = jArr5;
            jArr2 = jArr6;
            if (i10 == length) {
                sbM167r.append(postfix);
                break;
            }
            i10++;
            jArr5 = jArr;
            jArr6 = jArr2;
        }
        return sbM167r.toString();
    }

    public final boolean none() {
        return this._size == 0;
    }

    public String toString() {
        int i10;
        int i11;
        int i12;
        int i13;
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder("{");
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i14 = 0;
            int i15 = 0;
            while (true) {
                long j10 = jArr3[i14];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i16 = 8;
                    int i17 = 8 - ((~(i14 - length)) >>> 31);
                    int i18 = 0;
                    while (i18 < i17) {
                        if ((255 & j10) < 128) {
                            int i19 = (i14 << 3) + i18;
                            i11 = i14;
                            long j11 = jArr[i19];
                            i12 = i16;
                            i13 = i18;
                            long j12 = jArr2[i19];
                            sb.append(j11);
                            sb.append("=");
                            sb.append(j12);
                            i15++;
                            if (i15 < this._size) {
                                sb.append(", ");
                            }
                        } else {
                            i11 = i14;
                            i12 = i16;
                            i13 = i18;
                        }
                        j10 >>= i12;
                        i18 = i13 + 1;
                        i14 = i11;
                        i16 = i12;
                    }
                    int i20 = i14;
                    if (i17 != i16) {
                        break;
                    }
                    i10 = i20;
                } else {
                    i10 = i14;
                }
                if (i10 == length) {
                    break;
                }
                i14 = i10 + 1;
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public /* synthetic */ LongLongMap(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @PublishedApi
    public static /* synthetic */ void getKeys$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getMetadata$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getValues$annotations() {
    }

    public static /* synthetic */ void get_capacity$collection$annotations() {
    }

    public static /* synthetic */ void get_size$collection$annotations() {
    }

    public final boolean any() {
        return this._size != 0;
    }

    public final int count() {
        return get_size();
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence) {
        charSequence.getClass();
        return joinToString$default(this, charSequence, null, null, 0, null, 30, null);
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2) {
        charSequence.getClass();
        charSequence2.getClass();
        return joinToString$default(this, charSequence, charSequence2, null, 0, null, 28, null);
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        AbstractC0074a.m147B(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, 0, null, 24, null);
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10) {
        AbstractC0074a.m147B(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i10, null, 16, null);
    }

    @JvmOverloads
    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, 31, null);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0081 A[DONT_INVERT, PHI: r12
  0x0081: PHI (r12v2 int) = (r12v1 int), (r12v3 int) binds: [B:6:0x0032, B:19:0x007f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:21:0x0083 A[LOOP:0: B:5:0x0020->B:21:0x0083, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:27:0x008a A[SYNTHETIC] */
    @JvmOverloads
    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int limit, CharSequence truncated, Function2<? super Long, ? super Long, ? extends CharSequence> transform) {
        CharSequence charSequence = separator;
        StringBuilder sbM168s = AbstractC0074a.m168s(charSequence, prefix, postfix, truncated, transform);
        sbM168s.append(prefix);
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            sbM168s.append(postfix);
            break;
        }
        int i10 = 0;
        int i11 = 0;
        loop0: while (true) {
            long j10 = jArr3[i10];
            int i12 = i10;
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                if (i12 == length) {
                    sbM168s.append(postfix);
                    break;
                }
                i10 = i12 + 1;
                charSequence = separator;
            } else {
                int i13 = 8 - ((~(i12 - length)) >>> 31);
                int i14 = 0;
                while (i14 < i13) {
                    if ((j10 & 255) < 128) {
                        int i15 = (i12 << 3) + i14;
                        long j11 = jArr[i15];
                        long j12 = jArr2[i15];
                        if (i11 == limit) {
                            sbM168s.append(truncated);
                            break loop0;
                        }
                        if (i11 != 0) {
                            sbM168s.append(charSequence);
                        }
                        sbM168s.append(transform.invoke(Long.valueOf(j11), Long.valueOf(j12)));
                        i11++;
                    }
                    j10 >>= 8;
                    i14++;
                    charSequence = separator;
                }
                if (i13 == 8) {
                    if (i12 == length) {
                        i10 = i12 + 1;
                        charSequence = separator;
                    }
                }
                sbM168s.append(postfix);
                break;
            }
        }
        return sbM168s.toString();
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, Function2<? super Long, ? super Long, ? extends CharSequence> function2) {
        CharSequence charSequence4 = charSequence;
        StringBuilder sbM169t = AbstractC0074a.m169t(charSequence4, charSequence2, charSequence3, function2, charSequence2);
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            sbM169t.append(charSequence3);
            break;
        }
        int i11 = 0;
        int i12 = 0;
        loop0: while (true) {
            long j10 = jArr3[i11];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i13 = 8;
                int i14 = 8 - ((~(i11 - length)) >>> 31);
                int i15 = 0;
                while (i15 < i14) {
                    if ((j10 & 255) < 128) {
                        int i16 = (i11 << 3) + i15;
                        long j11 = jArr[i16];
                        long j12 = jArr2[i16];
                        if (i12 == i10) {
                            sbM169t.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i12 != 0) {
                            sbM169t.append(charSequence4);
                        }
                        sbM169t.append(function2.invoke(Long.valueOf(j11), Long.valueOf(j12)));
                        i12++;
                    }
                    j10 >>= i13;
                    i15++;
                    charSequence4 = charSequence;
                    i13 = i13;
                }
                if (i14 == i13) {
                }
                sbM169t.append(charSequence3);
                break;
            }
            if (i11 == length) {
                sbM169t.append(charSequence3);
                break;
            }
            i11++;
            charSequence4 = charSequence;
        }
        return sbM169t.toString();
    }

    public static /* synthetic */ String joinToString$default(LongLongMap longLongMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, int i11, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: joinToString");
            return null;
        }
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i11 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i11 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence5 = charSequence4;
        CharSequence charSequence6 = charSequence3;
        return longLongMap.joinToString(charSequence, charSequence2, charSequence6, i10, charSequence5);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007e A[DONT_INVERT, PHI: r11
  0x007e: PHI (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:6:0x002c, B:20:0x007c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:22:0x0080 A[LOOP:0: B:5:0x001b->B:22:0x0080, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x0085 A[SYNTHETIC] */
    @JvmOverloads
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Function2<? super Long, ? super Long, ? extends CharSequence> function2) {
        StringBuilder sbM169t = AbstractC0074a.m169t(charSequence, charSequence2, charSequence3, function2, charSequence2);
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            sbM169t.append(charSequence3);
            break;
        }
        int i10 = 0;
        int i11 = 0;
        loop0: while (true) {
            long j10 = jArr3[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                if (i10 == length) {
                    sbM169t.append(charSequence3);
                    break;
                }
                i10++;
            } else {
                int i12 = 8;
                int i13 = 8 - ((~(i10 - length)) >>> 31);
                int i14 = 0;
                while (i14 < i13) {
                    if ((j10 & 255) < 128) {
                        int i15 = (i10 << 3) + i14;
                        long j11 = jArr[i15];
                        long j12 = jArr2[i15];
                        if (i11 == -1) {
                            sbM169t.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i11 != 0) {
                            sbM169t.append(charSequence);
                        }
                        sbM169t.append(function2.invoke(Long.valueOf(j11), Long.valueOf(j12)));
                        i11++;
                    }
                    j10 >>= i12;
                    i14++;
                    i12 = i12;
                }
                if (i13 == i12) {
                    if (i10 == length) {
                        i10++;
                    }
                }
                sbM169t.append(charSequence3);
                break;
            }
        }
        return sbM169t.toString();
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, Function2<? super Long, ? super Long, ? extends CharSequence> function2) {
        charSequence.getClass();
        charSequence2.getClass();
        function2.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            sb.append((CharSequence) "");
            break;
        }
        int i10 = 0;
        int i11 = 0;
        loop0: while (true) {
            long j10 = jArr3[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8;
                int i13 = 8 - ((~(i10 - length)) >>> 31);
                int i14 = 0;
                while (i14 < i13) {
                    if ((255 & j10) < 128) {
                        int i15 = (i10 << 3) + i14;
                        long j11 = jArr[i15];
                        long j12 = jArr2[i15];
                        if (i11 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i11 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append(function2.invoke(Long.valueOf(j11), Long.valueOf(j12)));
                        i11++;
                    }
                    j10 >>= i12;
                    i14++;
                    i12 = i12;
                }
                if (i13 == i12) {
                }
                sb.append((CharSequence) "");
                break;
            }
            if (i10 == length) {
                sb.append((CharSequence) "");
                break;
            }
            i10++;
        }
        return sb.toString();
    }

    @JvmOverloads
    public final String joinToString(CharSequence charSequence, Function2<? super Long, ? super Long, ? extends CharSequence> function2) {
        charSequence.getClass();
        function2.getClass();
        StringBuilder sb = new StringBuilder("");
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            sb.append((CharSequence) "");
            break;
        }
        int i10 = 0;
        int i11 = 0;
        loop0: while (true) {
            long j10 = jArr3[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8;
                int i13 = 8 - ((~(i10 - length)) >>> 31);
                int i14 = 0;
                while (i14 < i13) {
                    if ((255 & j10) < 128) {
                        int i15 = (i10 << 3) + i14;
                        long j11 = jArr[i15];
                        long j12 = jArr2[i15];
                        if (i11 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i11 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append(function2.invoke(Long.valueOf(j11), Long.valueOf(j12)));
                        i11++;
                    }
                    j10 >>= i12;
                    i14++;
                    i12 = i12;
                }
                if (i13 == i12) {
                }
                sb.append((CharSequence) "");
                break;
            }
            if (i10 == length) {
                sb.append((CharSequence) "");
                break;
            }
            i10++;
        }
        return sb.toString();
    }

    @JvmOverloads
    public final String joinToString(Function2<? super Long, ? super Long, ? extends CharSequence> function2) {
        function2.getClass();
        StringBuilder sb = new StringBuilder("");
        long[] jArr = this.keys;
        long[] jArr2 = this.values;
        long[] jArr3 = this.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            sb.append((CharSequence) "");
            break;
        }
        int i10 = 0;
        int i11 = 0;
        loop0: while (true) {
            long j10 = jArr3[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8;
                int i13 = 8 - ((~(i10 - length)) >>> 31);
                int i14 = 0;
                while (i14 < i13) {
                    if ((255 & j10) < 128) {
                        int i15 = (i10 << 3) + i14;
                        long j11 = jArr[i15];
                        long j12 = jArr2[i15];
                        if (i11 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i11 != 0) {
                            sb.append((CharSequence) ", ");
                        }
                        sb.append(function2.invoke(Long.valueOf(j11), Long.valueOf(j12)));
                        i11++;
                    }
                    j10 >>= i12;
                    i14++;
                    i12 = i12;
                }
                if (i13 == i12) {
                }
                sb.append((CharSequence) "");
                break;
            }
            if (i10 == length) {
                sb.append((CharSequence) "");
                break;
            }
            i10++;
        }
        return sb.toString();
    }
}
