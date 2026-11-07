package com.android.server.am;

import android.app.ActivityOptions;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.TimeUtils;
import com.android.internal.os.IResultReceiver;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.wm.SafeActivityOptions;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final class PendingIntentRecord extends IIntentSender.Stub {
    public static final int FLAG_ACTIVITY_SENDER = 1;
    public static final int FLAG_BROADCAST_SENDER = 2;
    public static final int FLAG_SERVICE_SENDER = 4;
    private static final String TAG = "ActivityManager";
    final PendingIntentController controller;
    final Key key;
    String lastTag;
    String lastTagPrefix;
    private RemoteCallbackList<IResultReceiver> mCancelCallbacks;
    String stringName;
    final int uid;
    private ArrayMap<IBinder, Long> whitelistDuration;
    boolean sent = false;
    boolean canceled = false;
    private ArraySet<IBinder> mAllowBgActivityStartsForActivitySender = new ArraySet<>();
    private ArraySet<IBinder> mAllowBgActivityStartsForBroadcastSender = new ArraySet<>();
    private ArraySet<IBinder> mAllowBgActivityStartsForServiceSender = new ArraySet<>();
    public final WeakReference<PendingIntentRecord> ref = new WeakReference<>(this);

    static final class Key {
        private static final int ODD_PRIME_NUMBER = 37;
        final IBinder activity;
        Intent[] allIntents;
        String[] allResolvedTypes;
        final String featureId;
        final int flags;
        final int hashCode;
        final SafeActivityOptions options;
        final String packageName;
        final int requestCode;
        final Intent requestIntent;
        final String requestResolvedType;
        final int type;
        final int userId;
        final String who;

        Key(int _t, String _p, String _featureId, IBinder _a, String _w, int _r, Intent[] _i, String[] _it, int _f, SafeActivityOptions _o, int _userId) {
            this.type = _t;
            this.packageName = _p;
            this.featureId = _featureId;
            this.activity = _a;
            this.who = _w;
            this.requestCode = _r;
            this.requestIntent = _i != null ? _i[_i.length - 1] : null;
            this.requestResolvedType = _it != null ? _it[_it.length - 1] : null;
            this.allIntents = _i;
            this.allResolvedTypes = _it;
            this.flags = _f;
            this.options = _o;
            this.userId = _userId;
            int hash = (((((23 * 37) + _f) * 37) + _r) * 37) + _userId;
            hash = _w != null ? (hash * 37) + _w.hashCode() : hash;
            hash = _a != null ? (hash * 37) + _a.hashCode() : hash;
            Intent intent = this.requestIntent;
            hash = intent != null ? (hash * 37) + intent.filterHashCode() : hash;
            String str = this.requestResolvedType;
            this.hashCode = ((((str != null ? (hash * 37) + str.hashCode() : hash) * 37) + (_p != null ? _p.hashCode() : 0)) * 37) + _t;
        }

        public boolean equals(Object otherObj) {
            if (otherObj == null) {
                return false;
            }
            try {
                Key other = (Key) otherObj;
                if (this.type != other.type || this.userId != other.userId || !Objects.equals(this.packageName, other.packageName) || !Objects.equals(this.featureId, other.featureId) || this.activity != other.activity || !Objects.equals(this.who, other.who) || this.requestCode != other.requestCode) {
                    return false;
                }
                if (this.requestIntent != other.requestIntent) {
                    if (this.requestIntent != null) {
                        if (!this.requestIntent.filterEquals(other.requestIntent)) {
                            return false;
                        }
                    } else if (other.requestIntent != null) {
                        return false;
                    }
                }
                if (!Objects.equals(this.requestResolvedType, other.requestResolvedType) || this.flags != other.flags) {
                    return false;
                }
                return true;
            } catch (ClassCastException e) {
                return false;
            }
        }

        public int hashCode() {
            return this.hashCode;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("Key{");
            sb.append(typeName());
            sb.append(" pkg=");
            sb.append(this.packageName);
            if (this.featureId != null) {
                str = SliceClientPermissions.SliceAuthority.DELIMITER + this.featureId;
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(" intent=");
            Intent intent = this.requestIntent;
            sb.append(intent != null ? intent.toShortString(false, true, false, false) : "<null>");
            sb.append(" flags=0x");
            sb.append(Integer.toHexString(this.flags));
            sb.append(" u=");
            sb.append(this.userId);
            sb.append("} requestCode=");
            sb.append(this.requestCode);
            return sb.toString();
        }

        String typeName() {
            int i = this.type;
            if (i == 1) {
                return "broadcastIntent";
            }
            if (i == 2) {
                return "startActivity";
            }
            if (i == 3) {
                return "activityResult";
            }
            if (i == 4) {
                return "startService";
            }
            if (i == 5) {
                return "startForegroundService";
            }
            return Integer.toString(i);
        }
    }

    PendingIntentRecord(PendingIntentController _controller, Key _k, int _u) {
        this.controller = _controller;
        this.key = _k;
        this.uid = _u;
    }

    void setWhitelistDurationLocked(IBinder whitelistToken, long duration) {
        if (duration > 0) {
            if (this.whitelistDuration == null) {
                this.whitelistDuration = new ArrayMap<>();
            }
            this.whitelistDuration.put(whitelistToken, Long.valueOf(duration));
        } else {
            ArrayMap<IBinder, Long> arrayMap = this.whitelistDuration;
            if (arrayMap != null) {
                arrayMap.remove(whitelistToken);
                if (this.whitelistDuration.size() <= 0) {
                    this.whitelistDuration = null;
                }
            }
        }
        this.stringName = null;
    }

    void setAllowBgActivityStarts(IBinder token, int flags) {
        if (token == null) {
            return;
        }
        if ((flags & 1) != 0) {
            this.mAllowBgActivityStartsForActivitySender.add(token);
        }
        if ((flags & 2) != 0) {
            this.mAllowBgActivityStartsForBroadcastSender.add(token);
        }
        if ((flags & 4) != 0) {
            this.mAllowBgActivityStartsForServiceSender.add(token);
        }
    }

    void clearAllowBgActivityStarts(IBinder token) {
        if (token == null) {
            return;
        }
        this.mAllowBgActivityStartsForActivitySender.remove(token);
        this.mAllowBgActivityStartsForBroadcastSender.remove(token);
        this.mAllowBgActivityStartsForServiceSender.remove(token);
    }

    public void registerCancelListenerLocked(IResultReceiver receiver) {
        if (this.mCancelCallbacks == null) {
            this.mCancelCallbacks = new RemoteCallbackList<>();
        }
        this.mCancelCallbacks.register(receiver);
    }

    public void unregisterCancelListenerLocked(IResultReceiver receiver) {
        RemoteCallbackList<IResultReceiver> remoteCallbackList = this.mCancelCallbacks;
        if (remoteCallbackList == null) {
            return;
        }
        remoteCallbackList.unregister(receiver);
        if (this.mCancelCallbacks.getRegisteredCallbackCount() <= 0) {
            this.mCancelCallbacks = null;
        }
    }

    public RemoteCallbackList<IResultReceiver> detachCancelListenersLocked() {
        RemoteCallbackList<IResultReceiver> listeners = this.mCancelCallbacks;
        this.mCancelCallbacks = null;
        return listeners;
    }

    public void send(int code, Intent intent, String resolvedType, IBinder whitelistToken, IIntentReceiver finishedReceiver, String requiredPermission, Bundle options) throws Throwable {
        sendInner(code, intent, resolvedType, whitelistToken, finishedReceiver, requiredPermission, null, null, 0, 0, 0, options);
    }

    public int sendWithResult(int code, Intent intent, String resolvedType, IBinder whitelistToken, IIntentReceiver finishedReceiver, String requiredPermission, Bundle options) {
        return sendInner(code, intent, resolvedType, whitelistToken, finishedReceiver, requiredPermission, null, null, 0, 0, 0, options);
    }

    public static boolean isPendingIntentBalAllowedByCaller(ActivityOptions activityOptions) {
        if (activityOptions == null) {
            return true;
        }
        return isPendingIntentBalAllowedByCaller(activityOptions.toBundle());
    }

    private static boolean isPendingIntentBalAllowedByCaller(Bundle options) {
        if (options == null) {
            return true;
        }
        return options.getBoolean("android.pendingIntent.backgroundActivityAllowed", true);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0466 */
    /* JADX WARN: Code duplicated, block: B:100:0x01bc A[Catch: all -> 0x0206, TryCatch #23 {all -> 0x0206, blocks: (B:92:0x017d, B:94:0x018b, B:96:0x01a6, B:103:0x01cd, B:97:0x01ae, B:99:0x01b4, B:100:0x01bc, B:102:0x01c2, B:104:0x01e7, B:115:0x021a, B:120:0x022c, B:122:0x0236, B:136:0x0258, B:140:0x0269, B:146:0x0281, B:151:0x02a3, B:152:0x02b0), top: B:280:0x017d, inners: #33 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x01c2 A[Catch: all -> 0x0206, TryCatch #23 {all -> 0x0206, blocks: (B:92:0x017d, B:94:0x018b, B:96:0x01a6, B:103:0x01cd, B:97:0x01ae, B:99:0x01b4, B:100:0x01bc, B:102:0x01c2, B:104:0x01e7, B:115:0x021a, B:120:0x022c, B:122:0x0236, B:136:0x0258, B:140:0x0269, B:146:0x0281, B:151:0x02a3, B:152:0x02b0), top: B:280:0x017d, inners: #33 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x01e7 A[Catch: all -> 0x0206, TRY_LEAVE, TryCatch #23 {all -> 0x0206, blocks: (B:92:0x017d, B:94:0x018b, B:96:0x01a6, B:103:0x01cd, B:97:0x01ae, B:99:0x01b4, B:100:0x01bc, B:102:0x01c2, B:104:0x01e7, B:115:0x021a, B:120:0x022c, B:122:0x0236, B:136:0x0258, B:140:0x0269, B:146:0x0281, B:151:0x02a3, B:152:0x02b0), top: B:280:0x017d, inners: #33 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x020e  */
    /* JADX WARN: Code duplicated, block: B:110:0x0210  */
    /* JADX WARN: Code duplicated, block: B:115:0x021a A[Catch: all -> 0x0206, TRY_ENTER, TRY_LEAVE, TryCatch #23 {all -> 0x0206, blocks: (B:92:0x017d, B:94:0x018b, B:96:0x01a6, B:103:0x01cd, B:97:0x01ae, B:99:0x01b4, B:100:0x01bc, B:102:0x01c2, B:104:0x01e7, B:115:0x021a, B:120:0x022c, B:122:0x0236, B:136:0x0258, B:140:0x0269, B:146:0x0281, B:151:0x02a3, B:152:0x02b0), top: B:280:0x017d, inners: #33 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0226  */
    /* JADX WARN: Code duplicated, block: B:120:0x022c A[Catch: all -> 0x0206, TRY_ENTER, TryCatch #23 {all -> 0x0206, blocks: (B:92:0x017d, B:94:0x018b, B:96:0x01a6, B:103:0x01cd, B:97:0x01ae, B:99:0x01b4, B:100:0x01bc, B:102:0x01c2, B:104:0x01e7, B:115:0x021a, B:120:0x022c, B:122:0x0236, B:136:0x0258, B:140:0x0269, B:146:0x0281, B:151:0x02a3, B:152:0x02b0), top: B:280:0x017d, inners: #33 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x023e  */
    /* JADX WARN: Code duplicated, block: B:129:0x0247 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:130:0x0249  */
    /* JADX WARN: Code duplicated, block: B:132:0x024c  */
    /* JADX WARN: Code duplicated, block: B:134:0x0250 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:138:0x0264  */
    /* JADX WARN: Code duplicated, block: B:139:0x0267  */
    /* JADX WARN: Code duplicated, block: B:142:0x0279 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:145:0x027f  */
    /* JADX WARN: Code duplicated, block: B:152:0x02b0 A[Catch: all -> 0x0206, TRY_LEAVE, TryCatch #23 {all -> 0x0206, blocks: (B:92:0x017d, B:94:0x018b, B:96:0x01a6, B:103:0x01cd, B:97:0x01ae, B:99:0x01b4, B:100:0x01bc, B:102:0x01c2, B:104:0x01e7, B:115:0x021a, B:120:0x022c, B:122:0x0236, B:136:0x0258, B:140:0x0269, B:146:0x0281, B:151:0x02a3, B:152:0x02b0), top: B:280:0x017d, inners: #33 }] */
    /* JADX WARN: Code duplicated, block: B:158:0x02e4 A[Catch: all -> 0x0318, RuntimeException -> 0x0362, TRY_LEAVE, TryCatch #11 {RuntimeException -> 0x0362, blocks: (B:154:0x02d7, B:156:0x02dd, B:158:0x02e4), top: B:267:0x02d7 }] */
    /* JADX WARN: Code duplicated, block: B:166:0x031d  */
    /* JADX WARN: Code duplicated, block: B:178:0x0371  */
    /* JADX WARN: Code duplicated, block: B:181:0x0389  */
    /* JADX WARN: Code duplicated, block: B:182:0x038c  */
    /* JADX WARN: Code duplicated, block: B:185:0x039a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:188:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:191:0x03be  */
    /* JADX WARN: Code duplicated, block: B:200:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:221:0x040f  */
    /* JADX WARN: Code duplicated, block: B:250:0x011b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:252:0x00cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:267:0x02d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:280:0x017d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:281:0x0101 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:289:0x02dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:295:0x0258 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x00db A[Catch: all -> 0x00e3, TRY_LEAVE, TryCatch #1 {all -> 0x00e3, blocks: (B:54:0x00cd, B:56:0x00db, B:63:0x00ef), top: B:252:0x00cd }] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ef A[Catch: all -> 0x00e3, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00e3, blocks: (B:54:0x00cd, B:56:0x00db, B:63:0x00ef), top: B:252:0x00cd }] */
    /* JADX WARN: Code duplicated, block: B:65:0x00f8 A[Catch: all -> 0x0440, TRY_ENTER, TRY_LEAVE, TryCatch #18 {, blocks: (B:52:0x00c7, B:60:0x00e8, B:65:0x00f8), top: B:275:0x00c7 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0112  */
    /* JADX WARN: Code duplicated, block: B:79:0x0121 A[Catch: all -> 0x0163, TryCatch #0 {all -> 0x0163, blocks: (B:77:0x011b, B:79:0x0121, B:81:0x0128, B:83:0x014a, B:84:0x0156), top: B:250:0x011b }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0168  */
    /* JADX WARN: Code duplicated, block: B:94:0x018b A[Catch: all -> 0x0206, TryCatch #23 {all -> 0x0206, blocks: (B:92:0x017d, B:94:0x018b, B:96:0x01a6, B:103:0x01cd, B:97:0x01ae, B:99:0x01b4, B:100:0x01bc, B:102:0x01c2, B:104:0x01e7, B:115:0x021a, B:120:0x022c, B:122:0x0236, B:136:0x0258, B:140:0x0269, B:146:0x0281, B:151:0x02a3, B:152:0x02b0), top: B:280:0x017d, inners: #33 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01a6 A[Catch: all -> 0x0206, TryCatch #23 {all -> 0x0206, blocks: (B:92:0x017d, B:94:0x018b, B:96:0x01a6, B:103:0x01cd, B:97:0x01ae, B:99:0x01b4, B:100:0x01bc, B:102:0x01c2, B:104:0x01e7, B:115:0x021a, B:120:0x022c, B:122:0x0236, B:136:0x0258, B:140:0x0269, B:146:0x0281, B:151:0x02a3, B:152:0x02b0), top: B:280:0x017d, inners: #33 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01ae A[Catch: all -> 0x0206, TryCatch #23 {all -> 0x0206, blocks: (B:92:0x017d, B:94:0x018b, B:96:0x01a6, B:103:0x01cd, B:97:0x01ae, B:99:0x01b4, B:100:0x01bc, B:102:0x01c2, B:104:0x01e7, B:115:0x021a, B:120:0x022c, B:122:0x0236, B:136:0x0258, B:140:0x0269, B:146:0x0281, B:151:0x02a3, B:152:0x02b0), top: B:280:0x017d, inners: #33 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01b4 A[Catch: all -> 0x0206, TryCatch #23 {all -> 0x0206, blocks: (B:92:0x017d, B:94:0x018b, B:96:0x01a6, B:103:0x01cd, B:97:0x01ae, B:99:0x01b4, B:100:0x01bc, B:102:0x01c2, B:104:0x01e7, B:115:0x021a, B:120:0x022c, B:122:0x0236, B:136:0x0258, B:140:0x0269, B:146:0x0281, B:151:0x02a3, B:152:0x02b0), top: B:280:0x017d, inners: #33 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:104:0x01e7, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r20v0, types: [long] */
    /* JADX WARN: Type inference failed for: r20v10 */
    /* JADX WARN: Type inference failed for: r20v13 */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v15 */
    /* JADX WARN: Type inference failed for: r20v18 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v20 */
    /* JADX WARN: Type inference failed for: r20v21 */
    /* JADX WARN: Type inference failed for: r20v22 */
    /* JADX WARN: Type inference failed for: r20v23 */
    /* JADX WARN: Type inference failed for: r20v24 */
    /* JADX WARN: Type inference failed for: r20v25 */
    /* JADX WARN: Type inference failed for: r20v26 */
    /* JADX WARN: Type inference failed for: r20v27 */
    /* JADX WARN: Type inference failed for: r20v28 */
    /* JADX WARN: Type inference failed for: r20v29 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v5 */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r20v7 */
    /* JADX WARN: Type inference failed for: r20v8 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int sendInner(int r40, android.content.Intent r41, java.lang.String r42, android.os.IBinder r43, android.content.IIntentReceiver r44, java.lang.String r45, android.os.IBinder r46, java.lang.String r47, int r48, int r49, int r50, android.os.Bundle r51) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1128
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.PendingIntentRecord.sendInner(int, android.content.Intent, java.lang.String, android.os.IBinder, android.content.IIntentReceiver, java.lang.String, android.os.IBinder, java.lang.String, int, int, int, android.os.Bundle):int");
    }

    protected void finalize() throws Throwable {
        try {
            if (!this.canceled) {
                this.controller.mH.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.am.-$$Lambda$PendingIntentRecord$hlEHdgdG_SS5n3v7IRr7e6QZgLQ
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((PendingIntentRecord) obj).completeFinalize();
                    }
                }, this));
            }
        } finally {
            super/*java.lang.Object*/.finalize();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completeFinalize() {
        synchronized (this.controller.mLock) {
            WeakReference<PendingIntentRecord> current = this.controller.mIntentSenderRecords.get(this.key);
            if (current == this.ref) {
                this.controller.mIntentSenderRecords.remove(this.key);
                this.controller.decrementUidStatLocked(this);
            }
        }
    }

    public void dump(PrintWriter pw, String prefix) {
        pw.print(prefix);
        pw.print("uid=");
        pw.print(this.uid);
        pw.print(" packageName=");
        pw.print(this.key.packageName);
        pw.print(" featureId=");
        pw.print(this.key.featureId);
        pw.print(" type=");
        pw.print(this.key.typeName());
        pw.print(" flags=0x");
        pw.println(Integer.toHexString(this.key.flags));
        if (this.key.activity != null || this.key.who != null) {
            pw.print(prefix);
            pw.print("activity=");
            pw.print(this.key.activity);
            pw.print(" who=");
            pw.println(this.key.who);
        }
        if (this.key.requestCode != 0 || this.key.requestResolvedType != null) {
            pw.print(prefix);
            pw.print("requestCode=");
            pw.print(this.key.requestCode);
            pw.print(" requestResolvedType=");
            pw.println(this.key.requestResolvedType);
        }
        if (this.key.requestIntent != null) {
            pw.print(prefix);
            pw.print("requestIntent=");
            pw.println(this.key.requestIntent.toShortString(false, true, true, false));
        }
        if (this.sent || this.canceled) {
            pw.print(prefix);
            pw.print("sent=");
            pw.print(this.sent);
            pw.print(" canceled=");
            pw.println(this.canceled);
        }
        if (this.whitelistDuration != null) {
            pw.print(prefix);
            pw.print("whitelistDuration=");
            for (int i = 0; i < this.whitelistDuration.size(); i++) {
                if (i != 0) {
                    pw.print(", ");
                }
                pw.print(Integer.toHexString(System.identityHashCode(this.whitelistDuration.keyAt(i))));
                pw.print(":");
                TimeUtils.formatDuration(this.whitelistDuration.valueAt(i).longValue(), pw);
            }
            pw.println();
        }
        if (this.mCancelCallbacks != null) {
            pw.print(prefix);
            pw.println("mCancelCallbacks:");
            for (int i2 = 0; i2 < this.mCancelCallbacks.getRegisteredCallbackCount(); i2++) {
                pw.print(prefix);
                pw.print("  #");
                pw.print(i2);
                pw.print(": ");
                pw.println(this.mCancelCallbacks.getRegisteredCallbackItem(i2));
            }
        }
    }

    public String toString() {
        String str = this.stringName;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("PendingIntentRecord{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(' ');
        sb.append(this.key.packageName);
        if (this.key.featureId != null) {
            sb.append('/');
            sb.append(this.key.featureId);
        }
        sb.append(' ');
        sb.append(this.key.typeName());
        if (this.whitelistDuration != null) {
            sb.append(" (whitelist: ");
            for (int i = 0; i < this.whitelistDuration.size(); i++) {
                if (i != 0) {
                    sb.append(",");
                }
                sb.append(Integer.toHexString(System.identityHashCode(this.whitelistDuration.keyAt(i))));
                sb.append(":");
                TimeUtils.formatDuration(this.whitelistDuration.valueAt(i).longValue(), sb);
            }
            sb.append(")");
        }
        sb.append('}');
        String string = sb.toString();
        this.stringName = string;
        return string;
    }
}
