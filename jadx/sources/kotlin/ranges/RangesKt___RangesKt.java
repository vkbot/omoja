package kotlin.ranges;

import ai.onnxruntime.C0075b;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.random.RandomKt;
import org.apache.commons.p161io.FilenameUtils;
import p099j1.C1929i;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000r\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000f\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\f\u0010\u0000\u001a\u00020\u0003*\u00020\u0004H\u0007\u001a\f\u0010\u0000\u001a\u00020\u0005*\u00020\u0006H\u0007\u001a\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007¢\u0006\u0002\u0010\b\u001a\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003*\u00020\u0004H\u0007¢\u0006\u0002\u0010\t\u001a\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u0006H\u0007¢\u0006\u0002\u0010\n\u001a\f\u0010\u000b\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\f\u0010\u000b\u001a\u00020\u0003*\u00020\u0004H\u0007\u001a\f\u0010\u000b\u001a\u00020\u0005*\u00020\u0006H\u0007\u001a\u0013\u0010\f\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007¢\u0006\u0002\u0010\b\u001a\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003*\u00020\u0004H\u0007¢\u0006\u0002\u0010\t\u001a\u0013\u0010\f\u001a\u0004\u0018\u00010\u0005*\u00020\u0006H\u0007¢\u0006\u0002\u0010\n\u001a\r\u0010\r\u001a\u00020\u0001*\u00020\u000eH\u0087\b\u001a\r\u0010\r\u001a\u00020\u0003*\u00020\u000fH\u0087\b\u001a\r\u0010\r\u001a\u00020\u0005*\u00020\u0010H\u0087\b\u001a\u0014\u0010\r\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0011H\u0007\u001a\u0014\u0010\r\u001a\u00020\u0003*\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0011H\u0007\u001a\u0014\u0010\r\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\r\u001a\u00020\u0011H\u0007\u001a\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u000eH\u0087\b¢\u0006\u0002\u0010\u0013\u001a\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u0003*\u00020\u000fH\u0087\b¢\u0006\u0002\u0010\u0014\u001a\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u0005*\u00020\u0010H\u0087\b¢\u0006\u0002\u0010\u0015\u001a\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0011H\u0007¢\u0006\u0002\u0010\u0016\u001a\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u0003*\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0011H\u0007¢\u0006\u0002\u0010\u0017\u001a\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u0005*\u00020\u00102\u0006\u0010\r\u001a\u00020\u0011H\u0007¢\u0006\u0002\u0010\u0018\u001a\u001c\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0087\n¢\u0006\u0002\u0010\u001c\u001a\u001c\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0087\n¢\u0006\u0002\u0010\u001d\u001a\u001c\u0010\u0019\u001a\u00020\u001a*\u00020\u00102\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u0087\n¢\u0006\u0002\u0010\u001e\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b%\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b)\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030*2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010 \u001a\u00020!H\u0087\u0002¢\u0006\u0002\b%\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\u0006\u0010 \u001a\u00020!H\u0087\n\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\u0006\u0010 \u001a\u00020!H\u0087\n\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0002¢\u0006\u0002\b%\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020&H\u0087\u0002¢\u0006\u0002\b)\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b%\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0*2\u0006\u0010 \u001a\u00020(H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b%\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b)\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030*2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0*2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010 \u001a\u00020\u0001H\u0087\u0002¢\u0006\u0002\b%\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\u0006\u0010 \u001a\u00020\u0001H\u0087\n\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b%\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b)\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0*2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020$0*2\u0006\u0010 \u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b%\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\u0006\u0010 \u001a\u00020\u0003H\u0087\n\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b+\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020&0\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b'\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020(0\u001f2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b)\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00010*2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b\"\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u00030*2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b#\u001a \u0010\u0019\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020!0*2\u0006\u0010 \u001a\u00020$H\u0087\u0002¢\u0006\u0002\b+\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000e2\u0006\u0010 \u001a\u00020$H\u0087\n\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u000f2\u0006\u0010 \u001a\u00020$H\u0087\n\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020\u00012\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020!2\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020$2\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0006*\u00020\u00052\u0006\u0010-\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020\u00012\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020!2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020$2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020\u00012\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020!2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020$2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020\u00012\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0004*\u00020\u00032\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020!2\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010,\u001a\u00020\u0002*\u00020$2\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\n\u0010.\u001a\u00020\u0002*\u00020\u0002\u001a\n\u0010.\u001a\u00020\u0004*\u00020\u0004\u001a\n\u0010.\u001a\u00020\u0006*\u00020\u0006\u001a\u0015\u0010/\u001a\u00020\u0002*\u00020\u00022\u0006\u0010/\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010/\u001a\u00020\u0004*\u00020\u00042\u0006\u0010/\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010/\u001a\u00020\u0006*\u00020\u00062\u0006\u0010/\u001a\u00020\u0001H\u0086\u0004\u001a\u0013\u00100\u001a\u0004\u0018\u00010!*\u00020\u0001H\u0000¢\u0006\u0002\u00101\u001a\u0013\u00100\u001a\u0004\u0018\u00010!*\u00020\u0003H\u0000¢\u0006\u0002\u00102\u001a\u0013\u00100\u001a\u0004\u0018\u00010!*\u00020$H\u0000¢\u0006\u0002\u00103\u001a\u0013\u00100\u001a\u0004\u0018\u00010!*\u00020&H\u0000¢\u0006\u0002\u00104\u001a\u0013\u00100\u001a\u0004\u0018\u00010!*\u00020(H\u0000¢\u0006\u0002\u00105\u001a\u0013\u00106\u001a\u0004\u0018\u00010\u0001*\u00020\u0003H\u0000¢\u0006\u0002\u00107\u001a\u0013\u00106\u001a\u0004\u0018\u00010\u0001*\u00020&H\u0000¢\u0006\u0002\u00108\u001a\u0013\u00106\u001a\u0004\u0018\u00010\u0001*\u00020(H\u0000¢\u0006\u0002\u00109\u001a\u0013\u0010:\u001a\u0004\u0018\u00010\u0003*\u00020&H\u0000¢\u0006\u0002\u0010;\u001a\u0013\u0010:\u001a\u0004\u0018\u00010\u0003*\u00020(H\u0000¢\u0006\u0002\u0010<\u001a\u0013\u0010=\u001a\u0004\u0018\u00010$*\u00020\u0001H\u0000¢\u0006\u0002\u0010>\u001a\u0013\u0010=\u001a\u0004\u0018\u00010$*\u00020\u0003H\u0000¢\u0006\u0002\u0010?\u001a\u0013\u0010=\u001a\u0004\u0018\u00010$*\u00020&H\u0000¢\u0006\u0002\u0010@\u001a\u0013\u0010=\u001a\u0004\u0018\u00010$*\u00020(H\u0000¢\u0006\u0002\u0010A\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020\u00012\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020!2\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020$2\u0006\u0010-\u001a\u00020!H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u0010*\u00020\u00052\u0006\u0010-\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020\u00012\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020!2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020$2\u0006\u0010-\u001a\u00020\u0001H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020\u00012\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020!2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020$2\u0006\u0010-\u001a\u00020\u0003H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020\u00012\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000f*\u00020\u00032\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020!2\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a\u0015\u0010B\u001a\u00020\u000e*\u00020$2\u0006\u0010-\u001a\u00020$H\u0086\u0004\u001a'\u0010C\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\u0006\u0010F\u001a\u0002HD¢\u0006\u0002\u0010G\u001a\u0012\u0010C\u001a\u00020!*\u00020!2\u0006\u0010F\u001a\u00020!\u001a\u0012\u0010C\u001a\u00020$*\u00020$2\u0006\u0010F\u001a\u00020$\u001a\u0012\u0010C\u001a\u00020\u0001*\u00020\u00012\u0006\u0010F\u001a\u00020\u0001\u001a\u0012\u0010C\u001a\u00020\u0003*\u00020\u00032\u0006\u0010F\u001a\u00020\u0003\u001a\u0012\u0010C\u001a\u00020(*\u00020(2\u0006\u0010F\u001a\u00020(\u001a\u0012\u0010C\u001a\u00020&*\u00020&2\u0006\u0010F\u001a\u00020&\u001a'\u0010H\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\u0006\u0010I\u001a\u0002HD¢\u0006\u0002\u0010G\u001a\u0012\u0010H\u001a\u00020!*\u00020!2\u0006\u0010I\u001a\u00020!\u001a\u0012\u0010H\u001a\u00020$*\u00020$2\u0006\u0010I\u001a\u00020$\u001a\u0012\u0010H\u001a\u00020\u0001*\u00020\u00012\u0006\u0010I\u001a\u00020\u0001\u001a\u0012\u0010H\u001a\u00020\u0003*\u00020\u00032\u0006\u0010I\u001a\u00020\u0003\u001a\u0012\u0010H\u001a\u00020(*\u00020(2\u0006\u0010I\u001a\u00020(\u001a\u0012\u0010H\u001a\u00020&*\u00020&2\u0006\u0010I\u001a\u00020&\u001a3\u0010J\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\b\u0010F\u001a\u0004\u0018\u0001HD2\b\u0010I\u001a\u0004\u0018\u0001HD¢\u0006\u0002\u0010K\u001a\u001a\u0010J\u001a\u00020!*\u00020!2\u0006\u0010F\u001a\u00020!2\u0006\u0010I\u001a\u00020!\u001a\u001a\u0010J\u001a\u00020$*\u00020$2\u0006\u0010F\u001a\u00020$2\u0006\u0010I\u001a\u00020$\u001a\u001a\u0010J\u001a\u00020\u0001*\u00020\u00012\u0006\u0010F\u001a\u00020\u00012\u0006\u0010I\u001a\u00020\u0001\u001a\u001a\u0010J\u001a\u00020\u0003*\u00020\u00032\u0006\u0010F\u001a\u00020\u00032\u0006\u0010I\u001a\u00020\u0003\u001a\u001a\u0010J\u001a\u00020(*\u00020(2\u0006\u0010F\u001a\u00020(2\u0006\u0010I\u001a\u00020(\u001a\u001a\u0010J\u001a\u00020&*\u00020&2\u0006\u0010F\u001a\u00020&2\u0006\u0010I\u001a\u00020&\u001a/\u0010J\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\f\u0010L\u001a\b\u0012\u0004\u0012\u0002HD0MH\u0007¢\u0006\u0002\u0010N\u001a-\u0010J\u001a\u0002HD\"\u000e\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E*\u0002HD2\f\u0010L\u001a\b\u0012\u0004\u0012\u0002HD0\u001f¢\u0006\u0002\u0010O\u001a\u0018\u0010J\u001a\u00020\u0001*\u00020\u00012\f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00010\u001f\u001a\u0018\u0010J\u001a\u00020\u0003*\u00020\u00032\f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00030\u001f¨\u0006P"}, m3159d2 = {"first", "", "Lkotlin/ranges/IntProgression;", "", "Lkotlin/ranges/LongProgression;", "", "Lkotlin/ranges/CharProgression;", "firstOrNull", "(Lkotlin/ranges/IntProgression;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongProgression;)Ljava/lang/Long;", "(Lkotlin/ranges/CharProgression;)Ljava/lang/Character;", "last", "lastOrNull", "random", "Lkotlin/ranges/IntRange;", "Lkotlin/ranges/LongRange;", "Lkotlin/ranges/CharRange;", "Lkotlin/random/Random;", "randomOrNull", "(Lkotlin/ranges/IntRange;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongRange;)Ljava/lang/Long;", "(Lkotlin/ranges/CharRange;)Ljava/lang/Character;", "(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)Ljava/lang/Long;", "(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)Ljava/lang/Character;", "contains", "", "element", "(Lkotlin/ranges/IntRange;Ljava/lang/Integer;)Z", "(Lkotlin/ranges/LongRange;Ljava/lang/Long;)Z", "(Lkotlin/ranges/CharRange;Ljava/lang/Character;)Z", "Lkotlin/ranges/ClosedRange;", "value", "", "intRangeContains", "longRangeContains", "", "shortRangeContains", "", "doubleRangeContains", "", "floatRangeContains", "Lkotlin/ranges/OpenEndRange;", "byteRangeContains", "downTo", TypedValues.TransitionType.S_TO, "reversed", "step", "toByteExactOrNull", "(I)Ljava/lang/Byte;", "(J)Ljava/lang/Byte;", "(S)Ljava/lang/Byte;", "(D)Ljava/lang/Byte;", "(F)Ljava/lang/Byte;", "toIntExactOrNull", "(J)Ljava/lang/Integer;", "(D)Ljava/lang/Integer;", "(F)Ljava/lang/Integer;", "toLongExactOrNull", "(D)Ljava/lang/Long;", "(F)Ljava/lang/Long;", "toShortExactOrNull", "(I)Ljava/lang/Short;", "(J)Ljava/lang/Short;", "(D)Ljava/lang/Short;", "(F)Ljava/lang/Short;", "until", "coerceAtLeast", ExifInterface.GPS_DIRECTION_TRUE, "", "minimumValue", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "coerceAtMost", "maximumValue", "coerceIn", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "range", "Lkotlin/ranges/ClosedFloatingPointRange;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedRange;)Ljava/lang/Comparable;", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/ranges/RangesKt")
@SourceDebugExtension({"SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1572:1\n1#2:1573\n*E\n"})
public class RangesKt___RangesKt extends RangesKt__RangesKt {
    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange closedRange, double d) {
        closedRange.getClass();
        Byte byteExactOrNull = toByteExactOrNull(d);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static final <T extends Comparable<? super T>> T coerceAtLeast(T t, T t3) {
        t.getClass();
        t3.getClass();
        return t.compareTo(t3) < 0 ? t3 : t;
    }

    public static final <T extends Comparable<? super T>> T coerceAtMost(T t, T t3) {
        t.getClass();
        t3.getClass();
        return t.compareTo(t3) > 0 ? t3 : t;
    }

    public static long coerceIn(long j10, ClosedRange<Long> closedRange) {
        closedRange.getClass();
        if (closedRange instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Long.valueOf(j10), (ClosedFloatingPointRange<Long>) closedRange)).longValue();
        }
        if (closedRange.isEmpty()) {
            C1929i.m3024f(closedRange, "Cannot coerce value to an empty range: ");
            return 0L;
        }
        if (j10 < ((Number) closedRange.getStart()).longValue()) {
            return ((Number) closedRange.getStart()).longValue();
        }
        return j10 > ((Number) closedRange.getEndInclusive()).longValue() ? ((Number) closedRange.getEndInclusive()).longValue() : j10;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(IntRange intRange, Integer num) {
        intRange.getClass();
        return num != null && intRange.contains(num.intValue());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, byte b10) {
        closedRange.getClass();
        return closedRange.contains(Double.valueOf(b10));
    }

    public static final LongProgression downTo(long j10, byte b10) {
        return LongProgression.INSTANCE.fromClosedRange(j10, b10, -1L);
    }

    @SinceKotlin(version = "1.7")
    public static final long first(LongProgression longProgression) {
        longProgression.getClass();
        if (!longProgression.isEmpty()) {
            return longProgression.getFirst();
        }
        C0075b.m193r(longProgression, "Progression ", " is empty.");
        return 0L;
    }

    @SinceKotlin(version = "1.7")
    public static final Integer firstOrNull(IntProgression intProgression) {
        intProgression.getClass();
        if (intProgression.isEmpty()) {
            return null;
        }
        return Integer.valueOf(intProgression.getFirst());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, byte b10) {
        closedRange.getClass();
        return closedRange.contains(Float.valueOf(b10));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange closedRange, double d) {
        closedRange.getClass();
        Integer intExactOrNull = toIntExactOrNull(d);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.7")
    public static final long last(LongProgression longProgression) {
        longProgression.getClass();
        if (!longProgression.isEmpty()) {
            return longProgression.getLast();
        }
        C0075b.m193r(longProgression, "Progression ", " is empty.");
        return 0L;
    }

    @SinceKotlin(version = "1.7")
    public static final Integer lastOrNull(IntProgression intProgression) {
        intProgression.getClass();
        if (intProgression.isEmpty()) {
            return null;
        }
        return Integer.valueOf(intProgression.getLast());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange closedRange, double d) {
        closedRange.getClass();
        Long longExactOrNull = toLongExactOrNull(d);
        if (longExactOrNull != null) {
            return closedRange.contains(longExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    public static final char random(CharRange charRange, Random random) {
        charRange.getClass();
        random.getClass();
        try {
            return (char) random.nextInt(charRange.getFirst(), charRange.getLast() + 1);
        } catch (IllegalArgumentException e) {
            C1929i.m3025g(e.getMessage());
            return (char) 0;
        }
    }

    @SinceKotlin(version = "1.4")
    public static final Character randomOrNull(CharRange charRange, Random random) {
        charRange.getClass();
        random.getClass();
        if (charRange.isEmpty()) {
            return null;
        }
        return Character.valueOf((char) random.nextInt(charRange.getFirst(), charRange.getLast() + 1));
    }

    public static final IntProgression reversed(IntProgression intProgression) {
        intProgression.getClass();
        return IntProgression.INSTANCE.fromClosedRange(intProgression.getLast(), intProgression.getFirst(), -intProgression.getStep());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange closedRange, double d) {
        closedRange.getClass();
        Short shortExactOrNull = toShortExactOrNull(d);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    public static final LongProgression step(LongProgression longProgression, long j10) {
        longProgression.getClass();
        RangesKt__RangesKt.checkStepIsPositive(j10 > 0, Long.valueOf(j10));
        LongProgression.Companion companion = LongProgression.INSTANCE;
        long first = longProgression.getFirst();
        long last = longProgression.getLast();
        if (longProgression.getStep() <= 0) {
            j10 = -j10;
        }
        return companion.fromClosedRange(first, last, j10);
    }

    public static final Byte toByteExactOrNull(double d) {
        if (-128.0d > d || d > 127.0d) {
            return null;
        }
        return Byte.valueOf((byte) d);
    }

    public static final Integer toIntExactOrNull(long j10) {
        if (-2147483648L > j10 || j10 >= 2147483648L) {
            return null;
        }
        return Integer.valueOf((int) j10);
    }

    public static final Long toLongExactOrNull(double d) {
        if (-9.223372036854776E18d > d || d > 9.223372036854776E18d) {
            return null;
        }
        return Long.valueOf((long) d);
    }

    public static final Short toShortExactOrNull(double d) {
        if (-32768.0d > d || d > 32767.0d) {
            return null;
        }
        return Short.valueOf((short) d);
    }

    public static final CharRange until(char c, char c10) {
        return Intrinsics.compare((int) c10, 0) <= 0 ? CharRange.INSTANCE.getEMPTY() : new CharRange(c, (char) (c10 - 1));
    }

    public static final IntProgression downTo(int i10, byte b10) {
        return IntProgression.INSTANCE.fromClosedRange(i10, b10, -1);
    }

    public static final IntProgression downTo(byte b10, byte b11) {
        return IntProgression.INSTANCE.fromClosedRange(b10, b11, -1);
    }

    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(ClosedRange<Double> closedRange, float f8) {
        closedRange.getClass();
        return closedRange.contains(Double.valueOf(f8));
    }

    public static final IntProgression downTo(short s5, byte b10) {
        return IntProgression.INSTANCE.fromClosedRange(s5, b10, -1);
    }

    @JvmName(name = "floatRangeContains")
    public static final boolean floatRangeContains(ClosedRange<Float> closedRange, double d) {
        closedRange.getClass();
        return closedRange.contains(Float.valueOf((float) d));
    }

    public static final double coerceAtLeast(double d, double d10) {
        return d < d10 ? d10 : d;
    }

    public static final double coerceAtMost(double d, double d10) {
        return d > d10 ? d10 : d;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(OpenEndRange<Double> openEndRange, float f8) {
        openEndRange.getClass();
        return openEndRange.contains(Double.valueOf(f8));
    }

    public static final CharProgression downTo(char c, char c10) {
        return CharProgression.INSTANCE.fromClosedRange(c, c10, -1);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, int i10) {
        closedRange.getClass();
        return closedRange.contains(Float.valueOf(i10));
    }

    public static float coerceAtLeast(float f8, float f10) {
        return f8 < f10 ? f10 : f8;
    }

    public static final float coerceAtMost(float f8, float f10) {
        return f8 > f10 ? f10 : f8;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, int i10) {
        closedRange.getClass();
        return closedRange.contains(Double.valueOf(i10));
    }

    public static IntProgression downTo(int i10, int i11) {
        return IntProgression.INSTANCE.fromClosedRange(i10, i11, -1);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, long j10) {
        closedRange.getClass();
        return closedRange.contains(Float.valueOf(j10));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange closedRange, float f8) {
        closedRange.getClass();
        Byte byteExactOrNull = toByteExactOrNull(f8);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static int coerceAtLeast(int i10, int i11) {
        return i10 < i11 ? i11 : i10;
    }

    public static int coerceAtMost(int i10, int i11) {
        return i10 > i11 ? i11 : i10;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, long j10) {
        closedRange.getClass();
        return closedRange.contains(Double.valueOf(j10));
    }

    public static final LongProgression downTo(long j10, int i10) {
        return LongProgression.INSTANCE.fromClosedRange(j10, i10, -1L);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "floatRangeContains")
    public static final /* synthetic */ boolean floatRangeContains(ClosedRange closedRange, short s5) {
        closedRange.getClass();
        return closedRange.contains(Float.valueOf(s5));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(OpenEndRange<Integer> openEndRange, byte b10) {
        openEndRange.getClass();
        return openEndRange.contains(Integer.valueOf(b10));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(OpenEndRange<Long> openEndRange, byte b10) {
        openEndRange.getClass();
        return openEndRange.contains(Long.valueOf(b10));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(OpenEndRange<Short> openEndRange, byte b10) {
        openEndRange.getClass();
        return openEndRange.contains(Short.valueOf(b10));
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(ClosedRange<Byte> closedRange, int i10) {
        closedRange.getClass();
        Byte byteExactOrNull = toByteExactOrNull(i10);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static long coerceAtLeast(long j10, long j11) {
        return j10 < j11 ? j11 : j10;
    }

    public static long coerceAtMost(long j10, long j11) {
        return j10 > j11 ? j11 : j10;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "doubleRangeContains")
    public static final /* synthetic */ boolean doubleRangeContains(ClosedRange closedRange, short s5) {
        closedRange.getClass();
        return closedRange.contains(Double.valueOf(s5));
    }

    public static final IntProgression downTo(byte b10, int i10) {
        return IntProgression.INSTANCE.fromClosedRange(b10, i10, -1);
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(ClosedRange<Integer> closedRange, byte b10) {
        closedRange.getClass();
        return closedRange.contains(Integer.valueOf(b10));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(ClosedRange<Long> closedRange, byte b10) {
        closedRange.getClass();
        return closedRange.contains(Long.valueOf(b10));
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(ClosedRange<Short> closedRange, byte b10) {
        closedRange.getClass();
        return closedRange.contains(Short.valueOf(b10));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(OpenEndRange<Byte> openEndRange, int i10) {
        openEndRange.getClass();
        Byte byteExactOrNull = toByteExactOrNull(i10);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static final short coerceAtLeast(short s5, short s9) {
        return s5 < s9 ? s9 : s5;
    }

    public static final short coerceAtMost(short s5, short s9) {
        return s5 > s9 ? s9 : s5;
    }

    public static final IntProgression downTo(short s5, int i10) {
        return IntProgression.INSTANCE.fromClosedRange(s5, i10, -1);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange closedRange, float f8) {
        closedRange.getClass();
        Integer intExactOrNull = toIntExactOrNull(f8);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange closedRange, float f8) {
        closedRange.getClass();
        Long longExactOrNull = toLongExactOrNull(f8);
        if (longExactOrNull != null) {
            return closedRange.contains(longExactOrNull);
        }
        return false;
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange closedRange, float f8) {
        closedRange.getClass();
        Short shortExactOrNull = toShortExactOrNull(f8);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(ClosedRange<Byte> closedRange, long j10) {
        closedRange.getClass();
        Byte byteExactOrNull = toByteExactOrNull(j10);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static final byte coerceAtLeast(byte b10, byte b11) {
        return b10 < b11 ? b11 : b10;
    }

    public static final byte coerceAtMost(byte b10, byte b11) {
        return b10 > b11 ? b11 : b10;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(LongRange longRange, Long l10) {
        longRange.getClass();
        return l10 != null && longRange.contains(l10.longValue());
    }

    public static final LongProgression downTo(int i10, long j10) {
        return LongProgression.INSTANCE.fromClosedRange(i10, j10, -1L);
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(ClosedRange<Integer> closedRange, long j10) {
        closedRange.getClass();
        Integer intExactOrNull = toIntExactOrNull(j10);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(ClosedRange<Long> closedRange, int i10) {
        closedRange.getClass();
        return closedRange.contains(Long.valueOf(i10));
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(ClosedRange<Short> closedRange, int i10) {
        closedRange.getClass();
        Short shortExactOrNull = toShortExactOrNull(i10);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(OpenEndRange<Byte> openEndRange, long j10) {
        openEndRange.getClass();
        Byte byteExactOrNull = toByteExactOrNull(j10);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(CharRange charRange, Character ch) {
        charRange.getClass();
        return ch != null && charRange.contains(ch.charValue());
    }

    public static final LongProgression downTo(long j10, long j11) {
        return LongProgression.INSTANCE.fromClosedRange(j10, j11, -1L);
    }

    @SinceKotlin(version = "1.7")
    public static final Long firstOrNull(LongProgression longProgression) {
        longProgression.getClass();
        if (longProgression.isEmpty()) {
            return null;
        }
        return Long.valueOf(longProgression.getFirst());
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(OpenEndRange<Integer> openEndRange, long j10) {
        openEndRange.getClass();
        Integer intExactOrNull = toIntExactOrNull(j10);
        if (intExactOrNull != null) {
            return openEndRange.contains(intExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.7")
    public static final Long lastOrNull(LongProgression longProgression) {
        longProgression.getClass();
        if (longProgression.isEmpty()) {
            return null;
        }
        return Long.valueOf(longProgression.getLast());
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(OpenEndRange<Long> openEndRange, int i10) {
        openEndRange.getClass();
        return openEndRange.contains(Long.valueOf(i10));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(OpenEndRange<Short> openEndRange, int i10) {
        openEndRange.getClass();
        Short shortExactOrNull = toShortExactOrNull(i10);
        if (shortExactOrNull != null) {
            return openEndRange.contains(shortExactOrNull);
        }
        return false;
    }

    public static final Long toLongExactOrNull(float f8) {
        if (-9.223372E18f > f8 || f8 > 9.223372E18f) {
            return null;
        }
        return Long.valueOf((long) f8);
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(ClosedRange<Byte> closedRange, short s5) {
        closedRange.getClass();
        Byte byteExactOrNull = toByteExactOrNull(s5);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @InlineOnly
    private static final boolean contains(IntRange intRange, byte b10) {
        intRange.getClass();
        return intRangeContains((ClosedRange<Integer>) intRange, b10);
    }

    public static final LongProgression downTo(byte b10, long j10) {
        return LongProgression.INSTANCE.fromClosedRange(b10, j10, -1L);
    }

    @SinceKotlin(version = "1.7")
    public static final Character firstOrNull(CharProgression charProgression) {
        charProgression.getClass();
        if (charProgression.isEmpty()) {
            return null;
        }
        return Character.valueOf(charProgression.getFirst());
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(ClosedRange<Integer> closedRange, short s5) {
        closedRange.getClass();
        return closedRange.contains(Integer.valueOf(s5));
    }

    @SinceKotlin(version = "1.7")
    public static final Character lastOrNull(CharProgression charProgression) {
        charProgression.getClass();
        if (charProgression.isEmpty()) {
            return null;
        }
        return Character.valueOf(charProgression.getLast());
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(ClosedRange<Long> closedRange, short s5) {
        closedRange.getClass();
        return closedRange.contains(Long.valueOf(s5));
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(ClosedRange<Short> closedRange, long j10) {
        closedRange.getClass();
        Short shortExactOrNull = toShortExactOrNull(j10);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(OpenEndRange<Byte> openEndRange, short s5) {
        openEndRange.getClass();
        Byte byteExactOrNull = toByteExactOrNull(s5);
        if (byteExactOrNull != null) {
            return openEndRange.contains(byteExactOrNull);
        }
        return false;
    }

    @InlineOnly
    private static final boolean contains(LongRange longRange, byte b10) {
        longRange.getClass();
        return longRangeContains((ClosedRange<Long>) longRange, b10);
    }

    public static final LongProgression downTo(short s5, long j10) {
        return LongProgression.INSTANCE.fromClosedRange(s5, j10, -1L);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(OpenEndRange<Integer> openEndRange, short s5) {
        openEndRange.getClass();
        return openEndRange.contains(Integer.valueOf(s5));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(OpenEndRange<Long> openEndRange, short s5) {
        openEndRange.getClass();
        return openEndRange.contains(Long.valueOf(s5));
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(OpenEndRange<Short> openEndRange, long j10) {
        openEndRange.getClass();
        Short shortExactOrNull = toShortExactOrNull(j10);
        if (shortExactOrNull != null) {
            return openEndRange.contains(shortExactOrNull);
        }
        return false;
    }

    @InlineOnly
    private static final boolean contains(LongRange longRange, int i10) {
        longRange.getClass();
        return longRangeContains((ClosedRange<Long>) longRange, i10);
    }

    public static final IntProgression downTo(int i10, short s5) {
        return IntProgression.INSTANCE.fromClosedRange(i10, s5, -1);
    }

    public static final LongProgression reversed(LongProgression longProgression) {
        longProgression.getClass();
        return LongProgression.INSTANCE.fromClosedRange(longProgression.getLast(), longProgression.getFirst(), -longProgression.getStep());
    }

    public static final LongRange until(long j10, byte b10) {
        return new LongRange(j10, ((long) b10) - 1);
    }

    @InlineOnly
    private static final boolean contains(IntRange intRange, long j10) {
        intRange.getClass();
        return intRangeContains((ClosedRange<Integer>) intRange, j10);
    }

    public static final LongProgression downTo(long j10, short s5) {
        return LongProgression.INSTANCE.fromClosedRange(j10, s5, -1L);
    }

    @SinceKotlin(version = "1.7")
    public static final int first(IntProgression intProgression) {
        intProgression.getClass();
        if (!intProgression.isEmpty()) {
            return intProgression.getFirst();
        }
        C0075b.m193r(intProgression, "Progression ", " is empty.");
        return 0;
    }

    @SinceKotlin(version = "1.7")
    public static final int last(IntProgression intProgression) {
        intProgression.getClass();
        if (!intProgression.isEmpty()) {
            return intProgression.getLast();
        }
        C0075b.m193r(intProgression, "Progression ", " is empty.");
        return 0;
    }

    public static final CharProgression reversed(CharProgression charProgression) {
        charProgression.getClass();
        return CharProgression.INSTANCE.fromClosedRange(charProgression.getLast(), charProgression.getFirst(), -charProgression.getStep());
    }

    public static final Byte toByteExactOrNull(long j10) {
        if (-128 > j10 || j10 >= 128) {
            return null;
        }
        return Byte.valueOf((byte) j10);
    }

    public static final Integer toIntExactOrNull(double d) {
        if (-2.147483648E9d > d || d > 2.147483647E9d) {
            return null;
        }
        return Integer.valueOf((int) d);
    }

    public static final Short toShortExactOrNull(long j10) {
        if (-32768 > j10 || j10 >= 32768) {
            return null;
        }
        return Short.valueOf((short) j10);
    }

    public static final IntRange until(byte b10, byte b11) {
        return new IntRange(b10, b11 - 1);
    }

    @InlineOnly
    private static final boolean contains(IntRange intRange, short s5) {
        intRange.getClass();
        return intRangeContains((ClosedRange<Integer>) intRange, s5);
    }

    public static final IntProgression downTo(byte b10, short s5) {
        return IntProgression.INSTANCE.fromClosedRange(b10, s5, -1);
    }

    public static final Byte toByteExactOrNull(short s5) {
        if (-128 > s5 || s5 >= 128) {
            return null;
        }
        return Byte.valueOf((byte) s5);
    }

    public static final Integer toIntExactOrNull(float f8) {
        if (-2.1474836E9f > f8 || f8 > 2.1474836E9f) {
            return null;
        }
        return Integer.valueOf((int) f8);
    }

    public static final Short toShortExactOrNull(int i10) {
        if (-32768 > i10 || i10 >= 32768) {
            return null;
        }
        return Short.valueOf((short) i10);
    }

    public static final IntRange until(short s5, byte b10) {
        return new IntRange(s5, b10 - 1);
    }

    @InlineOnly
    private static final boolean contains(LongRange longRange, short s5) {
        longRange.getClass();
        return longRangeContains((ClosedRange<Long>) longRange, s5);
    }

    public static final IntProgression downTo(short s5, short s9) {
        return IntProgression.INSTANCE.fromClosedRange(s5, s9, -1);
    }

    public static final Byte toByteExactOrNull(int i10) {
        if (-128 > i10 || i10 >= 128) {
            return null;
        }
        return Byte.valueOf((byte) i10);
    }

    public static final Short toShortExactOrNull(float f8) {
        if (-32768.0f > f8 || f8 > 32767.0f) {
            return null;
        }
        return Short.valueOf((short) f8);
    }

    public static final IntRange until(int i10, byte b10) {
        return new IntRange(i10, b10 - 1);
    }

    @SinceKotlin(version = "1.7")
    public static final char first(CharProgression charProgression) {
        charProgression.getClass();
        if (!charProgression.isEmpty()) {
            return charProgression.getFirst();
        }
        C0075b.m193r(charProgression, "Progression ", " is empty.");
        return (char) 0;
    }

    @SinceKotlin(version = "1.7")
    public static final char last(CharProgression charProgression) {
        charProgression.getClass();
        if (!charProgression.isEmpty()) {
            return charProgression.getLast();
        }
        C0075b.m193r(charProgression, "Progression ", " is empty.");
        return (char) 0;
    }

    public static final Byte toByteExactOrNull(float f8) {
        if (-128.0f > f8 || f8 > 127.0f) {
            return null;
        }
        return Byte.valueOf((byte) f8);
    }

    public static IntRange until(int i10, int i11) {
        if (i11 <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(i10, i11 - 1);
    }

    public static final LongRange until(long j10, int i10) {
        return new LongRange(j10, ((long) i10) - 1);
    }

    public static final IntRange until(byte b10, int i10) {
        if (i10 <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(b10, i10 - 1);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final long random(LongRange longRange) {
        longRange.getClass();
        return random(longRange, Random.INSTANCE);
    }

    public static final IntRange until(short s5, int i10) {
        if (i10 <= Integer.MIN_VALUE) {
            return IntRange.INSTANCE.getEMPTY();
        }
        return new IntRange(s5, i10 - 1);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final char random(CharRange charRange) {
        charRange.getClass();
        return random(charRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.3")
    public static final int random(IntRange intRange, Random random) {
        intRange.getClass();
        random.getClass();
        try {
            return RandomKt.nextInt(random, intRange);
        } catch (IllegalArgumentException e) {
            C1929i.m3025g(e.getMessage());
            return 0;
        }
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Long randomOrNull(LongRange longRange) {
        longRange.getClass();
        return randomOrNull(longRange, Random.INSTANCE);
    }

    public static final LongRange until(int i10, long j10) {
        if (j10 <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(i10, j10 - 1);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Character randomOrNull(CharRange charRange) {
        charRange.getClass();
        return randomOrNull(charRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.3")
    public static final long random(LongRange longRange, Random random) {
        longRange.getClass();
        random.getClass();
        try {
            return RandomKt.nextLong(random, longRange);
        } catch (IllegalArgumentException e) {
            C1929i.m3025g(e.getMessage());
            return 0L;
        }
    }

    @SinceKotlin(version = "1.4")
    public static final Integer randomOrNull(IntRange intRange, Random random) {
        intRange.getClass();
        random.getClass();
        if (intRange.isEmpty()) {
            return null;
        }
        return Integer.valueOf(RandomKt.nextInt(random, intRange));
    }

    public static final LongRange until(long j10, long j11) {
        if (j11 <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(j10, j11 - 1);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final int random(IntRange intRange) {
        intRange.getClass();
        return random(intRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.4")
    public static final Long randomOrNull(LongRange longRange, Random random) {
        longRange.getClass();
        random.getClass();
        if (longRange.isEmpty()) {
            return null;
        }
        return Long.valueOf(RandomKt.nextLong(random, longRange));
    }

    public static final LongRange until(byte b10, long j10) {
        if (j10 <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(b10, j10 - 1);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Integer randomOrNull(IntRange intRange) {
        intRange.getClass();
        return randomOrNull(intRange, Random.INSTANCE);
    }

    public static final LongRange until(short s5, long j10) {
        if (j10 <= Long.MIN_VALUE) {
            return LongRange.INSTANCE.getEMPTY();
        }
        return new LongRange(s5, j10 - 1);
    }

    public static final IntRange until(int i10, short s5) {
        return new IntRange(i10, s5 - 1);
    }

    public static final LongRange until(long j10, short s5) {
        return new LongRange(j10, ((long) s5) - 1);
    }

    public static final IntRange until(byte b10, short s5) {
        return new IntRange(b10, s5 - 1);
    }

    public static final IntRange until(short s5, short s9) {
        return new IntRange(s5, s9 - 1);
    }

    public static IntProgression step(IntProgression intProgression, int i10) {
        intProgression.getClass();
        RangesKt__RangesKt.checkStepIsPositive(i10 > 0, Integer.valueOf(i10));
        IntProgression.Companion companion = IntProgression.INSTANCE;
        int first = intProgression.getFirst();
        int last = intProgression.getLast();
        if (intProgression.getStep() <= 0) {
            i10 = -i10;
        }
        return companion.fromClosedRange(first, last, i10);
    }

    public static final CharProgression step(CharProgression charProgression, int i10) {
        charProgression.getClass();
        RangesKt__RangesKt.checkStepIsPositive(i10 > 0, Integer.valueOf(i10));
        CharProgression.Companion companion = CharProgression.INSTANCE;
        char first = charProgression.getFirst();
        char last = charProgression.getLast();
        if (charProgression.getStep() <= 0) {
            i10 = -i10;
        }
        return companion.fromClosedRange(first, last, i10);
    }

    public static final byte coerceIn(byte b10, byte b11, byte b12) {
        if (b11 > b12) {
            C1929i.m3026h("Cannot coerce value to an empty range: maximum ", b12, b11, 46, " is less than minimum ");
            return (byte) 0;
        }
        if (b10 < b11) {
            return b11;
        }
        return b10 > b12 ? b12 : b10;
    }

    public static final short coerceIn(short s5, short s9, short s10) {
        if (s9 > s10) {
            C1929i.m3026h("Cannot coerce value to an empty range: maximum ", s10, s9, 46, " is less than minimum ");
            return (short) 0;
        }
        if (s5 < s9) {
            return s9;
        }
        return s5 > s10 ? s10 : s5;
    }

    public static int coerceIn(int i10, int i11, int i12) {
        if (i11 > i12) {
            C1929i.m3026h("Cannot coerce value to an empty range: maximum ", i12, i11, 46, " is less than minimum ");
            return 0;
        }
        if (i10 < i11) {
            return i11;
        }
        return i10 > i12 ? i12 : i10;
    }

    public static long coerceIn(long j10, long j11, long j12) {
        if (j11 <= j12) {
            if (j10 < j11) {
                return j11;
            }
            return j10 > j12 ? j12 : j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j12 + " is less than minimum " + j11 + FilenameUtils.EXTENSION_SEPARATOR);
    }

    public static float coerceIn(float f8, float f10, float f11) {
        if (f10 <= f11) {
            if (f8 < f10) {
                return f10;
            }
            return f8 > f11 ? f11 : f8;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f11 + " is less than minimum " + f10 + FilenameUtils.EXTENSION_SEPARATOR);
    }

    public static final double coerceIn(double d, double d10, double d11) {
        if (d10 <= d11) {
            if (d < d10) {
                return d10;
            }
            return d > d11 ? d11 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d11 + " is less than minimum " + d10 + FilenameUtils.EXTENSION_SEPARATOR);
    }

    @SinceKotlin(version = "1.1")
    public static final <T extends Comparable<? super T>> T coerceIn(T t, ClosedFloatingPointRange<T> closedFloatingPointRange) {
        t.getClass();
        closedFloatingPointRange.getClass();
        if (!closedFloatingPointRange.isEmpty()) {
            if (!closedFloatingPointRange.lessThanOrEquals(t, closedFloatingPointRange.getStart()) || closedFloatingPointRange.lessThanOrEquals(closedFloatingPointRange.getStart(), t)) {
                return (!closedFloatingPointRange.lessThanOrEquals(closedFloatingPointRange.getEndInclusive(), t) || closedFloatingPointRange.lessThanOrEquals(t, closedFloatingPointRange.getEndInclusive())) ? t : closedFloatingPointRange.getEndInclusive();
            }
            return closedFloatingPointRange.getStart();
        }
        C1929i.m3024f(closedFloatingPointRange, "Cannot coerce value to an empty range: ");
        return null;
    }

    public static final <T extends Comparable<? super T>> T coerceIn(T t, ClosedRange<T> closedRange) {
        t.getClass();
        closedRange.getClass();
        if (closedRange instanceof ClosedFloatingPointRange) {
            return (T) coerceIn((Comparable) t, (ClosedFloatingPointRange) closedRange);
        }
        if (!closedRange.isEmpty()) {
            if (t.compareTo(closedRange.getStart()) < 0) {
                return (T) closedRange.getStart();
            }
            return t.compareTo(closedRange.getEndInclusive()) > 0 ? (T) closedRange.getEndInclusive() : t;
        }
        C1929i.m3024f(closedRange, "Cannot coerce value to an empty range: ");
        return null;
    }

    public static final int coerceIn(int i10, ClosedRange<Integer> closedRange) {
        closedRange.getClass();
        if (closedRange instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Integer.valueOf(i10), (ClosedFloatingPointRange<Integer>) closedRange)).intValue();
        }
        if (!closedRange.isEmpty()) {
            if (i10 < ((Number) closedRange.getStart()).intValue()) {
                return ((Number) closedRange.getStart()).intValue();
            }
            return i10 > ((Number) closedRange.getEndInclusive()).intValue() ? ((Number) closedRange.getEndInclusive()).intValue() : i10;
        }
        C1929i.m3024f(closedRange, "Cannot coerce value to an empty range: ");
        return 0;
    }

    public static final <T extends Comparable<? super T>> T coerceIn(T t, T t3, T t9) {
        t.getClass();
        if (t3 != null && t9 != null) {
            if (t3.compareTo(t9) <= 0) {
                if (t.compareTo(t3) < 0) {
                    return t3;
                }
                if (t.compareTo(t9) > 0) {
                    return t9;
                }
            } else {
                C0075b.m189n("Cannot coerce value to an empty range: maximum ", t9, " is less than minimum ", t3, 46);
                return null;
            }
        } else {
            if (t3 != null && t.compareTo(t3) < 0) {
                return t3;
            }
            if (t9 != null && t.compareTo(t9) > 0) {
                return t9;
            }
        }
        return t;
    }
}
