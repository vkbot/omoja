package androidx.navigation;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.annotation.NavigationRes;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.TaskStackBuilder;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.serialization.RouteSerializerKt;
import com.bumptech.glide.AbstractC1031d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import org.apache.commons.p161io.FilenameUtils;
import p099j1.C1929i;
import p130l9.C2237i;
import p141n.C2455p;
import p142n0.C2467b;
import p253y8.AbstractC3681r;
import p253y8.C3677n;
import p253y8.C3680q;
import p253y8.C3685v;
import p253y8.InterfaceC3669f;
import p253y8.InterfaceC3675l;
import p253y8.InterfaceC3676m;
import p253y8.InterfaceC3683t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000ü\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0015\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0016\u0018\u0000 ¥\u00022\u00020\u0001:\u0006¥\u0002¦\u0002§\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0017¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0012\u001a\u00020\u00112\b\b\u0001\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0011H\u0017¢\u0006\u0004\b\u0012\u0010\u0017J)\u0010\u0012\u001a\u00020\u00112\b\b\u0001\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0011H\u0017¢\u0006\u0004\b\u0012\u0010\u0019J)\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0012\u0010\u001cJ.\u0010\u0012\u001a\u00020\u0011\"\n\b\u0000\u0010\u001d\u0018\u0001*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b\u0012\u0010\u001eJ3\u0010\u0012\u001a\u00020\u0011\"\b\b\u0000\u0010\u001d*\u00020\u00012\u0006\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0012\u0010\u001fJ%\u0010%\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00062\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\r0!H\u0000¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001aH\u0007¢\u0006\u0004\b&\u0010'J\u0019\u0010&\u001a\u00020\u00112\b\b\u0001\u0010\u0015\u001a\u00020\u0014H\u0007¢\u0006\u0004\b&\u0010(J\u001c\u0010&\u001a\u00020\u0011\"\n\b\u0000\u0010\u001d\u0018\u0001*\u00020\u0001H\u0087\b¢\u0006\u0004\b&\u0010\u0013J!\u0010&\u001a\u00020\u0011\"\b\b\u0000\u0010\u001d*\u00020\u00012\u0006\u0010\u001b\u001a\u00028\u0000H\u0007¢\u0006\u0004\b&\u0010)J\u000f\u0010*\u001a\u00020\u0011H\u0017¢\u0006\u0004\b*\u0010\u0013J\u000f\u0010-\u001a\u00020\rH\u0000¢\u0006\u0004\b+\u0010,J\u0015\u00101\u001a\b\u0012\u0004\u0012\u00020\u00060.H\u0000¢\u0006\u0004\b/\u00100J\u0019\u00103\u001a\u00020\r2\b\b\u0001\u00102\u001a\u00020\u0014H\u0017¢\u0006\u0004\b3\u00104J#\u00103\u001a\u00020\r2\b\b\u0001\u00102\u001a\u00020\u00142\b\u00106\u001a\u0004\u0018\u000105H\u0017¢\u0006\u0004\b3\u00107J!\u00103\u001a\u00020\r2\u0006\u00109\u001a\u0002082\b\u00106\u001a\u0004\u0018\u000105H\u0017¢\u0006\u0004\b3\u0010:J\u0019\u0010=\u001a\u00020\u00112\b\u0010<\u001a\u0004\u0018\u00010;H\u0017¢\u0006\u0004\b=\u0010>J'\u0010A\u001a\u0004\u0018\u00010?2\b\b\u0001\u0010\u0015\u001a\u00020\u00142\n\b\u0002\u0010@\u001a\u0004\u0018\u00010?H\u0007¢\u0006\u0004\bA\u0010BJ3\u0010D\u001a\u0004\u0018\u00010?*\u00020?2\b\b\u0001\u0010\u0015\u001a\u00020\u00142\u0006\u0010C\u001a\u00020\u00112\n\b\u0002\u0010@\u001a\u0004\u0018\u00010?H\u0007¢\u0006\u0004\bD\u0010EJ\u0019\u0010A\u001a\u0004\u0018\u00010?2\u0006\u0010\u001b\u001a\u00020\u001aH\u0007¢\u0006\u0004\bA\u0010FJ\u0019\u0010H\u001a\u00020\r2\b\b\u0001\u0010G\u001a\u00020\u0014H\u0017¢\u0006\u0004\bH\u00104J#\u0010H\u001a\u00020\r2\b\b\u0001\u0010G\u001a\u00020\u00142\b\u0010I\u001a\u0004\u0018\u000105H\u0017¢\u0006\u0004\bH\u00107J-\u0010H\u001a\u00020\r2\b\b\u0001\u0010G\u001a\u00020\u00142\b\u0010I\u001a\u0004\u0018\u0001052\b\u0010K\u001a\u0004\u0018\u00010JH\u0017¢\u0006\u0004\bH\u0010LJ7\u0010H\u001a\u00020\r2\b\b\u0001\u0010G\u001a\u00020\u00142\b\u0010I\u001a\u0004\u0018\u0001052\b\u0010K\u001a\u0004\u0018\u00010J2\b\u0010N\u001a\u0004\u0018\u00010MH\u0017¢\u0006\u0004\bH\u0010OJ\u0017\u0010H\u001a\u00020\r2\u0006\u0010Q\u001a\u00020PH\u0017¢\u0006\u0004\bH\u0010RJ!\u0010H\u001a\u00020\r2\u0006\u0010Q\u001a\u00020P2\b\u0010K\u001a\u0004\u0018\u00010JH\u0017¢\u0006\u0004\bH\u0010SJ+\u0010H\u001a\u00020\r2\u0006\u0010Q\u001a\u00020P2\b\u0010K\u001a\u0004\u0018\u00010J2\b\u0010N\u001a\u0004\u0018\u00010MH\u0017¢\u0006\u0004\bH\u0010TJ\u0017\u0010H\u001a\u00020\r2\u0006\u0010V\u001a\u00020UH\u0017¢\u0006\u0004\bH\u0010WJ!\u0010H\u001a\u00020\r2\u0006\u0010V\u001a\u00020U2\b\u0010K\u001a\u0004\u0018\u00010JH\u0017¢\u0006\u0004\bH\u0010XJ+\u0010H\u001a\u00020\r2\u0006\u0010V\u001a\u00020U2\b\u0010K\u001a\u0004\u0018\u00010J2\b\u0010N\u001a\u0004\u0018\u00010MH\u0017¢\u0006\u0004\bH\u0010YJ\u0017\u0010H\u001a\u00020\r2\u0006\u0010[\u001a\u00020ZH\u0017¢\u0006\u0004\bH\u0010\\J!\u0010H\u001a\u00020\r2\u0006\u0010[\u001a\u00020Z2\b\u0010K\u001a\u0004\u0018\u00010JH\u0017¢\u0006\u0004\bH\u0010]J\u001f\u0010H\u001a\u00020\r2\u0006\u0010[\u001a\u00020Z2\u0006\u0010N\u001a\u00020MH\u0017¢\u0006\u0004\bH\u0010^J0\u0010H\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001a2\u0017\u0010b\u001a\u0013\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\r0_¢\u0006\u0002\baH\u0007¢\u0006\u0004\bH\u0010cJ/\u0010H\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001a2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010J2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010MH\u0007¢\u0006\u0004\bH\u0010dJ:\u0010H\u001a\u00020\r\"\b\b\u0000\u0010\u001d*\u00020\u00012\u0006\u0010\u001b\u001a\u00028\u00002\u0017\u0010b\u001a\u0013\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\r0_¢\u0006\u0002\baH\u0007¢\u0006\u0004\bH\u0010eJ9\u0010H\u001a\u00020\r\"\b\b\u0000\u0010\u001d*\u00020\u00012\u0006\u0010\u001b\u001a\u00028\u00002\n\b\u0002\u0010K\u001a\u0004\u0018\u00010J2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010MH\u0007¢\u0006\u0004\bH\u0010fJ\u000f\u0010h\u001a\u00020gH\u0016¢\u0006\u0004\bh\u0010iJ\u0011\u0010\u0018\u001a\u0004\u0018\u000105H\u0017¢\u0006\u0004\b\u0018\u0010jJ\u0019\u0010l\u001a\u00020\r2\b\u0010k\u001a\u0004\u0018\u000105H\u0017¢\u0006\u0004\bl\u0010mJ\u0017\u0010p\u001a\u00020\r2\u0006\u0010o\u001a\u00020nH\u0017¢\u0006\u0004\bp\u0010qJ\u0017\u0010t\u001a\u00020\r2\u0006\u0010s\u001a\u00020rH\u0017¢\u0006\u0004\bt\u0010uJ\u0017\u0010w\u001a\u00020\r2\u0006\u0010v\u001a\u00020\u0011H\u0017¢\u0006\u0004\bw\u0010xJ\u0017\u0010{\u001a\u00020\r2\u0006\u0010z\u001a\u00020yH\u0017¢\u0006\u0004\b{\u0010|J\u001a\u0010\u007f\u001a\u00020~2\b\b\u0001\u0010}\u001a\u00020\u0014H\u0016¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u001c\u0010\u0081\u0001\u001a\u00020\u00062\b\b\u0001\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u0018\u0010\u0081\u0001\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0006\b\u0081\u0001\u0010\u0083\u0001J\u001f\u0010\u0081\u0001\u001a\u00020\u0006\"\n\b\u0000\u0010\u001d\u0018\u0001*\u00020\u0001H\u0086\b¢\u0006\u0006\b\u0081\u0001\u0010\u0084\u0001J\"\u0010\u0081\u0001\u001a\u00020\u0006\"\b\b\u0000\u0010\u001d*\u00020\u00012\u0006\u0010\u001b\u001a\u00028\u0000¢\u0006\u0006\b\u0081\u0001\u0010\u0085\u0001J#\u0010\u0087\u0001\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0007\u0010\u0086\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001Jk\u0010\u008f\u0001\u001a\u00020\r*\u000b\u0012\u0006\b\u0001\u0012\u00020?0\u0089\u00012\r\u0010\u008a\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060.2\b\u0010K\u001a\u0004\u0018\u00010J2\b\u0010N\u001a\u0004\u0018\u00010M2'\b\u0002\u0010\u008e\u0001\u001a \u0012\u0016\u0012\u00140\u0006¢\u0006\u000f\b\u008b\u0001\u0012\n\b\u008c\u0001\u0012\u0005\b\b(\u008d\u0001\u0012\u0004\u0012\u00020\r0_H\u0002¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001JW\u0010\u0091\u0001\u001a\u00020\r*\u000b\u0012\u0006\b\u0001\u0012\u00020?0\u0089\u00012\u0006\u0010 \u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00112&\b\u0002\u0010\u008e\u0001\u001a\u001f\u0012\u0015\u0012\u00130\u0006¢\u0006\u000e\b\u008b\u0001\u0012\t\b\u008c\u0001\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\r0_H\u0002¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001J-\u0010\u0091\u0001\u001a\u00020\u00112\b\b\u0001\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u0011H\u0003¢\u0006\u0005\b\u0091\u0001\u0010\u0019J5\u0010\u0091\u0001\u001a\u00020\u0011\"\b\b\u0000\u0010\u001d*\u00020\u00012\u0006\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0091\u0001\u0010\u001fJ)\u0010\u0091\u0001\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0091\u0001\u0010\u001cJ?\u0010\u0095\u0001\u001a\u00020\u00112\u0012\u0010\u0093\u0001\u001a\r\u0012\t\u0012\u0007\u0012\u0002\b\u00030\u0089\u00010.2\u0007\u0010\u0094\u0001\u001a\u00020?2\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0011H\u0002¢\u0006\u0006\b\u0095\u0001\u0010\u0096\u0001J7\u0010\u009a\u0001\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u00112\u0011\b\u0002\u0010\u0099\u0001\u001a\n\u0012\u0005\u0012\u00030\u0098\u00010\u0097\u0001H\u0002¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u001b\u0010\u009c\u0001\u001a\u00020\u00112\b\b\u0001\u0010\u0015\u001a\u00020\u0014H\u0003¢\u0006\u0005\b\u009c\u0001\u0010(J\u0019\u0010\u009c\u0001\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001aH\u0003¢\u0006\u0005\b\u009c\u0001\u0010'J\u0011\u0010\u009d\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009d\u0001\u0010\u0013J\u0011\u0010\u009e\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009e\u0001\u0010\u0013J\u0011\u0010\u009f\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009f\u0001\u0010\u0013J\u001b\u0010 \u0001\u001a\u00020\r2\b\u00106\u001a\u0004\u0018\u000105H\u0003¢\u0006\u0005\b \u0001\u0010mJ\u001d\u0010¢\u0001\u001a\u0004\u0018\u00010\u001a2\u0007\u0010Q\u001a\u00030¡\u0001H\u0002¢\u0006\u0006\b¢\u0001\u0010£\u0001J\u001d\u0010¤\u0001\u001a\u000208*\t\u0012\u0004\u0012\u00020\u00060\u0097\u0001H\u0002¢\u0006\u0006\b¤\u0001\u0010¥\u0001J$\u0010¦\u0001\u001a\u00020\u001a\"\b\b\u0000\u0010\u001d*\u00020\u00012\u0006\u0010\u001b\u001a\u00028\u0000H\u0002¢\u0006\u0006\b¦\u0001\u0010§\u0001J7\u0010H\u001a\u00020\r2\u0007\u0010¨\u0001\u001a\u00020?2\b\u0010I\u001a\u0004\u0018\u0001052\b\u0010K\u001a\u0004\u0018\u00010J2\b\u0010N\u001a\u0004\u0018\u00010MH\u0003¢\u0006\u0005\bH\u0010©\u0001J%\u0010ª\u0001\u001a\u00020\u00112\u0007\u0010¨\u0001\u001a\u00020?2\b\u0010I\u001a\u0004\u0018\u000105H\u0002¢\u0006\u0006\bª\u0001\u0010«\u0001J9\u0010\u00ad\u0001\u001a\u00020\u00112\u0007\u0010¬\u0001\u001a\u00020\u00142\b\u0010I\u001a\u0004\u0018\u0001052\b\u0010K\u001a\u0004\u0018\u00010J2\b\u0010N\u001a\u0004\u0018\u00010MH\u0002¢\u0006\u0006\b\u00ad\u0001\u0010®\u0001J\u0019\u0010\u00ad\u0001\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0005\b\u00ad\u0001\u0010'J?\u0010¯\u0001\u001a\u00020\u00112\r\u0010\u008a\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060.2\b\u0010I\u001a\u0004\u0018\u0001052\b\u0010K\u001a\u0004\u0018\u00010J2\b\u0010N\u001a\u0004\u0018\u00010MH\u0002¢\u0006\u0006\b¯\u0001\u0010°\u0001J+\u0010²\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060.2\u0011\u0010±\u0001\u001a\f\u0012\u0005\u0012\u00030\u0098\u0001\u0018\u00010\u0097\u0001H\u0002¢\u0006\u0006\b²\u0001\u0010³\u0001J@\u0010¶\u0001\u001a\u00020\r2\u0007\u0010¨\u0001\u001a\u00020?2\t\u0010´\u0001\u001a\u0004\u0018\u0001052\u0007\u0010\u008d\u0001\u001a\u00020\u00062\u000f\b\u0002\u0010µ\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060.H\u0002¢\u0006\u0006\b¶\u0001\u0010·\u0001J\u0011\u0010¸\u0001\u001a\u00020\rH\u0002¢\u0006\u0005\b¸\u0001\u0010,R\u001a\u0010\u0003\u001a\u00020\u00028\u0007¢\u0006\u000f\n\u0005\b\u0003\u0010¹\u0001\u001a\u0006\bº\u0001\u0010»\u0001R\u001c\u0010½\u0001\u001a\u0005\u0018\u00010¼\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001R\u001c\u0010À\u0001\u001a\u0005\u0018\u00010¿\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010Á\u0001R\u001b\u0010Â\u0001\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010Ã\u0001R\u001b\u0010Ä\u0001\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÄ\u0001\u0010Å\u0001R#\u0010È\u0001\u001a\f\u0012\u0005\u0012\u00030Ç\u0001\u0018\u00010Æ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010É\u0001R\u0019\u0010Ê\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010Ë\u0001R\u001e\u0010Ì\u0001\u001a\t\u0012\u0004\u0012\u00020\u00060\u0097\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÌ\u0001\u0010Í\u0001R$\u0010Ï\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060.0Î\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÏ\u0001\u0010Ð\u0001R,\u0010Ò\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060.0Ñ\u00018GX\u0087\u0004¢\u0006\u0010\n\u0006\bÒ\u0001\u0010Ó\u0001\u001a\u0006\bÔ\u0001\u0010Õ\u0001R$\u0010Ö\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060.0Î\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÖ\u0001\u0010Ð\u0001R)\u0010×\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060.0Ñ\u00018\u0006¢\u0006\u0010\n\u0006\b×\u0001\u0010Ó\u0001\u001a\u0006\bØ\u0001\u0010Õ\u0001R$\u0010Ú\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060Ù\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÚ\u0001\u0010Û\u0001R%\u0010Ý\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0005\u0012\u00030Ü\u00010Ù\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÝ\u0001\u0010Û\u0001R&\u0010Þ\u0001\u001a\u0011\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u001a0Ù\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÞ\u0001\u0010Û\u0001R,\u0010ß\u0001\u001a\u0017\u0012\u0004\u0012\u00020\u001a\u0012\f\u0012\n\u0012\u0005\u0012\u00030\u0098\u00010\u0097\u00010Ù\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bß\u0001\u0010Û\u0001R\u001b\u0010à\u0001\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bà\u0001\u0010á\u0001R\u001b\u0010â\u0001\u001a\u0004\u0018\u00010r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bâ\u0001\u0010ã\u0001R\u001c\u0010å\u0001\u001a\u0005\u0018\u00010ä\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bå\u0001\u0010æ\u0001R\u001e\u0010è\u0001\u001a\t\u0012\u0004\u0012\u00020\u000b0ç\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bè\u0001\u0010é\u0001R*\u0010ë\u0001\u001a\u00030ê\u00018@@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\bë\u0001\u0010ì\u0001\u001a\u0006\bí\u0001\u0010î\u0001\"\u0006\bï\u0001\u0010ð\u0001R\u0018\u0010ò\u0001\u001a\u00030ñ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bò\u0001\u0010ó\u0001R\u0018\u0010õ\u0001\u001a\u00030ô\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bõ\u0001\u0010ö\u0001R\u0019\u0010÷\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b÷\u0001\u0010Ë\u0001R\u001a\u0010ù\u0001\u001a\u00030ø\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bù\u0001\u0010ú\u0001R2\u0010ü\u0001\u001a\u001d\u0012\r\u0012\u000b\u0012\u0006\b\u0001\u0012\u00020?0\u0089\u0001\u0012\t\u0012\u00070û\u0001R\u00020\u00000Ù\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bü\u0001\u0010Û\u0001R9\u0010ý\u0001\u001a\"\u0012\u0016\u0012\u00140\u0006¢\u0006\u000f\b\u008b\u0001\u0012\n\b\u008c\u0001\u0012\u0005\b\b(\u008d\u0001\u0012\u0004\u0012\u00020\r\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bý\u0001\u0010þ\u0001R8\u0010ÿ\u0001\u001a!\u0012\u0015\u0012\u00130\u0006¢\u0006\u000e\b\u008b\u0001\u0012\t\b\u008c\u0001\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\r\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÿ\u0001\u0010þ\u0001R$\u0010\u0080\u0002\u001a\u000f\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00110Ù\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0080\u0002\u0010Û\u0001R\u0019\u0010\u0081\u0002\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0002\u0010\u0082\u0002R\u001e\u0010\u0084\u0002\u001a\t\u0012\u0004\u0012\u00020\u00060\u0083\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0084\u0002\u0010\u0085\u0002R!\u0010\u008a\u0002\u001a\u00030¿\u00018VX\u0096\u0084\u0002¢\u0006\u0010\n\u0006\b\u0086\u0002\u0010\u0087\u0002\u001a\u0006\b\u0088\u0002\u0010\u0089\u0002R\u001e\u0010\u008c\u0002\u001a\t\u0012\u0004\u0012\u00020\u00060\u008b\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008c\u0002\u0010\u008d\u0002R#\u0010\u008f\u0002\u001a\t\u0012\u0004\u0012\u00020\u00060\u008e\u00028\u0006¢\u0006\u0010\n\u0006\b\u008f\u0002\u0010\u0090\u0002\u001a\u0006\b\u0091\u0002\u0010\u0092\u0002R'\u00109\u001a\u0002082\u0006\u00109\u001a\u0002088W@WX\u0096\u000e¢\u0006\u000f\u001a\u0006\b\u0093\u0002\u0010\u0094\u0002\"\u0005\b3\u0010\u0095\u0002R,\u0010\u0096\u0002\u001a\u00030ø\u00012\b\u0010\u0096\u0002\u001a\u00030ø\u00018V@WX\u0096\u000e¢\u0006\u0010\u001a\u0006\b\u0097\u0002\u0010\u0098\u0002\"\u0006\b\u0099\u0002\u0010\u009a\u0002R\u0019\u0010\u009d\u0002\u001a\u0004\u0018\u00010?8VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u009b\u0002\u0010\u009c\u0002R\u0019\u0010\u009f\u0002\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u009e\u0002\u0010\u0084\u0001R\u0019\u0010¡\u0002\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004¢\u0006\b\u001a\u0006\b \u0002\u0010\u0084\u0001R\u0017\u0010¤\u0002\u001a\u00020\u00148BX\u0082\u0004¢\u0006\b\u001a\u0006\b¢\u0002\u0010£\u0002¨\u0006¨\u0002"}, m3159d2 = {"Landroidx/navigation/NavController;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroidx/navigation/NavBackStackEntry;", "child", "unlinkChildFromParent$navigation_runtime_release", "(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;", "unlinkChildFromParent", "Landroidx/navigation/NavController$OnDestinationChangedListener;", "listener", "", "addOnDestinationChangedListener", "(Landroidx/navigation/NavController$OnDestinationChangedListener;)V", "removeOnDestinationChangedListener", "", "popBackStack", "()Z", "", "destinationId", "inclusive", "(IZ)Z", "saveState", "(IZZ)Z", "", "route", "(Ljava/lang/String;ZZ)Z", ExifInterface.GPS_DIRECTION_TRUE, "(ZZ)Z", "(Ljava/lang/Object;ZZ)Z", "popUpTo", "Lkotlin/Function0;", "onComplete", "popBackStackFromNavigator$navigation_runtime_release", "(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/functions/Function0;)V", "popBackStackFromNavigator", "clearBackStack", "(Ljava/lang/String;)Z", "(I)Z", "(Ljava/lang/Object;)Z", "navigateUp", "updateBackStackLifecycle$navigation_runtime_release", "()V", "updateBackStackLifecycle", "", "populateVisibleEntries$navigation_runtime_release", "()Ljava/util/List;", "populateVisibleEntries", "graphResId", "setGraph", "(I)V", "Landroid/os/Bundle;", "startDestinationArgs", "(ILandroid/os/Bundle;)V", "Landroidx/navigation/NavGraph;", "graph", "(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "handleDeepLink", "(Landroid/content/Intent;)Z", "Landroidx/navigation/NavDestination;", "matchingDest", "findDestination", "(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;", "searchChildren", "findDestinationComprehensive", "(Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;", "(Ljava/lang/String;)Landroidx/navigation/NavDestination;", "resId", "navigate", "args", "Landroidx/navigation/NavOptions;", "navOptions", "(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V", "Landroidx/navigation/Navigator$Extras;", "navigatorExtras", "(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V", "Landroid/net/Uri;", "deepLink", "(Landroid/net/Uri;)V", "(Landroid/net/Uri;Landroidx/navigation/NavOptions;)V", "(Landroid/net/Uri;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V", "Landroidx/navigation/NavDeepLinkRequest;", "request", "(Landroidx/navigation/NavDeepLinkRequest;)V", "(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;)V", "(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V", "Landroidx/navigation/NavDirections;", "directions", "(Landroidx/navigation/NavDirections;)V", "(Landroidx/navigation/NavDirections;Landroidx/navigation/NavOptions;)V", "(Landroidx/navigation/NavDirections;Landroidx/navigation/Navigator$Extras;)V", "Lkotlin/Function1;", "Landroidx/navigation/NavOptionsBuilder;", "Lkotlin/ExtensionFunctionType;", "builder", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "(Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "(Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V", "Landroidx/navigation/NavDeepLinkBuilder;", "createDeepLink", "()Landroidx/navigation/NavDeepLinkBuilder;", "()Landroid/os/Bundle;", "navState", "restoreState", "(Landroid/os/Bundle;)V", "Landroidx/lifecycle/LifecycleOwner;", "owner", "setLifecycleOwner", "(Landroidx/lifecycle/LifecycleOwner;)V", "Landroidx/activity/OnBackPressedDispatcher;", "dispatcher", "setOnBackPressedDispatcher", "(Landroidx/activity/OnBackPressedDispatcher;)V", "enabled", "enableOnBackPressed", "(Z)V", "Landroidx/lifecycle/ViewModelStore;", "viewModelStore", "setViewModelStore", "(Landroidx/lifecycle/ViewModelStore;)V", "navGraphId", "Landroidx/lifecycle/ViewModelStoreOwner;", "getViewModelStoreOwner", "(I)Landroidx/lifecycle/ViewModelStoreOwner;", "getBackStackEntry", "(I)Landroidx/navigation/NavBackStackEntry;", "(Ljava/lang/String;)Landroidx/navigation/NavBackStackEntry;", "()Landroidx/navigation/NavBackStackEntry;", "(Ljava/lang/Object;)Landroidx/navigation/NavBackStackEntry;", "parent", "linkChildToParent", "(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V", "Landroidx/navigation/Navigator;", "entries", "Lkotlin/ParameterName;", "name", "backStackEntry", "handler", "navigateInternal", "(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lkotlin/jvm/functions/Function1;)V", "popBackStackInternal", "(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;)V", "popOperations", "foundDestination", "executePopOperations", "(Ljava/util/List;Landroidx/navigation/NavDestination;ZZ)Z", "Lkotlin/collections/ArrayDeque;", "Landroidx/navigation/NavBackStackEntryState;", "savedState", "popEntryFromBackStack", "(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V", "clearBackStackInternal", "tryRelaunchUpToExplicitStack", "tryRelaunchUpToGeneratedStack", "dispatchOnDestinationChanged", "onGraphCreated", "", "findInvalidDestinationDisplayNameInDeepLink", "([I)Ljava/lang/String;", "getTopGraph", "(Lkotlin/collections/ArrayDeque;)Landroidx/navigation/NavGraph;", "generateRouteFilled", "(Ljava/lang/Object;)Ljava/lang/String;", "node", "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V", "launchSingleTopInternal", "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Z", "id", "restoreStateInternal", "(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z", "executeRestoreState", "(Ljava/util/List;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z", "backStackState", "instantiateBackStack", "(Lkotlin/collections/ArrayDeque;)Ljava/util/List;", "finalArgs", "restoredEntries", "addEntryToBackStack", "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V", "updateOnBackPressedCallbackEnabled", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Landroid/app/Activity;", "activity", "Landroid/app/Activity;", "Landroidx/navigation/NavInflater;", "inflater", "Landroidx/navigation/NavInflater;", "_graph", "Landroidx/navigation/NavGraph;", "navigatorStateToRestore", "Landroid/os/Bundle;", "", "Landroid/os/Parcelable;", "backStackToRestore", "[Landroid/os/Parcelable;", "deepLinkHandled", "Z", "backQueue", "Lkotlin/collections/ArrayDeque;", "Ly8/m;", "_currentBackStack", "Ly8/m;", "Ly8/t;", "currentBackStack", "Ly8/t;", "getCurrentBackStack", "()Ly8/t;", "_visibleEntries", "visibleEntries", "getVisibleEntries", "", "childToParentEntries", "Ljava/util/Map;", "Ljava/util/concurrent/atomic/AtomicInteger;", "parentToChildCount", "backStackMap", "backStackStates", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "onBackPressedDispatcher", "Landroidx/activity/OnBackPressedDispatcher;", "Landroidx/navigation/NavControllerViewModel;", "viewModel", "Landroidx/navigation/NavControllerViewModel;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "onDestinationChangedListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Landroidx/lifecycle/Lifecycle$State;", "hostLifecycleState", "Landroidx/lifecycle/Lifecycle$State;", "getHostLifecycleState$navigation_runtime_release", "()Landroidx/lifecycle/Lifecycle$State;", "setHostLifecycleState$navigation_runtime_release", "(Landroidx/lifecycle/Lifecycle$State;)V", "Landroidx/lifecycle/LifecycleObserver;", "lifecycleObserver", "Landroidx/lifecycle/LifecycleObserver;", "Landroidx/activity/OnBackPressedCallback;", "onBackPressedCallback", "Landroidx/activity/OnBackPressedCallback;", "enableOnBackPressedCallback", "Landroidx/navigation/NavigatorProvider;", "_navigatorProvider", "Landroidx/navigation/NavigatorProvider;", "Landroidx/navigation/NavController$NavControllerNavigatorState;", "navigatorState", "addToBackStackHandler", "Lkotlin/jvm/functions/Function1;", "popFromBackStackHandler", "entrySavedState", "dispatchReentrantCount", "I", "", "backStackEntriesToDispatch", "Ljava/util/List;", "navInflater$delegate", "Lkotlin/Lazy;", "getNavInflater", "()Landroidx/navigation/NavInflater;", "navInflater", "Ly8/l;", "_currentBackStackEntryFlow", "Ly8/l;", "Ly8/f;", "currentBackStackEntryFlow", "Ly8/f;", "getCurrentBackStackEntryFlow", "()Ly8/f;", "getGraph", "()Landroidx/navigation/NavGraph;", "(Landroidx/navigation/NavGraph;)V", "navigatorProvider", "getNavigatorProvider", "()Landroidx/navigation/NavigatorProvider;", "setNavigatorProvider", "(Landroidx/navigation/NavigatorProvider;)V", "getCurrentDestination", "()Landroidx/navigation/NavDestination;", "currentDestination", "getCurrentBackStackEntry", "currentBackStackEntry", "getPreviousBackStackEntry", "previousBackStackEntry", "getDestinationCountOnBackStack", "()I", "destinationCountOnBackStack", "Companion", "NavControllerNavigatorState", "OnDestinationChangedListener", "navigation-runtime_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 7 Uri.kt\nandroidx/core/net/UriKt\n+ 8 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,2927:1\n537#1,10:3077\n179#2,2:2928\n1313#2,2:2938\n1313#2,2:2940\n179#2,2:3075\n1#3:2930\n146#4:2931\n533#5,6:2932\n1855#5,2:2942\n1855#5,2:2944\n1855#5,2:2946\n1855#5,2:2948\n1864#5,3:2950\n1774#5,4:2953\n1855#5:2957\n766#5:2958\n857#5,2:2959\n1856#5:2961\n766#5:2962\n857#5,2:2963\n766#5:2965\n857#5,2:2966\n1855#5,2:2968\n1855#5:2970\n1789#5,3:2971\n1856#5:2974\n819#5:2982\n847#5,2:2983\n1855#5:2985\n1856#5:2993\n1238#5,4:2996\n1855#5,2:3000\n1855#5,2:3002\n378#5,7:3004\n1549#5:3011\n1620#5,3:3012\n1855#5,2:3015\n1855#5,2:3017\n819#5:3019\n847#5,2:3020\n1855#5,2:3022\n1855#5,2:3024\n533#5,6:3026\n533#5,6:3032\n533#5,6:3038\n1855#5,2:3044\n1855#5,2:3046\n1864#5,3:3049\n1855#5,2:3055\n533#5,6:3057\n533#5,6:3063\n533#5,6:3069\n372#6,7:2975\n372#6,7:2986\n453#6:2994\n403#6:2995\n29#7:3048\n13404#8,3:3052\n*S KotlinDebug\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController\n*L\n-1#1:3077,10\n86#1:2928,2\n724#1:2938,2\n745#1:2940,2\n2810#1:3075,2\n169#1:2931\n662#1:2932,6\n902#1:2942,2\n905#1:2944,2\n911#1:2946,2\n913#1:2948,2\n992#1:2950,3\n1054#1:2953,4\n1198#1:2957\n1200#1:2958\n1200#1:2959,2\n1198#1:2961\n1208#1:2962\n1208#1:2963,2\n1211#1:2965\n1211#1:2966,2\n1282#1:2968,2\n1296#1:2970\n1300#1:2971,3\n1296#1:2974\n1359#1:2982\n1359#1:2983,2\n1360#1:2985\n1360#1:2993\n1711#1:2996,4\n1991#1:3000,2\n2054#1:3002,2\n2064#1:3004,7\n2073#1:3011\n2073#1:3012,3\n2090#1:3015,2\n2100#1:3017,2\n2167#1:3019\n2167#1:3020,2\n2171#1:3022,2\n2215#1:3024,2\n2257#1:3026,6\n2289#1:3032,6\n2318#1:3038,6\n2332#1:3044,2\n2348#1:3046,2\n2563#1:3049,3\n2604#1:3055,2\n2704#1:3057,6\n2725#1:3063,6\n2751#1:3069,6\n1346#1:2975,7\n1362#1:2986,7\n1711#1:2994\n1711#1:2995\n2441#1:3048\n2601#1:3052,3\n*E\n"})
public class NavController {
    private static final String KEY_BACK_STACK = "android-support-nav:controller:backStack";
    private static final String KEY_BACK_STACK_DEST_IDS = "android-support-nav:controller:backStackDestIds";
    private static final String KEY_BACK_STACK_IDS = "android-support-nav:controller:backStackIds";
    private static final String KEY_BACK_STACK_STATES_IDS = "android-support-nav:controller:backStackStates";
    private static final String KEY_BACK_STACK_STATES_PREFIX = "android-support-nav:controller:backStackStates:";

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String KEY_DEEP_LINK_ARGS = "android-support-nav:controller:deepLinkArgs";

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String KEY_DEEP_LINK_EXTRAS = "android-support-nav:controller:deepLinkExtras";

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String KEY_DEEP_LINK_HANDLED = "android-support-nav:controller:deepLinkHandled";

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String KEY_DEEP_LINK_IDS = "android-support-nav:controller:deepLinkIds";
    public static final String KEY_DEEP_LINK_INTENT = "android-support-nav:controller:deepLinkIntent";
    private static final String KEY_NAVIGATOR_STATE = "android-support-nav:controller:navigatorState";
    private static final String KEY_NAVIGATOR_STATE_NAMES = "android-support-nav:controller:navigatorState:names";
    private static final String TAG = "NavController";
    private final InterfaceC3676m _currentBackStack;
    private final InterfaceC3675l _currentBackStackEntryFlow;
    private NavGraph _graph;
    private NavigatorProvider _navigatorProvider;
    private final InterfaceC3676m _visibleEntries;
    private Activity activity;
    private Function1<? super NavBackStackEntry, Unit> addToBackStackHandler;
    private final ArrayDeque<NavBackStackEntry> backQueue;
    private final List<NavBackStackEntry> backStackEntriesToDispatch;
    private final Map<Integer, String> backStackMap;
    private final Map<String, ArrayDeque<NavBackStackEntryState>> backStackStates;
    private Parcelable[] backStackToRestore;
    private final Map<NavBackStackEntry, NavBackStackEntry> childToParentEntries;
    private final Context context;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    private final InterfaceC3683t currentBackStack;
    private final InterfaceC3669f currentBackStackEntryFlow;
    private boolean deepLinkHandled;
    private int dispatchReentrantCount;
    private boolean enableOnBackPressedCallback;
    private final Map<NavBackStackEntry, Boolean> entrySavedState;
    private Lifecycle.State hostLifecycleState;
    private NavInflater inflater;
    private final LifecycleObserver lifecycleObserver;
    private LifecycleOwner lifecycleOwner;

    /* JADX INFO: renamed from: navInflater$delegate, reason: from kotlin metadata */
    private final Lazy navInflater;
    private final Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> navigatorState;
    private Bundle navigatorStateToRestore;
    private final OnBackPressedCallback onBackPressedCallback;
    private OnBackPressedDispatcher onBackPressedDispatcher;
    private final CopyOnWriteArrayList<OnDestinationChangedListener> onDestinationChangedListeners;
    private final Map<NavBackStackEntry, AtomicInteger> parentToChildCount;
    private Function1<? super NavBackStackEntry, Unit> popFromBackStackHandler;
    private NavControllerViewModel viewModel;
    private final InterfaceC3683t visibleEntries;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static boolean deepLinkSaveState = true;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0019\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0019"}, m3159d2 = {"Landroidx/navigation/NavController$NavControllerNavigatorState;", "Landroidx/navigation/NavigatorState;", "navigator", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V", "getNavigator", "()Landroidx/navigation/Navigator;", "addInternal", "", "backStackEntry", "Landroidx/navigation/NavBackStackEntry;", "createBackStackEntry", "destination", "arguments", "Landroid/os/Bundle;", "markTransitionComplete", "entry", "pop", "popUpTo", "saveState", "", "popWithTransition", "prepareForTransition", "push", "navigation-runtime_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController$NavControllerNavigatorState\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2927:1\n146#2:2928\n146#2:2929\n2624#3,3:2930\n*S KotlinDebug\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController$NavControllerNavigatorState\n*L\n297#1:2928\n330#1:2929\n360#1:2930,3\n*E\n"})
    public final class NavControllerNavigatorState extends NavigatorState {
        private final Navigator<? extends NavDestination> navigator;
        final /* synthetic */ NavController this$0;

        public NavControllerNavigatorState(NavController navController, Navigator<? extends NavDestination> navigator) {
            navigator.getClass();
            this.this$0 = navController;
            this.navigator = navigator;
        }

        public final void addInternal(NavBackStackEntry backStackEntry) {
            backStackEntry.getClass();
            super.push(backStackEntry);
        }

        @Override // androidx.navigation.NavigatorState
        public NavBackStackEntry createBackStackEntry(NavDestination destination, Bundle arguments) {
            destination.getClass();
            return NavBackStackEntry.Companion.create$default(NavBackStackEntry.INSTANCE, this.this$0.getContext(), destination, arguments, this.this$0.getHostLifecycleState$navigation_runtime_release(), this.this$0.viewModel, null, null, 96, null);
        }

        public final Navigator<? extends NavDestination> getNavigator() {
            return this.navigator;
        }

        @Override // androidx.navigation.NavigatorState
        public void markTransitionComplete(NavBackStackEntry entry) {
            NavControllerViewModel navControllerViewModel;
            entry.getClass();
            boolean zAreEqual = Intrinsics.areEqual(this.this$0.entrySavedState.get(entry), Boolean.TRUE);
            super.markTransitionComplete(entry);
            this.this$0.entrySavedState.remove(entry);
            if (this.this$0.backQueue.contains(entry)) {
                if (getIsNavigating()) {
                    return;
                }
                this.this$0.updateBackStackLifecycle$navigation_runtime_release();
                ((C3685v) this.this$0._currentBackStack).m5909f(CollectionsKt.toMutableList((Collection) this.this$0.backQueue));
                ((C3685v) this.this$0._visibleEntries).m5909f(this.this$0.populateVisibleEntries$navigation_runtime_release());
                return;
            }
            this.this$0.unlinkChildFromParent$navigation_runtime_release(entry);
            if (entry.getLifecycle().getState().isAtLeast(Lifecycle.State.CREATED)) {
                entry.setMaxLifecycle(Lifecycle.State.DESTROYED);
            }
            ArrayDeque arrayDeque = this.this$0.backQueue;
            if (arrayDeque == null || !arrayDeque.isEmpty()) {
                Iterator<E> it = arrayDeque.iterator();
                while (it.hasNext()) {
                    if (Intrinsics.areEqual(((NavBackStackEntry) it.next()).getId(), entry.getId())) {
                    }
                }
                if (!zAreEqual && (navControllerViewModel = this.this$0.viewModel) != null) {
                    navControllerViewModel.clear(entry.getId());
                }
            } else if (!zAreEqual) {
                navControllerViewModel.clear(entry.getId());
            }
            this.this$0.updateBackStackLifecycle$navigation_runtime_release();
            ((C3685v) this.this$0._visibleEntries).m5909f(this.this$0.populateVisibleEntries$navigation_runtime_release());
        }

        @Override // androidx.navigation.NavigatorState
        public void pop(final NavBackStackEntry popUpTo, final boolean saveState) {
            popUpTo.getClass();
            Navigator navigator = this.this$0._navigatorProvider.getNavigator(popUpTo.getDestination().getNavigatorName());
            this.this$0.entrySavedState.put(popUpTo, Boolean.valueOf(saveState));
            boolean zAreEqual = Intrinsics.areEqual(navigator, this.navigator);
            NavController navController = this.this$0;
            if (!zAreEqual) {
                Object obj = navController.navigatorState.get(navigator);
                obj.getClass();
                ((NavControllerNavigatorState) obj).pop(popUpTo, saveState);
            } else {
                Function1 function1 = navController.popFromBackStackHandler;
                if (function1 == null) {
                    this.this$0.popBackStackFromNavigator$navigation_runtime_release(popUpTo, new Function0<Unit>() { // from class: androidx.navigation.NavController$NavControllerNavigatorState$pop$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            super/*androidx.navigation.NavigatorState*/.pop(popUpTo, saveState);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }
                    });
                } else {
                    function1.invoke(popUpTo);
                    super.pop(popUpTo, saveState);
                }
            }
        }

        @Override // androidx.navigation.NavigatorState
        public void popWithTransition(NavBackStackEntry popUpTo, boolean saveState) {
            popUpTo.getClass();
            super.popWithTransition(popUpTo, saveState);
        }

        @Override // androidx.navigation.NavigatorState
        public void prepareForTransition(NavBackStackEntry entry) {
            entry.getClass();
            super.prepareForTransition(entry);
            if (this.this$0.backQueue.contains(entry)) {
                entry.setMaxLifecycle(Lifecycle.State.STARTED);
            } else {
                C1929i.m3030l("Cannot transition entry that is not in the back stack");
            }
        }

        @Override // androidx.navigation.NavigatorState
        public void push(NavBackStackEntry backStackEntry) {
            backStackEntry.getClass();
            Navigator navigator = this.this$0._navigatorProvider.getNavigator(backStackEntry.getDestination().getNavigatorName());
            boolean zAreEqual = Intrinsics.areEqual(navigator, this.navigator);
            NavController navController = this.this$0;
            if (!zAreEqual) {
                Object obj = navController.navigatorState.get(navigator);
                if (obj != null) {
                    ((NavControllerNavigatorState) obj).push(backStackEntry);
                    return;
                } else {
                    C0674b.m839f(backStackEntry.getDestination().getNavigatorName(), "NavigatorBackStack for ", " should already be created");
                    return;
                }
            }
            Function1 function1 = navController.addToBackStackHandler;
            if (function1 != null) {
                function1.invoke(backStackEntry);
                addInternal(backStackEntry);
            } else {
                Log.i(NavController.TAG, "Ignoring add of destination " + backStackEntry.getDestination() + " outside of the call to navigate(). ");
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, m3159d2 = {"Landroidx/navigation/NavController$OnDestinationChangedListener;", "", "onDestinationChanged", "", "controller", "Landroidx/navigation/NavController;", "destination", "Landroidx/navigation/NavDestination;", "arguments", "Landroid/os/Bundle;", "navigation-runtime_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public interface OnDestinationChangedListener {
        void onDestinationChanged(NavController controller, NavDestination destination, Bundle arguments);
    }

    public NavController(Context context) {
        context.getClass();
        this.context = context;
        for (Object obj : SequencesKt.generateSequence(context, new Function1<Context, Context>() { // from class: androidx.navigation.NavController$activity$1
            @Override // kotlin.jvm.functions.Function1
            public final Context invoke(Context context2) {
                context2.getClass();
                if (context2 instanceof ContextWrapper) {
                    return ((ContextWrapper) context2).getBaseContext();
                }
                return null;
            }
        })) {
            if (((Context) obj) instanceof Activity) {
                this.activity = (Activity) obj;
                this.backQueue = new ArrayDeque<>();
                C3685v c3685vM5904a = AbstractC3681r.m5904a(CollectionsKt.emptyList());
                this._currentBackStack = c3685vM5904a;
                this.currentBackStack = new C3677n(c3685vM5904a);
                C3685v c3685vM5904a2 = AbstractC3681r.m5904a(CollectionsKt.emptyList());
                this._visibleEntries = c3685vM5904a2;
                this.visibleEntries = new C3677n(c3685vM5904a2);
                this.childToParentEntries = new LinkedHashMap();
                this.parentToChildCount = new LinkedHashMap();
                this.backStackMap = new LinkedHashMap();
                this.backStackStates = new LinkedHashMap();
                this.onDestinationChangedListeners = new CopyOnWriteArrayList<>();
                this.hostLifecycleState = Lifecycle.State.INITIALIZED;
                this.lifecycleObserver = new C0673a(0, this);
                this.onBackPressedCallback = new OnBackPressedCallback() { // from class: androidx.navigation.NavController$onBackPressedCallback$1
                    {
                        super(false);
                    }

                    @Override // androidx.activity.OnBackPressedCallback
                    public void handleOnBackPressed() {
                        this.this$0.popBackStack();
                    }
                };
                this.enableOnBackPressedCallback = true;
                this._navigatorProvider = new NavigatorProvider();
                this.navigatorState = new LinkedHashMap();
                this.entrySavedState = new LinkedHashMap();
                NavigatorProvider navigatorProvider = this._navigatorProvider;
                navigatorProvider.addNavigator(new NavGraphNavigator(navigatorProvider));
                this._navigatorProvider.addNavigator(new ActivityNavigator(this.context));
                this.backStackEntriesToDispatch = new ArrayList();
                this.navInflater = LazyKt.lazy(new Function0<NavInflater>() { // from class: androidx.navigation.NavController$navInflater$2
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final NavInflater invoke() {
                        NavInflater navInflater = this.this$0.inflater;
                        return navInflater == null ? new NavInflater(this.this$0.getContext(), this.this$0._navigatorProvider) : navInflater;
                    }
                });
                C3680q c3680q = new C3680q(1, 2);
                this._currentBackStackEntryFlow = c3680q;
                this.currentBackStackEntryFlow = new C2455p(15, c3680q);
            }
        }
        obj = null;
        this.activity = (Activity) obj;
        this.backQueue = new ArrayDeque<>();
        C3685v c3685vM5904a3 = AbstractC3681r.m5904a(CollectionsKt.emptyList());
        this._currentBackStack = c3685vM5904a3;
        this.currentBackStack = new C3677n(c3685vM5904a3);
        C3685v c3685vM5904a4 = AbstractC3681r.m5904a(CollectionsKt.emptyList());
        this._visibleEntries = c3685vM5904a4;
        this.visibleEntries = new C3677n(c3685vM5904a4);
        this.childToParentEntries = new LinkedHashMap();
        this.parentToChildCount = new LinkedHashMap();
        this.backStackMap = new LinkedHashMap();
        this.backStackStates = new LinkedHashMap();
        this.onDestinationChangedListeners = new CopyOnWriteArrayList<>();
        this.hostLifecycleState = Lifecycle.State.INITIALIZED;
        this.lifecycleObserver = new C0673a(0, this);
        this.onBackPressedCallback = new OnBackPressedCallback() { // from class: androidx.navigation.NavController$onBackPressedCallback$1
            {
                super(false);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                this.this$0.popBackStack();
            }
        };
        this.enableOnBackPressedCallback = true;
        this._navigatorProvider = new NavigatorProvider();
        this.navigatorState = new LinkedHashMap();
        this.entrySavedState = new LinkedHashMap();
        NavigatorProvider navigatorProvider2 = this._navigatorProvider;
        navigatorProvider2.addNavigator(new NavGraphNavigator(navigatorProvider2));
        this._navigatorProvider.addNavigator(new ActivityNavigator(this.context));
        this.backStackEntriesToDispatch = new ArrayList();
        this.navInflater = LazyKt.lazy(new Function0<NavInflater>() { // from class: androidx.navigation.NavController$navInflater$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final NavInflater invoke() {
                NavInflater navInflater = this.this$0.inflater;
                return navInflater == null ? new NavInflater(this.this$0.getContext(), this.this$0._navigatorProvider) : navInflater;
            }
        });
        C3680q c3680q2 = new C3680q(1, 2);
        this._currentBackStackEntryFlow = c3680q2;
        this.currentBackStackEntryFlow = new C2455p(15, c3680q2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addEntryToBackStack(NavDestination node, Bundle finalArgs, NavBackStackEntry backStackEntry, List<NavBackStackEntry> restoredEntries) {
        Bundle bundle;
        ArrayDeque<NavBackStackEntry> arrayDeque;
        NavDestination destination;
        List<NavBackStackEntry> list;
        NavGraph navGraph;
        NavBackStackEntry navBackStackEntryPrevious;
        NavBackStackEntry navBackStackEntryPrevious2;
        List<NavBackStackEntry> list2 = restoredEntries;
        NavDestination destination2 = backStackEntry.getDestination();
        if (!(destination2 instanceof FloatingWindow)) {
            while (!this.backQueue.isEmpty() && (this.backQueue.last().getDestination() instanceof FloatingWindow) && popBackStackInternal$default(this, this.backQueue.last().getDestination().getId(), true, false, 4, (Object) null)) {
            }
        }
        ArrayDeque arrayDeque2 = new ArrayDeque();
        NavBackStackEntry navBackStackEntry = null;
        if (node instanceof NavGraph) {
            NavDestination navDestination = destination2;
            while (true) {
                navDestination.getClass();
                NavGraph parent = navDestination.getParent();
                if (parent != null) {
                    ListIterator<NavBackStackEntry> listIterator = list2.listIterator(list2.size());
                    do {
                        if (!listIterator.hasPrevious()) {
                            navBackStackEntryPrevious2 = null;
                            break;
                        }
                        navBackStackEntryPrevious2 = listIterator.previous();
                    } while (!Intrinsics.areEqual(navBackStackEntryPrevious2.getDestination(), parent));
                    NavBackStackEntry navBackStackEntryCreate$default = navBackStackEntryPrevious2;
                    if (navBackStackEntryCreate$default == null) {
                        bundle = finalArgs;
                        destination = destination2;
                        navBackStackEntryCreate$default = NavBackStackEntry.Companion.create$default(NavBackStackEntry.INSTANCE, this.context, parent, bundle, getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null);
                    } else {
                        bundle = finalArgs;
                        destination = destination2;
                    }
                    arrayDeque2.addFirst(navBackStackEntryCreate$default);
                    if (this.backQueue.isEmpty() || this.backQueue.last().getDestination() != parent) {
                        list = restoredEntries;
                        arrayDeque = arrayDeque2;
                    } else {
                        list = restoredEntries;
                        arrayDeque = arrayDeque2;
                        popEntryFromBackStack$default(this, this.backQueue.last(), false, null, 6, null);
                    }
                } else {
                    bundle = finalArgs;
                    arrayDeque = arrayDeque2;
                    destination = destination2;
                    list = list2;
                }
                if (parent == null || parent == node) {
                    break;
                }
                list2 = list;
                navDestination = parent;
                arrayDeque2 = arrayDeque;
                destination2 = destination;
            }
        } else {
            bundle = finalArgs;
            arrayDeque = arrayDeque2;
            destination = destination2;
            list = list2;
            backStackEntry = backStackEntry;
        }
        NavDestination destination3 = arrayDeque.isEmpty() ? destination : ((NavBackStackEntry) arrayDeque.first()).getDestination();
        while (destination3 != null && findDestination(destination3.getId(), destination3) != destination3) {
            NavGraph parent2 = destination3.getParent();
            if (parent2 != null) {
                Bundle bundle2 = (bundle == null || !bundle.isEmpty()) ? bundle : null;
                ListIterator<NavBackStackEntry> listIterator2 = list.listIterator(list.size());
                do {
                    if (!listIterator2.hasPrevious()) {
                        navBackStackEntryPrevious = null;
                        break;
                    }
                    navBackStackEntryPrevious = listIterator2.previous();
                } while (!Intrinsics.areEqual(navBackStackEntryPrevious.getDestination(), parent2));
                NavBackStackEntry navBackStackEntryCreate$default2 = navBackStackEntryPrevious;
                if (navBackStackEntryCreate$default2 == null) {
                    navGraph = parent2;
                    navBackStackEntryCreate$default2 = NavBackStackEntry.Companion.create$default(NavBackStackEntry.INSTANCE, this.context, navGraph, parent2.addInDefaultArgs(bundle2), getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null);
                } else {
                    navGraph = parent2;
                }
                arrayDeque.addFirst(navBackStackEntryCreate$default2);
            } else {
                navGraph = parent2;
            }
            destination3 = navGraph;
        }
        if (!arrayDeque.isEmpty()) {
            destination = ((NavBackStackEntry) arrayDeque.first()).getDestination();
        }
        while (!this.backQueue.isEmpty() && (this.backQueue.last().getDestination() instanceof NavGraph)) {
            NavDestination destination4 = this.backQueue.last().getDestination();
            destination4.getClass();
            if (((NavGraph) destination4).getNodes().get(destination.getId()) != null) {
                break;
            } else {
                popEntryFromBackStack$default(this, this.backQueue.last(), false, null, 6, null);
            }
        }
        NavBackStackEntry navBackStackEntryFirstOrNull = this.backQueue.firstOrNull();
        if (navBackStackEntryFirstOrNull == null) {
            navBackStackEntryFirstOrNull = (NavBackStackEntry) arrayDeque.firstOrNull();
        }
        if (!Intrinsics.areEqual(navBackStackEntryFirstOrNull != null ? navBackStackEntryFirstOrNull.getDestination() : null, this._graph)) {
            ListIterator<NavBackStackEntry> listIterator3 = list.listIterator(list.size());
            while (listIterator3.hasPrevious()) {
                NavBackStackEntry navBackStackEntryPrevious3 = listIterator3.previous();
                NavDestination destination5 = navBackStackEntryPrevious3.getDestination();
                NavGraph navGraph2 = this._graph;
                navGraph2.getClass();
                if (Intrinsics.areEqual(destination5, navGraph2)) {
                    navBackStackEntry = navBackStackEntryPrevious3;
                    break;
                }
            }
            NavBackStackEntry navBackStackEntryCreate$default3 = navBackStackEntry;
            if (navBackStackEntryCreate$default3 == null) {
                NavBackStackEntry.Companion companion = NavBackStackEntry.INSTANCE;
                Context context = this.context;
                NavGraph navGraph3 = this._graph;
                navGraph3.getClass();
                NavGraph navGraph4 = this._graph;
                navGraph4.getClass();
                navBackStackEntryCreate$default3 = NavBackStackEntry.Companion.create$default(companion, context, navGraph3, navGraph4.addInDefaultArgs(bundle), getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null);
            }
            arrayDeque.addFirst(navBackStackEntryCreate$default3);
        }
        for (NavBackStackEntry navBackStackEntry2 : arrayDeque) {
            NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(this._navigatorProvider.getNavigator(navBackStackEntry2.getDestination().getNavigatorName()));
            if (navControllerNavigatorState == null) {
                C0674b.m839f(node.getNavigatorName(), "NavigatorBackStack for ", " should already be created");
                return;
            }
            navControllerNavigatorState.addInternal(navBackStackEntry2);
        }
        this.backQueue.addAll(arrayDeque);
        this.backQueue.add(backStackEntry);
        for (NavBackStackEntry navBackStackEntry3 : CollectionsKt.plus((Collection<? extends NavBackStackEntry>) arrayDeque, backStackEntry)) {
            NavGraph parent3 = navBackStackEntry3.getDestination().getParent();
            if (parent3 != null) {
                linkChildToParent(navBackStackEntry3, getBackStackEntry(parent3.getId()));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void addEntryToBackStack$default(NavController navController, NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List list, int i10, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: addEntryToBackStack");
            return;
        }
        if ((i10 & 8) != 0) {
            list = CollectionsKt.emptyList();
        }
        navController.addEntryToBackStack(navDestination, bundle, navBackStackEntry, list);
    }

    @MainThread
    private final boolean clearBackStackInternal(@IdRes int destinationId) {
        Iterator<T> it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            ((NavControllerNavigatorState) it.next()).setNavigating(true);
        }
        boolean zRestoreStateInternal = restoreStateInternal(destinationId, null, NavOptionsBuilderKt.navOptions(new Function1<NavOptionsBuilder, Unit>() { // from class: androidx.navigation.NavController$clearBackStackInternal$restored$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NavOptionsBuilder navOptionsBuilder) {
                invoke2(navOptionsBuilder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(NavOptionsBuilder navOptionsBuilder) {
                navOptionsBuilder.getClass();
                navOptionsBuilder.setRestoreState(true);
            }
        }), null);
        Iterator<T> it2 = this.navigatorState.values().iterator();
        while (it2.hasNext()) {
            ((NavControllerNavigatorState) it2.next()).setNavigating(false);
        }
        return zRestoreStateInternal && popBackStackInternal(destinationId, true, false);
    }

    private final boolean dispatchOnDestinationChanged() {
        while (!this.backQueue.isEmpty() && (this.backQueue.last().getDestination() instanceof NavGraph)) {
            popEntryFromBackStack$default(this, this.backQueue.last(), false, null, 6, null);
        }
        NavBackStackEntry navBackStackEntryLastOrNull = this.backQueue.lastOrNull();
        if (navBackStackEntryLastOrNull != null) {
            this.backStackEntriesToDispatch.add(navBackStackEntryLastOrNull);
        }
        this.dispatchReentrantCount++;
        updateBackStackLifecycle$navigation_runtime_release();
        int i10 = this.dispatchReentrantCount - 1;
        this.dispatchReentrantCount = i10;
        if (i10 == 0) {
            List<NavBackStackEntry> mutableList = CollectionsKt.toMutableList((Collection) this.backStackEntriesToDispatch);
            this.backStackEntriesToDispatch.clear();
            for (NavBackStackEntry navBackStackEntry : mutableList) {
                Iterator<OnDestinationChangedListener> it = this.onDestinationChangedListeners.iterator();
                while (it.hasNext()) {
                    it.next().onDestinationChanged(this, navBackStackEntry.getDestination(), navBackStackEntry.getArguments());
                }
                this._currentBackStackEntryFlow.mo5888b(navBackStackEntry);
            }
            ((C3685v) this._currentBackStack).m5909f(CollectionsKt.toMutableList((Collection) this.backQueue));
            ((C3685v) this._visibleEntries).m5909f(populateVisibleEntries$navigation_runtime_release());
        }
        return navBackStackEntryLastOrNull != null;
    }

    @JvmStatic
    @NavDeepLinkSaveStateControl
    public static final void enableDeepLinkSaveState(boolean z9) {
        INSTANCE.enableDeepLinkSaveState(z9);
    }

    private final boolean executePopOperations(List<? extends Navigator<?>> popOperations, NavDestination foundDestination, boolean inclusive, boolean saveState) {
        final NavController navController;
        final boolean z9;
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        final ArrayDeque<NavBackStackEntryState> arrayDeque = new ArrayDeque<>();
        Iterator<? extends Navigator<?>> it = popOperations.iterator();
        while (true) {
            if (!it.hasNext()) {
                navController = this;
                z9 = saveState;
                break;
            }
            Navigator<? extends NavDestination> navigator = (Navigator) it.next();
            final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            navController = this;
            z9 = saveState;
            popBackStackInternal(navigator, this.backQueue.last(), z9, new Function1<NavBackStackEntry, Unit>() { // from class: androidx.navigation.NavController.executePopOperations.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(NavBackStackEntry navBackStackEntry) {
                    navBackStackEntry.getClass();
                    booleanRef2.element = true;
                    booleanRef.element = true;
                    navController.popEntryFromBackStack(navBackStackEntry, z9, arrayDeque);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NavBackStackEntry navBackStackEntry) {
                    invoke2(navBackStackEntry);
                    return Unit.INSTANCE;
                }
            });
            if (!booleanRef2.element) {
                break;
            }
            saveState = z9;
        }
        if (z9) {
            if (!inclusive) {
                for (NavDestination navDestination : SequencesKt.takeWhile(SequencesKt.generateSequence(foundDestination, new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavController.executePopOperations.2
                    @Override // kotlin.jvm.functions.Function1
                    public final NavDestination invoke(NavDestination navDestination2) {
                        navDestination2.getClass();
                        NavGraph parent = navDestination2.getParent();
                        if (parent == null || parent.getStartDestId() != navDestination2.getId()) {
                            return null;
                        }
                        return navDestination2.getParent();
                    }
                }), new Function1<NavDestination, Boolean>() { // from class: androidx.navigation.NavController.executePopOperations.3
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(NavDestination navDestination2) {
                        navDestination2.getClass();
                        return Boolean.valueOf(!NavController.this.backStackMap.containsKey(Integer.valueOf(navDestination2.getId())));
                    }
                })) {
                    Map<Integer, String> map = navController.backStackMap;
                    Integer numValueOf = Integer.valueOf(navDestination.getId());
                    NavBackStackEntryState navBackStackEntryStateFirstOrNull = arrayDeque.firstOrNull();
                    map.put(numValueOf, navBackStackEntryStateFirstOrNull != null ? navBackStackEntryStateFirstOrNull.getId() : null);
                }
            }
            if (!arrayDeque.isEmpty()) {
                NavBackStackEntryState navBackStackEntryStateFirst = arrayDeque.first();
                Iterator it2 = SequencesKt.takeWhile(SequencesKt.generateSequence(findDestination$default(this, navBackStackEntryStateFirst.getDestinationId(), null, 2, null), new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavController.executePopOperations.5
                    @Override // kotlin.jvm.functions.Function1
                    public final NavDestination invoke(NavDestination navDestination2) {
                        navDestination2.getClass();
                        NavGraph parent = navDestination2.getParent();
                        if (parent == null || parent.getStartDestId() != navDestination2.getId()) {
                            return null;
                        }
                        return navDestination2.getParent();
                    }
                }), new Function1<NavDestination, Boolean>() { // from class: androidx.navigation.NavController.executePopOperations.6
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(NavDestination navDestination2) {
                        navDestination2.getClass();
                        return Boolean.valueOf(!NavController.this.backStackMap.containsKey(Integer.valueOf(navDestination2.getId())));
                    }
                }).iterator();
                while (it2.hasNext()) {
                    navController.backStackMap.put(Integer.valueOf(((NavDestination) it2.next()).getId()), navBackStackEntryStateFirst.getId());
                }
                if (navController.backStackMap.values().contains(navBackStackEntryStateFirst.getId())) {
                    navController.backStackStates.put(navBackStackEntryStateFirst.getId(), arrayDeque);
                }
            }
        }
        updateOnBackPressedCallbackEnabled();
        return booleanRef.element;
    }

    private final boolean executeRestoreState(final List<NavBackStackEntry> entries, final Bundle args, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        NavBackStackEntry navBackStackEntry;
        NavDestination destination;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : entries) {
            if (!(((NavBackStackEntry) obj).getDestination() instanceof NavGraph)) {
                arrayList2.add(obj);
            }
        }
        int size = arrayList2.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj2 = arrayList2.get(i11);
            i11++;
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj2;
            List list = (List) CollectionsKt.lastOrNull((List) arrayList);
            if (Intrinsics.areEqual((list == null || (navBackStackEntry = (NavBackStackEntry) CollectionsKt.last(list)) == null || (destination = navBackStackEntry.getDestination()) == null) ? null : destination.getNavigatorName(), navBackStackEntry2.getDestination().getNavigatorName())) {
                list.add(navBackStackEntry2);
            } else {
                arrayList.add(CollectionsKt.mutableListOf(navBackStackEntry2));
            }
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        int size2 = arrayList.size();
        while (i10 < size2) {
            Object obj3 = arrayList.get(i10);
            i10++;
            List<NavBackStackEntry> list2 = (List) obj3;
            Navigator<? extends NavDestination> navigator = this._navigatorProvider.getNavigator(((NavBackStackEntry) CollectionsKt.first((List) list2)).getDestination().getNavigatorName());
            final Ref.IntRef intRef = new Ref.IntRef();
            navigateInternal(navigator, list2, navOptions, navigatorExtras, new Function1<NavBackStackEntry, Unit>() { // from class: androidx.navigation.NavController.executeRestoreState.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(NavBackStackEntry navBackStackEntry3) {
                    List<NavBackStackEntry> listEmptyList;
                    navBackStackEntry3.getClass();
                    booleanRef.element = true;
                    int iIndexOf = entries.indexOf(navBackStackEntry3);
                    if (iIndexOf != -1) {
                        int i12 = iIndexOf + 1;
                        listEmptyList = entries.subList(intRef.element, i12);
                        intRef.element = i12;
                    } else {
                        listEmptyList = CollectionsKt.emptyList();
                    }
                    this.addEntryToBackStack(navBackStackEntry3.getDestination(), args, navBackStackEntry3, listEmptyList);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NavBackStackEntry navBackStackEntry3) {
                    invoke2(navBackStackEntry3);
                    return Unit.INSTANCE;
                }
            });
        }
        return booleanRef.element;
    }

    public static /* synthetic */ NavDestination findDestination$default(NavController navController, int i10, NavDestination navDestination, int i11, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: findDestination");
            return null;
        }
        if ((i11 & 2) != 0) {
            navDestination = null;
        }
        return navController.findDestination(i10, navDestination);
    }

    public static /* synthetic */ NavDestination findDestinationComprehensive$default(NavController navController, NavDestination navDestination, int i10, boolean z9, NavDestination navDestination2, int i11, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: findDestinationComprehensive");
            return null;
        }
        if ((i11 & 4) != 0) {
            navDestination2 = null;
        }
        return navController.findDestinationComprehensive(navDestination, i10, z9, navDestination2);
    }

    private final String findInvalidDestinationDisplayNameInDeepLink(int[] deepLink) {
        NavGraph navGraph;
        NavGraph navGraph2 = this._graph;
        int length = deepLink.length;
        int i10 = 0;
        while (true) {
            NavDestination navDestinationFindNode = null;
            if (i10 >= length) {
                return null;
            }
            int i11 = deepLink[i10];
            if (i10 == 0) {
                NavGraph navGraph3 = this._graph;
                navGraph3.getClass();
                if (navGraph3.getId() == i11) {
                    navDestinationFindNode = this._graph;
                }
            } else {
                navGraph2.getClass();
                navDestinationFindNode = navGraph2.findNode(i11);
            }
            if (navDestinationFindNode == null) {
                return NavDestination.INSTANCE.getDisplayName(this.context, i11);
            }
            if (i10 != deepLink.length - 1 && (navDestinationFindNode instanceof NavGraph)) {
                while (true) {
                    navGraph = (NavGraph) navDestinationFindNode;
                    navGraph.getClass();
                    if (!(navGraph.findNode(navGraph.getStartDestId()) instanceof NavGraph)) {
                        break;
                    }
                    navDestinationFindNode = navGraph.findNode(navGraph.getStartDestId());
                }
                navGraph2 = navGraph;
            }
            i10++;
        }
    }

    private final <T> String generateRouteFilled(T route) {
        NavDestination navDestinationFindDestinationComprehensive$default = findDestinationComprehensive$default(this, getGraph(), RouteSerializerKt.generateHashCode(AbstractC1031d.m1289s(Reflection.getOrCreateKotlinClass(route.getClass()))), true, null, 4, null);
        if (navDestinationFindDestinationComprehensive$default == null) {
            C0674b.m841h("Destination with route ", Reflection.getOrCreateKotlinClass(route.getClass()).getSimpleName(), " cannot be found in navigation graph ", this._graph);
            return null;
        }
        Map<String, NavArgument> arguments = navDestinationFindDestinationComprehensive$default.getArguments();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(arguments.size()));
        Iterator<T> it = arguments.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).getType());
        }
        return RouteSerializerKt.generateRouteWithArgs(route, linkedHashMap);
    }

    private final int getDestinationCountOnBackStack() {
        ArrayDeque<NavBackStackEntry> arrayDeque = this.backQueue;
        int i10 = 0;
        if (arrayDeque != null && arrayDeque.isEmpty()) {
            return 0;
        }
        Iterator<NavBackStackEntry> it = arrayDeque.iterator();
        while (it.hasNext()) {
            if (!(it.next().getDestination() instanceof NavGraph) && (i10 = i10 + 1) < 0) {
                CollectionsKt.throwCountOverflow();
            }
        }
        return i10;
    }

    private final NavGraph getTopGraph(ArrayDeque<NavBackStackEntry> arrayDeque) {
        NavDestination destination;
        NavBackStackEntry navBackStackEntryLastOrNull = arrayDeque.lastOrNull();
        if (navBackStackEntryLastOrNull == null || (destination = navBackStackEntryLastOrNull.getDestination()) == null) {
            destination = this._graph;
            destination.getClass();
        }
        if (destination instanceof NavGraph) {
            return (NavGraph) destination;
        }
        NavGraph parent = destination.getParent();
        parent.getClass();
        return parent;
    }

    private final List<NavBackStackEntry> instantiateBackStack(ArrayDeque<NavBackStackEntryState> backStackState) {
        NavDestination graph;
        ArrayList arrayList = new ArrayList();
        NavBackStackEntry navBackStackEntryLastOrNull = this.backQueue.lastOrNull();
        if (navBackStackEntryLastOrNull == null || (graph = navBackStackEntryLastOrNull.getDestination()) == null) {
            graph = getGraph();
        }
        if (backStackState != null) {
            NavDestination navDestination = graph;
            for (NavBackStackEntryState navBackStackEntryState : backStackState) {
                NavDestination navDestinationFindDestinationComprehensive$default = findDestinationComprehensive$default(this, navDestination, navBackStackEntryState.getDestinationId(), true, null, 4, null);
                if (navDestinationFindDestinationComprehensive$default == null) {
                    C0674b.m850q("Restore State failed: destination ", NavDestination.INSTANCE.getDisplayName(this.context, navBackStackEntryState.getDestinationId()), " cannot be found from the current destination ", navDestination);
                    return null;
                }
                arrayList.add(navBackStackEntryState.instantiate(this.context, navDestinationFindDestinationComprehensive$default, getHostLifecycleState$navigation_runtime_release(), this.viewModel));
                navDestination = navDestinationFindDestinationComprehensive$default;
            }
        }
        return arrayList;
    }

    private final boolean launchSingleTopInternal(NavDestination node, Bundle args) {
        int iNextIndex;
        NavDestination destination;
        NavBackStackEntry currentBackStackEntry = getCurrentBackStackEntry();
        ArrayDeque<NavBackStackEntry> arrayDeque = this.backQueue;
        ListIterator<NavBackStackEntry> listIterator = arrayDeque.listIterator(arrayDeque.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                iNextIndex = -1;
                break;
            }
            if (listIterator.previous().getDestination() == node) {
                iNextIndex = listIterator.nextIndex();
                break;
            }
        }
        if (iNextIndex == -1) {
            return false;
        }
        if (node instanceof NavGraph) {
            List list = SequencesKt.toList(SequencesKt.map(NavGraph.INSTANCE.childHierarchy((NavGraph) node), new Function1<NavDestination, Integer>() { // from class: androidx.navigation.NavController$launchSingleTopInternal$childHierarchyId$1
                @Override // kotlin.jvm.functions.Function1
                public final Integer invoke(NavDestination navDestination) {
                    navDestination.getClass();
                    return Integer.valueOf(navDestination.getId());
                }
            }));
            if (this.backQueue.size() - iNextIndex != list.size()) {
                return false;
            }
            ArrayDeque<NavBackStackEntry> arrayDeque2 = this.backQueue;
            List<NavBackStackEntry> listSubList = arrayDeque2.subList(iNextIndex, arrayDeque2.size());
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSubList, 10));
            Iterator<T> it = listSubList.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((NavBackStackEntry) it.next()).getDestination().getId()));
            }
            if (!Intrinsics.areEqual(arrayList, list)) {
                return false;
            }
        } else if (currentBackStackEntry == null || (destination = currentBackStackEntry.getDestination()) == null || node.getId() != destination.getId()) {
            return false;
        }
        ArrayDeque<NavBackStackEntry> arrayDeque3 = new ArrayDeque();
        while (CollectionsKt.getLastIndex(this.backQueue) >= iNextIndex) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) CollectionsKt.removeLast(this.backQueue);
            unlinkChildFromParent$navigation_runtime_release(navBackStackEntry);
            arrayDeque3.addFirst(new NavBackStackEntry(navBackStackEntry, navBackStackEntry.getDestination().addInDefaultArgs(args)));
        }
        for (NavBackStackEntry navBackStackEntry2 : arrayDeque3) {
            NavGraph parent = navBackStackEntry2.getDestination().getParent();
            if (parent != null) {
                linkChildToParent(navBackStackEntry2, getBackStackEntry(parent.getId()));
            }
            this.backQueue.add(navBackStackEntry2);
        }
        for (NavBackStackEntry navBackStackEntry3 : arrayDeque3) {
            this._navigatorProvider.getNavigator(navBackStackEntry3.getDestination().getNavigatorName()).onLaunchSingleTop(navBackStackEntry3);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void lifecycleObserver$lambda$2(NavController navController, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        navController.getClass();
        lifecycleOwner.getClass();
        event.getClass();
        navController.hostLifecycleState = event.getTargetState();
        if (navController._graph != null) {
            Iterator it = CollectionsKt.toMutableList((Collection) navController.backQueue).iterator();
            while (it.hasNext()) {
                ((NavBackStackEntry) it.next()).handleLifecycleEvent(event);
            }
        }
    }

    private final void linkChildToParent(NavBackStackEntry child, NavBackStackEntry parent) {
        this.childToParentEntries.put(child, parent);
        if (this.parentToChildCount.get(parent) == null) {
            this.parentToChildCount.put(parent, new AtomicInteger(0));
        }
        AtomicInteger atomicInteger = this.parentToChildCount.get(parent);
        atomicInteger.getClass();
        atomicInteger.incrementAndGet();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0096  */
    @MainThread
    private final void navigate(final NavDestination node, Bundle args, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        boolean z9;
        boolean z10;
        boolean zPopBackStackInternal;
        Iterator<T> it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            ((NavControllerNavigatorState) it.next()).setNavigating(true);
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        if (navOptions == null) {
            z9 = false;
        } else {
            if (navOptions.getPopUpToRoute() != null) {
                String popUpToRoute = navOptions.getPopUpToRoute();
                popUpToRoute.getClass();
                zPopBackStackInternal = popBackStackInternal(popUpToRoute, navOptions.getPopUpToInclusive(), navOptions.getPopUpToSaveState());
            } else if (navOptions.getPopUpToRouteClass() != null) {
                KClass<?> popUpToRouteClass = navOptions.getPopUpToRouteClass();
                popUpToRouteClass.getClass();
                zPopBackStackInternal = popBackStackInternal(RouteSerializerKt.generateHashCode(AbstractC1031d.m1289s(popUpToRouteClass)), navOptions.getPopUpToInclusive(), navOptions.getPopUpToSaveState());
            } else if (navOptions.getPopUpToRouteObject() != null) {
                Object popUpToRouteObject = navOptions.getPopUpToRouteObject();
                popUpToRouteObject.getClass();
                zPopBackStackInternal = popBackStackInternal(popUpToRouteObject, navOptions.getPopUpToInclusive(), navOptions.getPopUpToSaveState());
            } else if (navOptions.getPopUpToId() != -1) {
                zPopBackStackInternal = popBackStackInternal(navOptions.getPopUpToId(), navOptions.getPopUpToInclusive(), navOptions.getPopUpToSaveState());
            } else {
                z9 = false;
            }
            z9 = zPopBackStackInternal;
        }
        final Bundle bundleAddInDefaultArgs = node.addInDefaultArgs(args);
        if (navOptions != null && navOptions.getRestoreState() && this.backStackMap.containsKey(Integer.valueOf(node.getId()))) {
            booleanRef.element = restoreStateInternal(node.getId(), bundleAddInDefaultArgs, navOptions, navigatorExtras);
            z10 = false;
        } else {
            z10 = navOptions != null && navOptions.getSingleTop() && launchSingleTopInternal(node, args);
            if (!z10) {
                navigateInternal(this._navigatorProvider.getNavigator(node.getNavigatorName()), CollectionsKt.listOf(NavBackStackEntry.Companion.create$default(NavBackStackEntry.INSTANCE, this.context, node, bundleAddInDefaultArgs, getHostLifecycleState$navigation_runtime_release(), this.viewModel, null, null, 96, null)), navOptions, navigatorExtras, new Function1<NavBackStackEntry, Unit>() { // from class: androidx.navigation.NavController.navigate.5
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(NavBackStackEntry navBackStackEntry) {
                        navBackStackEntry.getClass();
                        booleanRef.element = true;
                        NavController.addEntryToBackStack$default(this, node, bundleAddInDefaultArgs, navBackStackEntry, null, 8, null);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(NavBackStackEntry navBackStackEntry) {
                        invoke2(navBackStackEntry);
                        return Unit.INSTANCE;
                    }
                });
            }
        }
        updateOnBackPressedCallbackEnabled();
        Iterator<T> it2 = this.navigatorState.values().iterator();
        while (it2.hasNext()) {
            ((NavControllerNavigatorState) it2.next()).setNavigating(false);
        }
        if (z9 || booleanRef.element || z10) {
            dispatchOnDestinationChanged();
        } else {
            updateBackStackLifecycle$navigation_runtime_release();
        }
    }

    public static /* synthetic */ void navigate$default(NavController navController, String str, NavOptions navOptions, Navigator.Extras extras, int i10, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: navigate");
            return;
        }
        if ((i10 & 2) != 0) {
            navOptions = null;
        }
        if ((i10 & 4) != 0) {
            extras = null;
        }
        navController.navigate(str, navOptions, extras);
    }

    private final void navigateInternal(Navigator<? extends NavDestination> navigator, List<NavBackStackEntry> list, NavOptions navOptions, Navigator.Extras extras, Function1<? super NavBackStackEntry, Unit> function1) {
        this.addToBackStackHandler = function1;
        navigator.navigate(list, navOptions, extras);
        this.addToBackStackHandler = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void navigateInternal$default(NavController navController, Navigator navigator, List list, NavOptions navOptions, Navigator.Extras extras, Function1 function1, int i10, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: navigateInternal");
            return;
        }
        if ((i10 & 8) != 0) {
            function1 = new Function1<NavBackStackEntry, Unit>() { // from class: androidx.navigation.NavController.navigateInternal.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NavBackStackEntry navBackStackEntry) {
                    invoke2(navBackStackEntry);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(NavBackStackEntry navBackStackEntry) {
                    navBackStackEntry.getClass();
                }
            };
        }
        navController.navigateInternal(navigator, list, navOptions, extras, function1);
    }

    @MainThread
    private final void onGraphCreated(Bundle startDestinationArgs) {
        Activity activity;
        ArrayList<String> stringArrayList;
        Bundle bundle = this.navigatorStateToRestore;
        int i10 = 0;
        if (bundle != null && (stringArrayList = bundle.getStringArrayList(KEY_NAVIGATOR_STATE_NAMES)) != null) {
            int size = stringArrayList.size();
            int i11 = 0;
            while (i11 < size) {
                String str = stringArrayList.get(i11);
                i11++;
                String str2 = str;
                NavigatorProvider navigatorProvider = this._navigatorProvider;
                str2.getClass();
                Navigator navigator = navigatorProvider.getNavigator(str2);
                Bundle bundle2 = bundle.getBundle(str2);
                if (bundle2 != null) {
                    navigator.onRestoreState(bundle2);
                }
            }
        }
        Parcelable[] parcelableArr = this.backStackToRestore;
        if (parcelableArr != null) {
            for (Parcelable parcelable : parcelableArr) {
                parcelable.getClass();
                NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) parcelable;
                NavDestination navDestinationFindDestination$default = findDestination$default(this, navBackStackEntryState.getDestinationId(), null, 2, null);
                if (navDestinationFindDestination$default == null) {
                    StringBuilder sbM173x = AbstractC0074a.m173x("Restoring the Navigation back stack failed: destination ", NavDestination.INSTANCE.getDisplayName(this.context, navBackStackEntryState.getDestinationId()), " cannot be found from the current destination ");
                    sbM173x.append(getCurrentDestination());
                    throw new IllegalStateException(sbM173x.toString());
                }
                NavBackStackEntry navBackStackEntryInstantiate = navBackStackEntryState.instantiate(this.context, navDestinationFindDestination$default, getHostLifecycleState$navigation_runtime_release(), this.viewModel);
                Navigator<? extends NavDestination> navigator2 = this._navigatorProvider.getNavigator(navDestinationFindDestination$default.getNavigatorName());
                Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> map = this.navigatorState;
                NavControllerNavigatorState navControllerNavigatorState = map.get(navigator2);
                if (navControllerNavigatorState == null) {
                    navControllerNavigatorState = new NavControllerNavigatorState(this, navigator2);
                    map.put(navigator2, navControllerNavigatorState);
                }
                this.backQueue.add(navBackStackEntryInstantiate);
                navControllerNavigatorState.addInternal(navBackStackEntryInstantiate);
                NavGraph parent = navBackStackEntryInstantiate.getDestination().getParent();
                if (parent != null) {
                    linkChildToParent(navBackStackEntryInstantiate, getBackStackEntry(parent.getId()));
                }
            }
            updateOnBackPressedCallbackEnabled();
            this.backStackToRestore = null;
        }
        Collection<Navigator<? extends NavDestination>> collectionValues = this._navigatorProvider.getNavigators().values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            if (!((Navigator) obj).getIsAttached()) {
                arrayList.add(obj);
            }
        }
        int size2 = arrayList.size();
        while (i10 < size2) {
            Object obj2 = arrayList.get(i10);
            i10++;
            Navigator<? extends NavDestination> navigator3 = (Navigator) obj2;
            Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> map2 = this.navigatorState;
            NavControllerNavigatorState navControllerNavigatorState2 = map2.get(navigator3);
            if (navControllerNavigatorState2 == null) {
                navControllerNavigatorState2 = new NavControllerNavigatorState(this, navigator3);
                map2.put(navigator3, navControllerNavigatorState2);
            }
            navigator3.onAttach(navControllerNavigatorState2);
        }
        if (this._graph == null || !this.backQueue.isEmpty()) {
            dispatchOnDestinationChanged();
            return;
        }
        if (!this.deepLinkHandled && (activity = this.activity) != null) {
            activity.getClass();
            if (handleDeepLink(activity.getIntent())) {
                return;
            }
        }
        NavGraph navGraph = this._graph;
        navGraph.getClass();
        navigate(navGraph, startDestinationArgs, (NavOptions) null, (Navigator.Extras) null);
    }

    public static boolean popBackStack$default(NavController navController, boolean z9, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popBackStack");
        }
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        throw null;
    }

    private final boolean popBackStackInternal(String route, boolean inclusive, boolean saveState) {
        NavBackStackEntry navBackStackEntryPrevious;
        boolean zHasRoute;
        if (this.backQueue.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        ArrayDeque<NavBackStackEntry> arrayDeque = this.backQueue;
        ListIterator<NavBackStackEntry> listIterator = arrayDeque.listIterator(arrayDeque.size());
        do {
            if (!listIterator.hasPrevious()) {
                navBackStackEntryPrevious = null;
                break;
            }
            navBackStackEntryPrevious = listIterator.previous();
            NavBackStackEntry navBackStackEntry = navBackStackEntryPrevious;
            zHasRoute = navBackStackEntry.getDestination().hasRoute(route, navBackStackEntry.getArguments());
            if (inclusive || !zHasRoute) {
                arrayList.add(this._navigatorProvider.getNavigator(navBackStackEntry.getDestination().getNavigatorName()));
            }
        } while (!zHasRoute);
        NavBackStackEntry navBackStackEntry2 = navBackStackEntryPrevious;
        NavDestination destination = navBackStackEntry2 != null ? navBackStackEntry2.getDestination() : null;
        if (destination != null) {
            return executePopOperations(arrayList, destination, inclusive, saveState);
        }
        Log.i(TAG, "Ignoring popBackStack to route " + route + " as it was not found on the current back stack");
        return false;
    }

    public static /* synthetic */ boolean popBackStackInternal$default(NavController navController, int i10, boolean z9, boolean z10, int i11, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: popBackStackInternal");
            return false;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return navController.popBackStackInternal(i10, z9, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void popEntryFromBackStack(NavBackStackEntry popUpTo, boolean saveState, ArrayDeque<NavBackStackEntryState> savedState) {
        NavControllerViewModel navControllerViewModel;
        InterfaceC3683t transitionsInProgress;
        Set set;
        NavBackStackEntry navBackStackEntryLast = this.backQueue.last();
        if (!Intrinsics.areEqual(navBackStackEntryLast, popUpTo)) {
            StringBuilder sb = new StringBuilder("Attempted to pop ");
            sb.append(popUpTo.getDestination());
            NavDestination destination = navBackStackEntryLast.getDestination();
            sb.append(", which is not the top of the back stack (");
            sb.append(destination);
            sb.append(')');
            throw new IllegalStateException(sb.toString().toString());
        }
        CollectionsKt.removeLast(this.backQueue);
        NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(get_navigatorProvider().getNavigator(navBackStackEntryLast.getDestination().getNavigatorName()));
        boolean z9 = true;
        if ((navControllerNavigatorState == null || (transitionsInProgress = navControllerNavigatorState.getTransitionsInProgress()) == null || (set = (Set) transitionsInProgress.getValue()) == null || !set.contains(navBackStackEntryLast)) && !this.parentToChildCount.containsKey(navBackStackEntryLast)) {
            z9 = false;
        }
        Lifecycle.State currentState = navBackStackEntryLast.getLifecycle().getState();
        Lifecycle.State state = Lifecycle.State.CREATED;
        if (currentState.isAtLeast(state)) {
            if (saveState) {
                navBackStackEntryLast.setMaxLifecycle(state);
                savedState.addFirst(new NavBackStackEntryState(navBackStackEntryLast));
            }
            if (z9) {
                navBackStackEntryLast.setMaxLifecycle(state);
            } else {
                navBackStackEntryLast.setMaxLifecycle(Lifecycle.State.DESTROYED);
                unlinkChildFromParent$navigation_runtime_release(navBackStackEntryLast);
            }
        }
        if (saveState || z9 || (navControllerViewModel = this.viewModel) == null) {
            return;
        }
        navControllerViewModel.clear(navBackStackEntryLast.getId());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void popEntryFromBackStack$default(NavController navController, NavBackStackEntry navBackStackEntry, boolean z9, ArrayDeque arrayDeque, int i10, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: popEntryFromBackStack");
            return;
        }
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        if ((i10 & 4) != 0) {
            arrayDeque = new ArrayDeque();
        }
        navController.popEntryFromBackStack(navBackStackEntry, z9, arrayDeque);
    }

    private final boolean restoreStateInternal(String route) {
        NavBackStackEntryState navBackStackEntryStateFirstOrNull;
        int iHashCode = NavDestination.INSTANCE.createRoute(route).hashCode();
        if (this.backStackMap.containsKey(Integer.valueOf(iHashCode))) {
            return restoreStateInternal(iHashCode, null, null, null);
        }
        NavDestination navDestinationFindDestination = findDestination(route);
        if (navDestinationFindDestination == null) {
            StringBuilder sbM173x = AbstractC0074a.m173x("Restore State failed: route ", route, " cannot be found from the current destination ");
            sbM173x.append(getCurrentDestination());
            throw new IllegalStateException(sbM173x.toString().toString());
        }
        final String str = this.backStackMap.get(Integer.valueOf(navDestinationFindDestination.getId()));
        CollectionsKt__MutableCollectionsKt.removeAll(this.backStackMap.values(), new Function1<String, Boolean>() { // from class: androidx.navigation.NavController.restoreStateInternal.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String str2) {
                return Boolean.valueOf(Intrinsics.areEqual(str2, str));
            }
        });
        ArrayDeque<NavBackStackEntryState> arrayDeque = (ArrayDeque) TypeIntrinsics.asMutableMap(this.backStackStates).remove(str);
        NavDestination.DeepLinkMatch deepLinkMatchMatchRoute = navDestinationFindDestination.matchRoute(route);
        deepLinkMatchMatchRoute.getClass();
        if (deepLinkMatchMatchRoute.hasMatchingArgs((arrayDeque == null || (navBackStackEntryStateFirstOrNull = arrayDeque.firstOrNull()) == null) ? null : navBackStackEntryStateFirstOrNull.getArgs())) {
            return executeRestoreState(instantiateBackStack(arrayDeque), null, null, null);
        }
        return false;
    }

    private final boolean tryRelaunchUpToExplicitStack() {
        int i10 = 0;
        if (!this.deepLinkHandled) {
            return false;
        }
        Activity activity = this.activity;
        activity.getClass();
        Intent intent = activity.getIntent();
        Bundle extras = intent.getExtras();
        extras.getClass();
        int[] intArray = extras.getIntArray(KEY_DEEP_LINK_IDS);
        intArray.getClass();
        List<Integer> mutableList = ArraysKt.toMutableList(intArray);
        ArrayList parcelableArrayList = extras.getParcelableArrayList(KEY_DEEP_LINK_ARGS);
        if (mutableList.size() < 2) {
            return false;
        }
        int iIntValue = ((Number) CollectionsKt.removeLast(mutableList)).intValue();
        if (parcelableArrayList != null) {
        }
        NavDestination navDestinationFindDestinationComprehensive$default = findDestinationComprehensive$default(this, getGraph(), iIntValue, false, null, 4, null);
        if (navDestinationFindDestinationComprehensive$default instanceof NavGraph) {
            iIntValue = NavGraph.INSTANCE.findStartDestination((NavGraph) navDestinationFindDestinationComprehensive$default).getId();
        }
        NavDestination currentDestination = getCurrentDestination();
        if (currentDestination == null || iIntValue != currentDestination.getId()) {
            return false;
        }
        NavDeepLinkBuilder navDeepLinkBuilderCreateDeepLink = createDeepLink();
        Bundle bundleBundleOf = BundleKt.bundleOf(TuplesKt.m3166to(KEY_DEEP_LINK_INTENT, intent));
        Bundle bundle = extras.getBundle(KEY_DEEP_LINK_EXTRAS);
        if (bundle != null) {
            bundleBundleOf.putAll(bundle);
        }
        navDeepLinkBuilderCreateDeepLink.setArguments(bundleBundleOf);
        for (Object obj : mutableList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            navDeepLinkBuilderCreateDeepLink.addDestination(((Number) obj).intValue(), parcelableArrayList != null ? (Bundle) parcelableArrayList.get(i10) : null);
            i10 = i11;
        }
        navDeepLinkBuilderCreateDeepLink.createTaskStackBuilder().startActivities();
        Activity activity2 = this.activity;
        if (activity2 == null) {
            return true;
        }
        activity2.finish();
        return true;
    }

    private final boolean tryRelaunchUpToGeneratedStack() {
        NavDestination currentDestination = getCurrentDestination();
        currentDestination.getClass();
        int id = currentDestination.getId();
        for (NavGraph parent = currentDestination.getParent(); parent != null; parent = parent.getParent()) {
            if (parent.getStartDestId() != id) {
                Bundle bundle = new Bundle();
                Activity activity = this.activity;
                if (activity != null) {
                    activity.getClass();
                    if (activity.getIntent() != null) {
                        Activity activity2 = this.activity;
                        activity2.getClass();
                        if (activity2.getIntent().getData() != null) {
                            Activity activity3 = this.activity;
                            activity3.getClass();
                            bundle.putParcelable(KEY_DEEP_LINK_INTENT, activity3.getIntent());
                            NavGraph topGraph = getTopGraph(this.backQueue);
                            Activity activity4 = this.activity;
                            activity4.getClass();
                            Intent intent = activity4.getIntent();
                            intent.getClass();
                            NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLinkComprehensive = topGraph.matchDeepLinkComprehensive(new NavDeepLinkRequest(intent), true, true, topGraph);
                            if ((deepLinkMatchMatchDeepLinkComprehensive != null ? deepLinkMatchMatchDeepLinkComprehensive.getMatchingArgs() : null) != null) {
                                bundle.putAll(deepLinkMatchMatchDeepLinkComprehensive.getDestination().addInDefaultArgs(deepLinkMatchMatchDeepLinkComprehensive.getMatchingArgs()));
                            }
                        }
                    }
                }
                NavDeepLinkBuilder.setDestination$default(new NavDeepLinkBuilder(this), parent.getId(), (Bundle) null, 2, (Object) null).setArguments(bundle).createTaskStackBuilder().startActivities();
                Activity activity5 = this.activity;
                if (activity5 != null) {
                    activity5.finish();
                }
                return true;
            }
            id = parent.getId();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    private final void updateOnBackPressedCallbackEnabled() {
        boolean z9;
        OnBackPressedCallback onBackPressedCallback = this.onBackPressedCallback;
        if (this.enableOnBackPressedCallback) {
            z9 = getDestinationCountOnBackStack() > 1;
        }
        onBackPressedCallback.setEnabled(z9);
    }

    public void addOnDestinationChangedListener(OnDestinationChangedListener listener) {
        listener.getClass();
        this.onDestinationChangedListeners.add(listener);
        if (this.backQueue.isEmpty()) {
            return;
        }
        NavBackStackEntry navBackStackEntryLast = this.backQueue.last();
        listener.onDestinationChanged(this, navBackStackEntryLast.getDestination(), navBackStackEntryLast.getArguments());
    }

    @MainThread
    public final <T> boolean clearBackStack(T route) {
        route.getClass();
        return clearBackStackInternal(generateRouteFilled(route)) && dispatchOnDestinationChanged();
    }

    public NavDeepLinkBuilder createDeepLink() {
        return new NavDeepLinkBuilder(this);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void enableOnBackPressed(boolean enabled) {
        this.enableOnBackPressedCallback = enabled;
        updateOnBackPressedCallbackEnabled();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination findDestination(@IdRes int destinationId, NavDestination matchingDest) {
        NavDestination destination;
        NavGraph navGraph = this._graph;
        if (navGraph == null) {
            return null;
        }
        navGraph.getClass();
        if (navGraph.getId() == destinationId) {
            NavGraph navGraph2 = this._graph;
            if (matchingDest == null) {
                return navGraph2;
            }
            if (Intrinsics.areEqual(navGraph2, matchingDest) && matchingDest.getParent() == null) {
                return this._graph;
            }
        }
        NavBackStackEntry navBackStackEntryLastOrNull = this.backQueue.lastOrNull();
        if (navBackStackEntryLastOrNull == null || (destination = navBackStackEntryLastOrNull.getDestination()) == null) {
            destination = this._graph;
            destination.getClass();
        }
        return findDestinationComprehensive(destination, destinationId, false, matchingDest);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination findDestinationComprehensive(NavDestination navDestination, @IdRes int i10, boolean z9, NavDestination navDestination2) {
        NavGraph navGraph;
        navDestination.getClass();
        if (navDestination.getId() == i10 && (navDestination2 == null || (Intrinsics.areEqual(navDestination, navDestination2) && Intrinsics.areEqual(navDestination.getParent(), navDestination2.getParent())))) {
            return navDestination;
        }
        if (navDestination instanceof NavGraph) {
            navGraph = (NavGraph) navDestination;
        } else {
            NavGraph parent = navDestination.getParent();
            parent.getClass();
            navGraph = parent;
        }
        return navGraph.findNodeComprehensive(i10, navGraph, z9, navDestination2);
    }

    public final NavBackStackEntry getBackStackEntry(String route) {
        NavBackStackEntry navBackStackEntryPrevious;
        NavBackStackEntry navBackStackEntry;
        route.getClass();
        ArrayDeque<NavBackStackEntry> arrayDeque = this.backQueue;
        ListIterator<NavBackStackEntry> listIterator = arrayDeque.listIterator(arrayDeque.size());
        do {
            if (!listIterator.hasPrevious()) {
                navBackStackEntryPrevious = null;
                break;
            }
            navBackStackEntryPrevious = listIterator.previous();
            navBackStackEntry = navBackStackEntryPrevious;
        } while (!navBackStackEntry.getDestination().hasRoute(route, navBackStackEntry.getArguments()));
        NavBackStackEntry navBackStackEntry2 = navBackStackEntryPrevious;
        if (navBackStackEntry2 != null) {
            return navBackStackEntry2;
        }
        StringBuilder sbM173x = AbstractC0074a.m173x("No destination with route ", route, " is on the NavController's back stack. The current destination is ");
        sbM173x.append(getCurrentDestination());
        throw new IllegalArgumentException(sbM173x.toString().toString());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final Context getContext() {
        return this.context;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final InterfaceC3683t getCurrentBackStack() {
        return this.currentBackStack;
    }

    public NavBackStackEntry getCurrentBackStackEntry() {
        return this.backQueue.lastOrNull();
    }

    public final InterfaceC3669f getCurrentBackStackEntryFlow() {
        return this.currentBackStackEntryFlow;
    }

    public NavDestination getCurrentDestination() {
        NavBackStackEntry currentBackStackEntry = getCurrentBackStackEntry();
        if (currentBackStackEntry != null) {
            return currentBackStackEntry.getDestination();
        }
        return null;
    }

    @MainThread
    public NavGraph getGraph() {
        NavGraph navGraph = this._graph;
        if (navGraph != null) {
            navGraph.getClass();
            return navGraph;
        }
        C1929i.m3030l("You must call setGraph() before calling getGraph()");
        return null;
    }

    public final Lifecycle.State getHostLifecycleState$navigation_runtime_release() {
        return this.lifecycleOwner == null ? Lifecycle.State.CREATED : this.hostLifecycleState;
    }

    public NavInflater getNavInflater() {
        return (NavInflater) this.navInflater.getValue();
    }

    /* JADX INFO: renamed from: getNavigatorProvider, reason: from getter */
    public NavigatorProvider get_navigatorProvider() {
        return this._navigatorProvider;
    }

    public NavBackStackEntry getPreviousBackStackEntry() {
        Object next;
        Iterator it = CollectionsKt.reversed(this.backQueue).iterator();
        if (it.hasNext()) {
            it.next();
        }
        Iterator it2 = SequencesKt.asSequence(it).iterator();
        while (it2.hasNext()) {
            next = it2.next();
            if (!(((NavBackStackEntry) next).getDestination() instanceof NavGraph)) {
                return (NavBackStackEntry) next;
            }
        }
        next = null;
        return (NavBackStackEntry) next;
    }

    public ViewModelStoreOwner getViewModelStoreOwner(@IdRes int navGraphId) {
        if (this.viewModel == null) {
            C1929i.m3030l("You must call setViewModelStore() before calling getViewModelStoreOwner().");
            return null;
        }
        NavBackStackEntry backStackEntry = getBackStackEntry(navGraphId);
        if (backStackEntry.getDestination() instanceof NavGraph) {
            return backStackEntry;
        }
        C2237i.m3597d(AbstractC0074a.m155f(navGraphId, "No NavGraph with ID ", " is on the NavController's back stack"));
        return null;
    }

    public final InterfaceC3683t getVisibleEntries() {
        return this.visibleEntries;
    }

    @MainThread
    public boolean handleDeepLink(Intent intent) {
        int[] intArray;
        NavGraph topGraph;
        NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLinkComprehensive;
        NavDestination navDestinationFindNode;
        NavGraph navGraph;
        Bundle bundle;
        int i10 = 0;
        if (intent == null) {
            return false;
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            try {
                intArray = extras.getIntArray(KEY_DEEP_LINK_IDS);
            } catch (Exception e) {
                Log.e(TAG, "handleDeepLink() could not extract deepLink from " + intent, e);
                intArray = null;
            }
        } else {
            intArray = null;
        }
        ArrayList parcelableArrayList = extras != null ? extras.getParcelableArrayList(KEY_DEEP_LINK_ARGS) : null;
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = extras != null ? extras.getBundle(KEY_DEEP_LINK_EXTRAS) : null;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        if ((intArray == null || intArray.length == 0) && (deepLinkMatchMatchDeepLinkComprehensive = (topGraph = getTopGraph(this.backQueue)).matchDeepLinkComprehensive(new NavDeepLinkRequest(intent), true, true, topGraph)) != null) {
            NavDestination destination = deepLinkMatchMatchDeepLinkComprehensive.getDestination();
            int[] iArrBuildDeepLinkIds$default = NavDestination.buildDeepLinkIds$default(destination, null, 1, null);
            Bundle bundleAddInDefaultArgs = destination.addInDefaultArgs(deepLinkMatchMatchDeepLinkComprehensive.getMatchingArgs());
            if (bundleAddInDefaultArgs != null) {
                bundle2.putAll(bundleAddInDefaultArgs);
            }
            intArray = iArrBuildDeepLinkIds$default;
            parcelableArrayList = null;
        }
        if (intArray == null || intArray.length == 0) {
            return false;
        }
        String strFindInvalidDestinationDisplayNameInDeepLink = findInvalidDestinationDisplayNameInDeepLink(intArray);
        if (strFindInvalidDestinationDisplayNameInDeepLink != null) {
            Log.i(TAG, "Could not find destination " + strFindInvalidDestinationDisplayNameInDeepLink + " in the navigation graph, ignoring the deep link from " + intent);
            return false;
        }
        bundle2.putParcelable(KEY_DEEP_LINK_INTENT, intent);
        int length = intArray.length;
        Bundle[] bundleArr = new Bundle[length];
        for (int i11 = 0; i11 < length; i11++) {
            Bundle bundle4 = new Bundle();
            bundle4.putAll(bundle2);
            if (parcelableArrayList != null && (bundle = (Bundle) parcelableArrayList.get(i11)) != null) {
                bundle4.putAll(bundle);
            }
            bundleArr[i11] = bundle4;
        }
        int flags = intent.getFlags();
        int i12 = 268435456 & flags;
        if (i12 != 0 && (flags & 32768) == 0) {
            intent.addFlags(32768);
            TaskStackBuilder taskStackBuilderAddNextIntentWithParentStack = TaskStackBuilder.create(this.context).addNextIntentWithParentStack(intent);
            taskStackBuilderAddNextIntentWithParentStack.getClass();
            taskStackBuilderAddNextIntentWithParentStack.startActivities();
            Activity activity = this.activity;
            if (activity != null) {
                activity.finish();
                activity.overridePendingTransition(0, 0);
            }
            return true;
        }
        if (i12 != 0) {
            if (!this.backQueue.isEmpty()) {
                NavGraph navGraph2 = this._graph;
                navGraph2.getClass();
                popBackStackInternal$default(this, navGraph2.getId(), true, false, 4, (Object) null);
            }
            while (i10 < intArray.length) {
                int i13 = intArray[i10];
                int i14 = i10 + 1;
                Bundle bundle5 = bundleArr[i10];
                final NavDestination navDestinationFindDestination$default = findDestination$default(this, i13, null, 2, null);
                if (navDestinationFindDestination$default == null) {
                    StringBuilder sbM173x = AbstractC0074a.m173x("Deep Linking failed: destination ", NavDestination.INSTANCE.getDisplayName(this.context, i13), " cannot be found from the current destination ");
                    sbM173x.append(getCurrentDestination());
                    throw new IllegalStateException(sbM173x.toString());
                }
                navigate(navDestinationFindDestination$default, bundle5, NavOptionsBuilderKt.navOptions(new Function1<NavOptionsBuilder, Unit>() { // from class: androidx.navigation.NavController.handleDeepLink.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(NavOptionsBuilder navOptionsBuilder) {
                        navOptionsBuilder.getClass();
                        navOptionsBuilder.anim(new Function1<AnimBuilder, Unit>() { // from class: androidx.navigation.NavController.handleDeepLink.2.1
                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(AnimBuilder animBuilder) {
                                animBuilder.getClass();
                                animBuilder.setEnter(0);
                                animBuilder.setExit(0);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(AnimBuilder animBuilder) {
                                invoke2(animBuilder);
                                return Unit.INSTANCE;
                            }
                        });
                        NavDestination navDestination = navDestinationFindDestination$default;
                        if (navDestination instanceof NavGraph) {
                            Sequence<NavDestination> hierarchy = NavDestination.INSTANCE.getHierarchy(navDestination);
                            NavController navController = this;
                            for (NavDestination navDestination2 : hierarchy) {
                                NavDestination currentDestination = navController.getCurrentDestination();
                                if (Intrinsics.areEqual(navDestination2, currentDestination != null ? currentDestination.getParent() : null)) {
                                    return;
                                }
                            }
                            if (NavController.deepLinkSaveState) {
                                navOptionsBuilder.popUpTo(NavGraph.INSTANCE.findStartDestination(this.getGraph()).getId(), new Function1<PopUpToBuilder, Unit>() { // from class: androidx.navigation.NavController.handleDeepLink.2.2
                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(PopUpToBuilder popUpToBuilder) {
                                        invoke2(popUpToBuilder);
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(PopUpToBuilder popUpToBuilder) {
                                        popUpToBuilder.getClass();
                                        popUpToBuilder.setSaveState(true);
                                    }
                                });
                            }
                        }
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(NavOptionsBuilder navOptionsBuilder) {
                        invoke2(navOptionsBuilder);
                        return Unit.INSTANCE;
                    }
                }), (Navigator.Extras) null);
                i10 = i14;
            }
            this.deepLinkHandled = true;
            return true;
        }
        NavGraph navGraph3 = this._graph;
        int length2 = intArray.length;
        for (int i15 = 0; i15 < length2; i15++) {
            int i16 = intArray[i15];
            Bundle bundle6 = bundleArr[i15];
            if (i15 == 0) {
                navDestinationFindNode = this._graph;
            } else {
                navGraph3.getClass();
                navDestinationFindNode = navGraph3.findNode(i16);
            }
            if (navDestinationFindNode == null) {
                C0075b.m195t("Deep Linking failed: destination ", NavDestination.INSTANCE.getDisplayName(this.context, i16), " cannot be found in graph ", navGraph3);
                return false;
            }
            if (i15 == intArray.length - 1) {
                NavOptions.Builder builder = new NavOptions.Builder();
                NavGraph navGraph4 = this._graph;
                navGraph4.getClass();
                navigate(navDestinationFindNode, bundle6, NavOptions.Builder.setPopUpTo$default(builder, navGraph4.getId(), true, false, 4, (Object) null).setEnterAnim(0).setExitAnim(0).build(), (Navigator.Extras) null);
            } else if (navDestinationFindNode instanceof NavGraph) {
                while (true) {
                    navGraph = (NavGraph) navDestinationFindNode;
                    navGraph.getClass();
                    if (!(navGraph.findNode(navGraph.getStartDestId()) instanceof NavGraph)) {
                        break;
                    }
                    navDestinationFindNode = navGraph.findNode(navGraph.getStartDestId());
                }
                navGraph3 = navGraph;
            }
        }
        this.deepLinkHandled = true;
        return true;
    }

    @MainThread
    public boolean navigateUp() {
        Intent intent;
        if (getDestinationCountOnBackStack() != 1) {
            return popBackStack();
        }
        Activity activity = this.activity;
        Bundle extras = (activity == null || (intent = activity.getIntent()) == null) ? null : intent.getExtras();
        return (extras != null ? extras.getIntArray(KEY_DEEP_LINK_IDS) : null) != null ? tryRelaunchUpToExplicitStack() : tryRelaunchUpToGeneratedStack();
    }

    @MainThread
    public boolean popBackStack() {
        if (this.backQueue.isEmpty()) {
            return false;
        }
        NavDestination currentDestination = getCurrentDestination();
        currentDestination.getClass();
        return popBackStack(currentDestination.getId(), true);
    }

    public final void popBackStackFromNavigator$navigation_runtime_release(NavBackStackEntry popUpTo, Function0<Unit> onComplete) {
        popUpTo.getClass();
        onComplete.getClass();
        int iIndexOf = this.backQueue.indexOf(popUpTo);
        if (iIndexOf < 0) {
            Log.i(TAG, "Ignoring pop of " + popUpTo + " as it was not found on the current back stack");
            return;
        }
        int i10 = iIndexOf + 1;
        if (i10 != this.backQueue.size()) {
            popBackStackInternal(this.backQueue.get(i10).getDestination().getId(), true, false);
        }
        popEntryFromBackStack$default(this, popUpTo, false, null, 6, null);
        onComplete.invoke();
        updateOnBackPressedCallbackEnabled();
        dispatchOnDestinationChanged();
    }

    public final List<NavBackStackEntry> populateVisibleEntries$navigation_runtime_release() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            Iterable iterable = (Iterable) ((NavControllerNavigatorState) it.next()).getTransitionsInProgress().getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : iterable) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (!arrayList.contains(navBackStackEntry) && !navBackStackEntry.getMaxLifecycle().isAtLeast(Lifecycle.State.STARTED)) {
                    arrayList2.add(obj);
                }
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList2);
        }
        ArrayDeque<NavBackStackEntry> arrayDeque = this.backQueue;
        ArrayList arrayList3 = new ArrayList();
        for (NavBackStackEntry navBackStackEntry2 : arrayDeque) {
            NavBackStackEntry navBackStackEntry3 = navBackStackEntry2;
            if (!arrayList.contains(navBackStackEntry3) && navBackStackEntry3.getMaxLifecycle().isAtLeast(Lifecycle.State.STARTED)) {
                arrayList3.add(navBackStackEntry2);
            }
        }
        CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj2 = arrayList.get(i10);
            i10++;
            if (!(((NavBackStackEntry) obj2).getDestination() instanceof NavGraph)) {
                arrayList4.add(obj2);
            }
        }
        return arrayList4;
    }

    public void removeOnDestinationChangedListener(OnDestinationChangedListener listener) {
        listener.getClass();
        this.onDestinationChangedListeners.remove(listener);
    }

    @CallSuper
    public void restoreState(Bundle navState) {
        if (navState == null) {
            return;
        }
        navState.setClassLoader(this.context.getClassLoader());
        this.navigatorStateToRestore = navState.getBundle(KEY_NAVIGATOR_STATE);
        this.backStackToRestore = navState.getParcelableArray(KEY_BACK_STACK);
        this.backStackStates.clear();
        int[] intArray = navState.getIntArray(KEY_BACK_STACK_DEST_IDS);
        ArrayList<String> stringArrayList = navState.getStringArrayList(KEY_BACK_STACK_IDS);
        int i10 = 0;
        if (intArray != null && stringArrayList != null) {
            int length = intArray.length;
            int i11 = 0;
            int i12 = 0;
            while (i11 < length) {
                this.backStackMap.put(Integer.valueOf(intArray[i11]), stringArrayList.get(i12));
                i11++;
                i12++;
            }
        }
        ArrayList<String> stringArrayList2 = navState.getStringArrayList(KEY_BACK_STACK_STATES_IDS);
        if (stringArrayList2 != null) {
            int size = stringArrayList2.size();
            while (i10 < size) {
                String str = stringArrayList2.get(i10);
                i10++;
                String str2 = str;
                Parcelable[] parcelableArray = navState.getParcelableArray(KEY_BACK_STACK_STATES_PREFIX + str2);
                if (parcelableArray != null) {
                    Map<String, ArrayDeque<NavBackStackEntryState>> map = this.backStackStates;
                    str2.getClass();
                    ArrayDeque<NavBackStackEntryState> arrayDeque = new ArrayDeque<>(parcelableArray.length);
                    Iterator it = ArrayIteratorKt.iterator(parcelableArray);
                    while (it.hasNext()) {
                        Parcelable parcelable = (Parcelable) it.next();
                        parcelable.getClass();
                        arrayDeque.add((NavBackStackEntryState) parcelable);
                    }
                    map.put(str2, arrayDeque);
                }
            }
        }
        this.deepLinkHandled = navState.getBoolean(KEY_DEEP_LINK_HANDLED);
    }

    @CallSuper
    public Bundle saveState() {
        Bundle bundle;
        ArrayList<String> arrayList = new ArrayList<>();
        Bundle bundle2 = new Bundle();
        for (Map.Entry<String, Navigator<? extends NavDestination>> entry : this._navigatorProvider.getNavigators().entrySet()) {
            String key = entry.getKey();
            Bundle bundleOnSaveState = entry.getValue().onSaveState();
            if (bundleOnSaveState != null) {
                arrayList.add(key);
                bundle2.putBundle(key, bundleOnSaveState);
            }
        }
        if (arrayList.isEmpty()) {
            bundle = null;
        } else {
            bundle = new Bundle();
            bundle2.putStringArrayList(KEY_NAVIGATOR_STATE_NAMES, arrayList);
            bundle.putBundle(KEY_NAVIGATOR_STATE, bundle2);
        }
        if (!this.backQueue.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Parcelable[] parcelableArr = new Parcelable[this.backQueue.size()];
            Iterator<NavBackStackEntry> it = this.backQueue.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                parcelableArr[i10] = new NavBackStackEntryState(it.next());
                i10++;
            }
            bundle.putParcelableArray(KEY_BACK_STACK, parcelableArr);
        }
        if (!this.backStackMap.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            int[] iArr = new int[this.backStackMap.size()];
            ArrayList<String> arrayList2 = new ArrayList<>();
            int i11 = 0;
            for (Map.Entry<Integer, String> entry2 : this.backStackMap.entrySet()) {
                int iIntValue = entry2.getKey().intValue();
                String value = entry2.getValue();
                iArr[i11] = iIntValue;
                arrayList2.add(value);
                i11++;
            }
            bundle.putIntArray(KEY_BACK_STACK_DEST_IDS, iArr);
            bundle.putStringArrayList(KEY_BACK_STACK_IDS, arrayList2);
        }
        if (!this.backStackStates.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            ArrayList<String> arrayList3 = new ArrayList<>();
            for (Map.Entry<String, ArrayDeque<NavBackStackEntryState>> entry3 : this.backStackStates.entrySet()) {
                String key2 = entry3.getKey();
                ArrayDeque<NavBackStackEntryState> value2 = entry3.getValue();
                arrayList3.add(key2);
                Parcelable[] parcelableArr2 = new Parcelable[value2.size()];
                int i12 = 0;
                for (NavBackStackEntryState navBackStackEntryState : value2) {
                    int i13 = i12 + 1;
                    if (i12 < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    parcelableArr2[i12] = navBackStackEntryState;
                    i12 = i13;
                }
                bundle.putParcelableArray(AbstractC0074a.m161l(KEY_BACK_STACK_STATES_PREFIX, key2), parcelableArr2);
            }
            bundle.putStringArrayList(KEY_BACK_STACK_STATES_IDS, arrayList3);
        }
        if (this.deepLinkHandled) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(KEY_DEEP_LINK_HANDLED, this.deepLinkHandled);
        }
        return bundle;
    }

    @CallSuper
    @MainThread
    public void setGraph(NavGraph graph, Bundle startDestinationArgs) {
        NavController navController;
        graph.getClass();
        if (!this.backQueue.isEmpty() && getHostLifecycleState$navigation_runtime_release() == Lifecycle.State.DESTROYED) {
            C1929i.m3030l("You cannot set a new graph on a NavController with entries on the back stack after the NavController has been destroyed. Please ensure that your NavHost has the same lifetime as your NavController.");
            return;
        }
        int i10 = 0;
        if (!Intrinsics.areEqual(this._graph, graph)) {
            NavGraph navGraph = this._graph;
            if (navGraph != null) {
                ArrayList arrayList = new ArrayList(this.backStackMap.keySet());
                int size = arrayList.size();
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    Integer num = (Integer) obj;
                    num.getClass();
                    clearBackStackInternal(num.intValue());
                }
                navController = this;
                popBackStackInternal$default(navController, navGraph.getId(), true, false, 4, (Object) null);
            } else {
                navController = this;
            }
            navController._graph = graph;
            onGraphCreated(startDestinationArgs);
            return;
        }
        int size2 = graph.getNodes().size();
        while (i10 < size2) {
            NavDestination navDestinationValueAt = graph.getNodes().valueAt(i10);
            NavGraph navGraph2 = this._graph;
            navGraph2.getClass();
            int iKeyAt = navGraph2.getNodes().keyAt(i10);
            NavGraph navGraph3 = this._graph;
            navGraph3.getClass();
            navGraph3.getNodes().replace(iKeyAt, navDestinationValueAt);
            i10++;
        }
        for (NavBackStackEntry navBackStackEntry : this.backQueue) {
            List<NavDestination> listAsReversed = CollectionsKt.asReversed(SequencesKt.toList(NavDestination.INSTANCE.getHierarchy(navBackStackEntry.getDestination())));
            NavDestination navDestinationFindNode = this._graph;
            navDestinationFindNode.getClass();
            for (NavDestination navDestination : listAsReversed) {
                if (!Intrinsics.areEqual(navDestination, this._graph) || !Intrinsics.areEqual(navDestinationFindNode, graph)) {
                    if (navDestinationFindNode instanceof NavGraph) {
                        navDestinationFindNode = ((NavGraph) navDestinationFindNode).findNode(navDestination.getId());
                        navDestinationFindNode.getClass();
                    }
                }
            }
            navBackStackEntry.setDestination(navDestinationFindNode);
        }
    }

    public final void setHostLifecycleState$navigation_runtime_release(Lifecycle.State state) {
        state.getClass();
        this.hostLifecycleState = state;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setLifecycleOwner(LifecycleOwner owner) {
        Lifecycle lifecycle;
        owner.getClass();
        if (Intrinsics.areEqual(owner, this.lifecycleOwner)) {
            return;
        }
        LifecycleOwner lifecycleOwner = this.lifecycleOwner;
        if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            lifecycle.removeObserver(this.lifecycleObserver);
        }
        this.lifecycleOwner = owner;
        owner.getLifecycle().addObserver(this.lifecycleObserver);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setNavigatorProvider(NavigatorProvider navigatorProvider) {
        navigatorProvider.getClass();
        if (this.backQueue.isEmpty()) {
            this._navigatorProvider = navigatorProvider;
        } else {
            C1929i.m3030l("NavigatorProvider must be set before setGraph call");
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setOnBackPressedDispatcher(OnBackPressedDispatcher dispatcher) {
        dispatcher.getClass();
        if (Intrinsics.areEqual(dispatcher, this.onBackPressedDispatcher)) {
            return;
        }
        LifecycleOwner lifecycleOwner = this.lifecycleOwner;
        if (lifecycleOwner == null) {
            C1929i.m3030l("You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()");
            return;
        }
        this.onBackPressedCallback.remove();
        this.onBackPressedDispatcher = dispatcher;
        dispatcher.addCallback(lifecycleOwner, this.onBackPressedCallback);
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        lifecycle.removeObserver(this.lifecycleObserver);
        lifecycle.addObserver(this.lifecycleObserver);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setViewModelStore(ViewModelStore viewModelStore) {
        viewModelStore.getClass();
        NavControllerViewModel navControllerViewModel = this.viewModel;
        NavControllerViewModel.Companion companion = NavControllerViewModel.INSTANCE;
        if (Intrinsics.areEqual(navControllerViewModel, companion.getInstance(viewModelStore))) {
            return;
        }
        if (this.backQueue.isEmpty()) {
            this.viewModel = companion.getInstance(viewModelStore);
        } else {
            C1929i.m3030l("ViewModelStore should be set before setGraph call");
        }
    }

    public final NavBackStackEntry unlinkChildFromParent$navigation_runtime_release(NavBackStackEntry child) {
        child.getClass();
        NavBackStackEntry navBackStackEntryRemove = this.childToParentEntries.remove(child);
        if (navBackStackEntryRemove == null) {
            return null;
        }
        AtomicInteger atomicInteger = this.parentToChildCount.get(navBackStackEntryRemove);
        Integer numValueOf = atomicInteger != null ? Integer.valueOf(atomicInteger.decrementAndGet()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(this._navigatorProvider.getNavigator(navBackStackEntryRemove.getDestination().getNavigatorName()));
            if (navControllerNavigatorState != null) {
                navControllerNavigatorState.markTransitionComplete(navBackStackEntryRemove);
            }
            this.parentToChildCount.remove(navBackStackEntryRemove);
        }
        return navBackStackEntryRemove;
    }

    public final void updateBackStackLifecycle$navigation_runtime_release() {
        AtomicInteger atomicInteger;
        InterfaceC3683t transitionsInProgress;
        Set set;
        List<NavBackStackEntry> mutableList = CollectionsKt.toMutableList((Collection) this.backQueue);
        if (mutableList.isEmpty()) {
            return;
        }
        NavDestination destination = ((NavBackStackEntry) CollectionsKt.last(mutableList)).getDestination();
        ArrayList arrayList = new ArrayList();
        if (destination instanceof FloatingWindow) {
            Iterator it = CollectionsKt.reversed(mutableList).iterator();
            while (it.hasNext()) {
                NavDestination destination2 = ((NavBackStackEntry) it.next()).getDestination();
                arrayList.add(destination2);
                if (!(destination2 instanceof FloatingWindow) && !(destination2 instanceof NavGraph)) {
                    break;
                }
            }
        }
        HashMap map = new HashMap();
        for (NavBackStackEntry navBackStackEntry : CollectionsKt.reversed(mutableList)) {
            Lifecycle.State maxLifecycle = navBackStackEntry.getMaxLifecycle();
            NavDestination destination3 = navBackStackEntry.getDestination();
            if (destination != null && destination3.getId() == destination.getId()) {
                Lifecycle.State state = Lifecycle.State.RESUMED;
                if (maxLifecycle != state) {
                    NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(get_navigatorProvider().getNavigator(navBackStackEntry.getDestination().getNavigatorName()));
                    if (Intrinsics.areEqual((navControllerNavigatorState == null || (transitionsInProgress = navControllerNavigatorState.getTransitionsInProgress()) == null || (set = (Set) transitionsInProgress.getValue()) == null) ? null : Boolean.valueOf(set.contains(navBackStackEntry)), Boolean.TRUE) || ((atomicInteger = this.parentToChildCount.get(navBackStackEntry)) != null && atomicInteger.get() == 0)) {
                        map.put(navBackStackEntry, Lifecycle.State.STARTED);
                    } else {
                        map.put(navBackStackEntry, state);
                    }
                }
                NavDestination navDestination = (NavDestination) CollectionsKt.firstOrNull((List) arrayList);
                if (navDestination != null && navDestination.getId() == destination3.getId()) {
                    CollectionsKt__MutableCollectionsKt.removeFirst(arrayList);
                }
                destination = destination.getParent();
            } else if (arrayList.isEmpty() || destination3.getId() != ((NavDestination) CollectionsKt.first((List) arrayList)).getId()) {
                navBackStackEntry.setMaxLifecycle(Lifecycle.State.CREATED);
            } else {
                NavDestination navDestination2 = (NavDestination) CollectionsKt__MutableCollectionsKt.removeFirst(arrayList);
                if (maxLifecycle == Lifecycle.State.RESUMED) {
                    navBackStackEntry.setMaxLifecycle(Lifecycle.State.STARTED);
                } else {
                    Lifecycle.State state2 = Lifecycle.State.STARTED;
                    if (maxLifecycle != state2) {
                        map.put(navBackStackEntry, state2);
                    }
                }
                NavGraph parent = navDestination2.getParent();
                if (parent != null && !arrayList.contains(parent)) {
                    arrayList.add(parent);
                }
            }
        }
        for (NavBackStackEntry navBackStackEntry2 : mutableList) {
            Lifecycle.State state3 = (Lifecycle.State) map.get(navBackStackEntry2);
            if (state3 != null) {
                navBackStackEntry2.setMaxLifecycle(state3);
            } else {
                navBackStackEntry2.updateState();
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u00020\u00048\u0006X\u0087T¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\u0002R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m3159d2 = {"Landroidx/navigation/NavController$Companion;", "", "()V", "KEY_BACK_STACK", "", "KEY_BACK_STACK_DEST_IDS", "KEY_BACK_STACK_IDS", "KEY_BACK_STACK_STATES_IDS", "KEY_BACK_STACK_STATES_PREFIX", "KEY_DEEP_LINK_ARGS", "KEY_DEEP_LINK_EXTRAS", "getKEY_DEEP_LINK_EXTRAS$annotations", "KEY_DEEP_LINK_HANDLED", "KEY_DEEP_LINK_IDS", "KEY_DEEP_LINK_INTENT", "KEY_NAVIGATOR_STATE", "KEY_NAVIGATOR_STATE_NAMES", "TAG", "deepLinkSaveState", "", "enableDeepLinkSaveState", "", "saveState", "navigation-runtime_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NavDeepLinkSaveStateControl
        public final void enableDeepLinkSaveState(boolean saveState) {
            NavController.deepLinkSaveState = saveState;
        }

        private Companion() {
        }

        public static /* synthetic */ void getKEY_DEEP_LINK_EXTRAS$annotations() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void popBackStackInternal$default(NavController navController, Navigator navigator, NavBackStackEntry navBackStackEntry, boolean z9, Function1 function1, int i10, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: popBackStackInternal");
            return;
        }
        if ((i10 & 4) != 0) {
            function1 = new Function1<NavBackStackEntry, Unit>() { // from class: androidx.navigation.NavController.popBackStackInternal.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NavBackStackEntry navBackStackEntry2) {
                    invoke2(navBackStackEntry2);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(NavBackStackEntry navBackStackEntry2) {
                    navBackStackEntry2.getClass();
                }
            };
        }
        navController.popBackStackInternal(navigator, navBackStackEntry, z9, function1);
    }

    public static /* synthetic */ boolean popBackStackInternal$default(NavController navController, Object obj, boolean z9, boolean z10, int i10, Object obj2) {
        if (obj2 != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: popBackStackInternal");
            return false;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return navController.popBackStackInternal(obj, z9, z10);
    }

    public static /* synthetic */ void navigate$default(NavController navController, Object obj, NavOptions navOptions, Navigator.Extras extras, int i10, Object obj2) {
        if (obj2 != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: navigate");
            return;
        }
        if ((i10 & 2) != 0) {
            navOptions = null;
        }
        if ((i10 & 4) != 0) {
            extras = null;
        }
        navController.navigate(obj, navOptions, extras);
    }

    public static /* synthetic */ boolean popBackStack$default(NavController navController, String str, boolean z9, boolean z10, int i10, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: popBackStack");
            return false;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return navController.popBackStack(str, z9, z10);
    }

    @MainThread
    public final boolean clearBackStack(@IdRes int destinationId) {
        return clearBackStackInternal(destinationId) && dispatchOnDestinationChanged();
    }

    public static /* synthetic */ boolean popBackStack$default(NavController navController, Object obj, boolean z9, boolean z10, int i10, Object obj2) {
        if (obj2 != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: popBackStack");
            return false;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return navController.popBackStack(obj, z9, z10);
    }

    @MainThread
    public final <T> boolean clearBackStack() {
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        throw null;
    }

    @MainThread
    public final boolean clearBackStack(String route) {
        route.getClass();
        return clearBackStackInternal(route) && dispatchOnDestinationChanged();
    }

    @JvmOverloads
    @MainThread
    public final boolean popBackStack(String str, boolean z9) {
        str.getClass();
        return popBackStack$default(this, str, z9, false, 4, (Object) null);
    }

    @JvmOverloads
    @MainThread
    public final <T> boolean popBackStack(T t, boolean z9) {
        t.getClass();
        return popBackStack$default(this, (Object) t, z9, false, 4, (Object) null);
    }

    @MainThread
    public boolean popBackStack(@IdRes int destinationId, boolean inclusive) {
        return popBackStack(destinationId, inclusive, false);
    }

    @MainThread
    public boolean popBackStack(@IdRes int destinationId, boolean inclusive, boolean saveState) {
        return popBackStackInternal(destinationId, inclusive, saveState) && dispatchOnDestinationChanged();
    }

    @JvmOverloads
    @MainThread
    public final boolean popBackStack(String route, boolean inclusive, boolean saveState) {
        route.getClass();
        return popBackStackInternal(route, inclusive, saveState) && dispatchOnDestinationChanged();
    }

    @JvmOverloads
    @MainThread
    public final <T> boolean popBackStack(boolean inclusive, boolean saveState) {
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        throw null;
    }

    @JvmOverloads
    @MainThread
    public final <T> boolean popBackStack(T route, boolean inclusive, boolean saveState) {
        route.getClass();
        return popBackStackInternal(route, inclusive, saveState) && dispatchOnDestinationChanged();
    }

    @JvmOverloads
    @MainThread
    public final <T> boolean popBackStack(boolean z9) {
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        throw null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination findDestination(String route) {
        route.getClass();
        NavGraph navGraph = this._graph;
        if (navGraph == null) {
            return null;
        }
        navGraph.getClass();
        if (!Intrinsics.areEqual(navGraph.getRoute(), route)) {
            NavGraph navGraph2 = this._graph;
            navGraph2.getClass();
            if (navGraph2.matchRoute(route) == null) {
                return getTopGraph(this.backQueue).findNode(route);
            }
        }
        return this._graph;
    }

    @MainThread
    private final boolean clearBackStackInternal(String route) {
        Iterator<T> it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            ((NavControllerNavigatorState) it.next()).setNavigating(true);
        }
        boolean zRestoreStateInternal = restoreStateInternal(route);
        Iterator<T> it2 = this.navigatorState.values().iterator();
        while (it2.hasNext()) {
            ((NavControllerNavigatorState) it2.next()).setNavigating(false);
        }
        return zRestoreStateInternal && popBackStackInternal(route, true, false);
    }

    public NavBackStackEntry getBackStackEntry(@IdRes int destinationId) {
        NavBackStackEntry navBackStackEntryPrevious;
        ArrayDeque<NavBackStackEntry> arrayDeque = this.backQueue;
        ListIterator<NavBackStackEntry> listIterator = arrayDeque.listIterator(arrayDeque.size());
        do {
            if (!listIterator.hasPrevious()) {
                navBackStackEntryPrevious = null;
                break;
            }
            navBackStackEntryPrevious = listIterator.previous();
        } while (navBackStackEntryPrevious.getDestination().getId() != destinationId);
        NavBackStackEntry navBackStackEntry = navBackStackEntryPrevious;
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        StringBuilder sbM166q = AbstractC0074a.m166q(destinationId, "No destination with ID ", " is on the NavController's back stack. The current destination is ");
        sbM166q.append(getCurrentDestination());
        throw new IllegalArgumentException(sbM166q.toString().toString());
    }

    public final <T> NavBackStackEntry getBackStackEntry() {
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        throw null;
    }

    public final <T> NavBackStackEntry getBackStackEntry(T route) {
        route.getClass();
        return getBackStackEntry(generateRouteFilled(route));
    }

    @MainThread
    private final boolean popBackStackInternal(@IdRes int destinationId, boolean inclusive, boolean saveState) {
        NavDestination destination;
        if (this.backQueue.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = CollectionsKt.reversed(this.backQueue).iterator();
        do {
            if (!it.hasNext()) {
                destination = null;
                break;
            }
            destination = ((NavBackStackEntry) it.next()).getDestination();
            Navigator navigator = this._navigatorProvider.getNavigator(destination.getNavigatorName());
            if (inclusive || destination.getId() != destinationId) {
                arrayList.add(navigator);
            }
        } while (destination.getId() != destinationId);
        if (destination == null) {
            Log.i(TAG, "Ignoring popBackStack to destination " + NavDestination.INSTANCE.getDisplayName(this.context, destinationId) + " as it was not found on the current back stack");
            return false;
        }
        return executePopOperations(arrayList, destination, inclusive, saveState);
    }

    private final <T> boolean popBackStackInternal(T route, boolean inclusive, boolean saveState) {
        return popBackStackInternal(generateRouteFilled(route), inclusive, saveState);
    }

    private final void popBackStackInternal(Navigator<? extends NavDestination> navigator, NavBackStackEntry navBackStackEntry, boolean z9, Function1<? super NavBackStackEntry, Unit> function1) {
        this.popFromBackStackHandler = function1;
        navigator.popBackStack(navBackStackEntry, z9);
        this.popFromBackStackHandler = null;
    }

    private final boolean restoreStateInternal(int id, Bundle args, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        if (!this.backStackMap.containsKey(Integer.valueOf(id))) {
            return false;
        }
        final String str = this.backStackMap.get(Integer.valueOf(id));
        CollectionsKt__MutableCollectionsKt.removeAll(this.backStackMap.values(), new Function1<String, Boolean>() { // from class: androidx.navigation.NavController.restoreStateInternal.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String str2) {
                return Boolean.valueOf(Intrinsics.areEqual(str2, str));
            }
        });
        return executeRestoreState(instantiateBackStack((ArrayDeque) TypeIntrinsics.asMutableMap(this.backStackStates).remove(str)), args, navOptions, navigatorExtras);
    }

    @CallSuper
    @MainThread
    public void setGraph(@NavigationRes int graphResId) {
        setGraph(getNavInflater().inflate(graphResId), (Bundle) null);
    }

    @CallSuper
    @MainThread
    public void setGraph(@NavigationRes int graphResId, Bundle startDestinationArgs) {
        setGraph(getNavInflater().inflate(graphResId), startDestinationArgs);
    }

    @CallSuper
    @MainThread
    public void setGraph(NavGraph navGraph) {
        navGraph.getClass();
        setGraph(navGraph, (Bundle) null);
    }

    @JvmOverloads
    @MainThread
    public final <T> void navigate(T t, NavOptions navOptions) {
        t.getClass();
        navigate$default(this, t, navOptions, (Navigator.Extras) null, 4, (Object) null);
    }

    @JvmOverloads
    @MainThread
    public final void navigate(String str) {
        str.getClass();
        navigate$default(this, str, (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
    }

    @JvmOverloads
    @MainThread
    public final void navigate(String str, NavOptions navOptions) {
        str.getClass();
        navigate$default(this, str, navOptions, (Navigator.Extras) null, 4, (Object) null);
    }

    @MainThread
    public void navigate(@IdRes int resId) {
        navigate(resId, (Bundle) null);
    }

    @MainThread
    public void navigate(@IdRes int resId, Bundle args) {
        navigate(resId, args, (NavOptions) null);
    }

    @MainThread
    public void navigate(@IdRes int resId, Bundle args, NavOptions navOptions) {
        navigate(resId, args, navOptions, (Navigator.Extras) null);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0041  */
    /* JADX WARN: Code duplicated, block: B:43:0x00af  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f1  */
    @MainThread
    public void navigate(@IdRes int resId, Bundle args, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        int destinationId;
        Bundle bundle;
        NavDestination navDestinationFindDestination$default;
        NavDestination.Companion companion;
        String displayName;
        NavDestination destination = this.backQueue.isEmpty() ? this._graph : this.backQueue.last().getDestination();
        if (destination != null) {
            NavAction action = destination.getAction(resId);
            if (action != null) {
                if (navOptions == null) {
                    navOptions = action.getNavOptions();
                }
                destinationId = action.getDestinationId();
                Bundle defaultArguments = action.getDefaultArguments();
                if (defaultArguments != null) {
                    bundle = new Bundle();
                    bundle.putAll(defaultArguments);
                }
                if (args != null) {
                    if (bundle == null) {
                        bundle = new Bundle();
                    }
                    bundle.putAll(args);
                }
                if (destinationId != 0 && navOptions != null && (navOptions.getPopUpToId() != -1 || navOptions.getPopUpToRoute() != null || navOptions.getPopUpToRouteClass() != null)) {
                    if (navOptions.getPopUpToRoute() != null) {
                        String popUpToRoute = navOptions.getPopUpToRoute();
                        popUpToRoute.getClass();
                        popBackStack$default(this, popUpToRoute, navOptions.getPopUpToInclusive(), false, 4, (Object) null);
                        return;
                    } else if (navOptions.getPopUpToRouteClass() != null) {
                        KClass<?> popUpToRouteClass = navOptions.getPopUpToRouteClass();
                        popUpToRouteClass.getClass();
                        popBackStack(RouteSerializerKt.generateHashCode(AbstractC1031d.m1289s(popUpToRouteClass)), navOptions.getPopUpToInclusive());
                        return;
                    } else {
                        if (navOptions.getPopUpToId() != -1) {
                            popBackStack(navOptions.getPopUpToId(), navOptions.getPopUpToInclusive());
                            return;
                        }
                        return;
                    }
                }
                if (destinationId != 0) {
                    navDestinationFindDestination$default = findDestination$default(this, destinationId, null, 2, null);
                    if (navDestinationFindDestination$default == null) {
                        companion = NavDestination.INSTANCE;
                        displayName = companion.getDisplayName(this.context, destinationId);
                        if (action == null) {
                            C0674b.m855v("Navigation action/destination ", displayName, " cannot be found from the current destination ", destination);
                            return;
                        }
                        StringBuilder sbM173x = AbstractC0074a.m173x("Navigation destination ", displayName, " referenced from action ");
                        sbM173x.append(companion.getDisplayName(this.context, resId));
                        sbM173x.append(" cannot be found from the current destination ");
                        sbM173x.append(destination);
                        throw new IllegalArgumentException(sbM173x.toString().toString());
                    }
                    navigate(navDestinationFindDestination$default, bundle, navOptions, navigatorExtras);
                    return;
                }
                C1929i.m3029k("Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo");
                return;
            }
            destinationId = resId;
            bundle = null;
            if (args != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putAll(args);
            }
            if (destinationId != 0) {
            }
            if (destinationId != 0) {
                navDestinationFindDestination$default = findDestination$default(this, destinationId, null, 2, null);
                if (navDestinationFindDestination$default == null) {
                    companion = NavDestination.INSTANCE;
                    displayName = companion.getDisplayName(this.context, destinationId);
                    if (action == null) {
                        C0674b.m855v("Navigation action/destination ", displayName, " cannot be found from the current destination ", destination);
                        return;
                    }
                    StringBuilder sbM173x2 = AbstractC0074a.m173x("Navigation destination ", displayName, " referenced from action ");
                    sbM173x2.append(companion.getDisplayName(this.context, resId));
                    sbM173x2.append(" cannot be found from the current destination ");
                    sbM173x2.append(destination);
                    throw new IllegalArgumentException(sbM173x2.toString().toString());
                }
                navigate(navDestinationFindDestination$default, bundle, navOptions, navigatorExtras);
                return;
            }
            C1929i.m3029k("Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo");
            return;
        }
        throw new IllegalStateException("No current destination found. Ensure a navigation graph has been set for NavController " + this + FilenameUtils.EXTENSION_SEPARATOR);
    }

    @MainThread
    public void navigate(Uri deepLink) {
        deepLink.getClass();
        navigate(new NavDeepLinkRequest(deepLink, null, null));
    }

    @MainThread
    public void navigate(Uri deepLink, NavOptions navOptions) {
        deepLink.getClass();
        navigate(new NavDeepLinkRequest(deepLink, null, null), navOptions, (Navigator.Extras) null);
    }

    @MainThread
    public void navigate(Uri deepLink, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        deepLink.getClass();
        navigate(new NavDeepLinkRequest(deepLink, null, null), navOptions, navigatorExtras);
    }

    @MainThread
    public void navigate(NavDeepLinkRequest request) {
        request.getClass();
        navigate(request, (NavOptions) null);
    }

    @MainThread
    public void navigate(NavDeepLinkRequest request, NavOptions navOptions) {
        request.getClass();
        navigate(request, navOptions, (Navigator.Extras) null);
    }

    @MainThread
    public void navigate(NavDeepLinkRequest request, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        request.getClass();
        if (this._graph != null) {
            NavGraph topGraph = getTopGraph(this.backQueue);
            NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLinkComprehensive = topGraph.matchDeepLinkComprehensive(request, true, true, topGraph);
            if (deepLinkMatchMatchDeepLinkComprehensive != null) {
                Bundle bundleAddInDefaultArgs = deepLinkMatchMatchDeepLinkComprehensive.getDestination().addInDefaultArgs(deepLinkMatchMatchDeepLinkComprehensive.getMatchingArgs());
                if (bundleAddInDefaultArgs == null) {
                    bundleAddInDefaultArgs = new Bundle();
                }
                NavDestination destination = deepLinkMatchMatchDeepLinkComprehensive.getDestination();
                Intent intent = new Intent();
                intent.setDataAndType(request.getUri(), request.getMimeType());
                intent.setAction(request.getAction());
                bundleAddInDefaultArgs.putParcelable(KEY_DEEP_LINK_INTENT, intent);
                navigate(destination, bundleAddInDefaultArgs, navOptions, navigatorExtras);
                return;
            }
            StringBuilder sb = new StringBuilder("Navigation destination that matches request ");
            sb.append(request);
            C0674b.m852s(sb, " cannot be found in the navigation graph ", this._graph);
            return;
        }
        C2467b.m3831u("Cannot navigate to ", request, ". Navigation graph has not been set for NavController ", this, 46);
    }

    @JvmOverloads
    @MainThread
    public final <T> void navigate(T t) {
        t.getClass();
        navigate$default(this, t, (NavOptions) null, (Navigator.Extras) null, 6, (Object) null);
    }

    @MainThread
    public void navigate(NavDirections directions) {
        directions.getClass();
        navigate(directions.getActionId(), directions.getArguments(), (NavOptions) null);
    }

    @MainThread
    public void navigate(NavDirections directions, NavOptions navOptions) {
        directions.getClass();
        navigate(directions.getActionId(), directions.getArguments(), navOptions);
    }

    @MainThread
    public void navigate(NavDirections directions, Navigator.Extras navigatorExtras) {
        directions.getClass();
        navigatorExtras.getClass();
        navigate(directions.getActionId(), directions.getArguments(), (NavOptions) null, navigatorExtras);
    }

    @MainThread
    public final void navigate(String route, Function1<? super NavOptionsBuilder, Unit> builder) {
        route.getClass();
        builder.getClass();
        navigate$default(this, route, NavOptionsBuilderKt.navOptions(builder), (Navigator.Extras) null, 4, (Object) null);
    }

    @JvmOverloads
    @MainThread
    public final void navigate(String route, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        route.getClass();
        if (this._graph != null) {
            NavGraph topGraph = getTopGraph(this.backQueue);
            NavDestination.DeepLinkMatch deepLinkMatchMatchRouteComprehensive = topGraph.matchRouteComprehensive(route, true, true, topGraph);
            if (deepLinkMatchMatchRouteComprehensive != null) {
                NavDestination destination = deepLinkMatchMatchRouteComprehensive.getDestination();
                Bundle bundleAddInDefaultArgs = destination.addInDefaultArgs(deepLinkMatchMatchRouteComprehensive.getMatchingArgs());
                if (bundleAddInDefaultArgs == null) {
                    bundleAddInDefaultArgs = new Bundle();
                }
                NavDestination destination2 = deepLinkMatchMatchRouteComprehensive.getDestination();
                Intent intent = new Intent();
                Uri uri = Uri.parse(NavDestination.INSTANCE.createRoute(destination.getRoute()));
                uri.getClass();
                intent.setDataAndType(uri, null);
                intent.setAction(null);
                bundleAddInDefaultArgs.putParcelable(KEY_DEEP_LINK_INTENT, intent);
                navigate(destination2, bundleAddInDefaultArgs, navOptions, navigatorExtras);
                return;
            }
            StringBuilder sbM173x = AbstractC0074a.m173x("Navigation destination that matches route ", route, " cannot be found in the navigation graph ");
            sbM173x.append(this._graph);
            throw new IllegalArgumentException(sbM173x.toString());
        }
        C2467b.m3831u("Cannot navigate to ", route, ". Navigation graph has not been set for NavController ", this, 46);
    }

    @MainThread
    public final <T> void navigate(T route, Function1<? super NavOptionsBuilder, Unit> builder) {
        route.getClass();
        builder.getClass();
        navigate$default(this, route, NavOptionsBuilderKt.navOptions(builder), (Navigator.Extras) null, 4, (Object) null);
    }

    @JvmOverloads
    @MainThread
    public final <T> void navigate(T route, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        route.getClass();
        navigate(generateRouteFilled(route), navOptions, navigatorExtras);
    }
}
