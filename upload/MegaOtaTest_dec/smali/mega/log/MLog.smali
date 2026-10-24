.class public Lmega/log/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field private static final CURRENT_STACK_LEVEL:I = 0x5

.field protected static final ENABLE_FULL_LOG:Z

.field protected static final LINE_LEN_LIMIT:I = 0xbb8

.field private static final LOG_CLASS_BLACKLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final LOG_WTF:I = 0xa

.field private static final SUFFIX:Ljava/lang/String; = ".java"

.field private static final TAG_DETAIL_LEVEL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultTag:Ljava/lang/String;

.field private static sEnableTrackTrace:Z

.field private static sLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lmega/log/MLog;->ENABLE_FULL_LOG:Z

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lmega/log/MLog;->sDefaultTag:Ljava/lang/String;

    .line 23
    sput-boolean v1, Lmega/log/MLog;->sEnableTrackTrace:Z

    .line 24
    const/4 v0, 0x2

    sput v0, Lmega/log/MLog;->sLogLevel:I

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmega/log/MLog;->LOG_CLASS_BLACKLIST:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmega/log/MLog;->TAG_DETAIL_LEVEL_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addToBlacklist(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lmega/log/MLog;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lmega/log/MLog;->LOG_CLASS_BLACKLIST:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    .line 41
    .end local p0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/StackTraceElement;)V
    .locals 5
    .param p0, "content"    # Ljava/lang/StringBuilder;
    .param p1, "trace"    # Ljava/lang/StackTraceElement;

    .line 216
    const-string v0, "[ ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "fileName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "clzName":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 222
    .local v2, "startOffset":I
    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 223
    .local v3, "endOffset":I
    if-lez v3, :cond_0

    .line 224
    invoke-virtual {p0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :goto_0
    const-string v4, ".java"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .end local v1    # "clzName":Ljava/lang/String;
    .end local v2    # "startOffset":I
    .end local v3    # "endOffset":I
    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 234
    .local v1, "lineNumber":I
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "methodName":Ljava/lang/String;
    const-string v3, ")"

    if-ltz v1, :cond_2

    .line 236
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 238
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :goto_2
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 68
    sget-object v0, Lmega/log/MLog;->sDefaultTag:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 76
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 104
    sget-object v0, Lmega/log/MLog;->sDefaultTag:Ljava/lang/String;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 112
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    return-void
.end method

.method private static genLogMsg(Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "trace"    # Ljava/lang/StackTraceElement;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "content":Ljava/lang/StringBuilder;
    invoke-static {v0, p1}, Lmega/log/MLog;->appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/StackTraceElement;)V

    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static generateSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "clzName"    # Ljava/lang/String;

    .line 244
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 245
    .local v0, "startOffset":I
    const-string v1, "$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 246
    .local v1, "endOffset":I
    if-lez v1, :cond_0

    .line 247
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 249
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getCurrentStackTrace()Ljava/lang/StackTraceElement;
    .locals 5

    .line 193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 194
    .local v0, "traceElements":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x5

    if-lt v2, v1, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    aget-object v1, v0, v2

    .line 199
    .local v1, "trace":Ljava/lang/StackTraceElement;
    const/4 v2, 0x6

    .line 200
    .local v2, "level":I
    :goto_0
    sget-object v3, Lmega/log/MLog;->LOG_CLASS_BLACKLIST:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 202
    aget-object v1, v0, v2

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_1
    return-object v1

    .line 195
    .end local v1    # "trace":Ljava/lang/StackTraceElement;
    .end local v2    # "level":I
    :cond_2
    :goto_1
    sget-object v1, Lmega/log/MLog;->sDefaultTag:Ljava/lang/String;

    const-string v2, "genLogMsg error, please check STACK_TRACE_INDEX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x0

    return-object v1
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 80
    sget-object v0, Lmega/log/MLog;->sDefaultTag:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 88
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public static init(IZLjava/lang/String;)V
    .locals 0
    .param p0, "logLevel"    # I
    .param p1, "enableTrack"    # Z
    .param p2, "defaultTag"    # Ljava/lang/String;

    .line 33
    sput p0, Lmega/log/MLog;->sLogLevel:I

    .line 34
    sput-boolean p1, Lmega/log/MLog;->sEnableTrackTrace:Z

    .line 35
    sput-object p2, Lmega/log/MLog;->sDefaultTag:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private static isLoggable(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .line 188
    sget-object v0, Lmega/log/MLog;->TAG_DETAIL_LEVEL_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 189
    .local v0, "logLevel":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 160
    sget v0, Lmega/log/MLog;->sLogLevel:I

    if-le v0, p0, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    sget-boolean v0, Lmega/log/MLog;->sEnableTrackTrace:Z

    if-nez v0, :cond_3

    .line 164
    if-nez p1, :cond_1

    const-string v0, "MLog"

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    move-object p1, v0

    .line 165
    invoke-static {p1, p0}, Lmega/log/MLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-static {p0, p1, p2, p3}, Lmega/log/LogImpl;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    :cond_2
    return-void

    .line 170
    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1, p0}, Lmega/log/MLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 171
    return-void

    .line 173
    :cond_4
    invoke-static {}, Lmega/log/MLog;->getCurrentStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 174
    .local v0, "currentStackTrace":Ljava/lang/StackTraceElement;
    if-nez p1, :cond_6

    .line 175
    if-eqz v0, :cond_5

    .line 176
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmega/log/MLog;->generateSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 178
    :cond_5
    const-string p1, "MLog"

    .line 180
    :goto_1
    invoke-static {p1, p0}, Lmega/log/MLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 181
    return-void

    .line 184
    :cond_6
    invoke-static {p2, v0}, Lmega/log/MLog;->genLogMsg(Ljava/lang/String;Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, p3}, Lmega/log/LogImpl;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    return-void
.end method

.method public static declared-synchronized setTagDetailLevel(Ljava/lang/String;I)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "logLevel"    # I

    const-class v0, Lmega/log/MLog;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lmega/log/MLog;->TAG_DETAIL_LEVEL_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v0

    return-void

    .line 51
    .end local p0    # "tag":Ljava/lang/String;
    .end local p1    # "logLevel":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static simpleD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    return-void
.end method

.method public static simpleE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    return-void
.end method

.method public static simpleI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    return-void
.end method

.method public static simpleV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    return-void
.end method

.method public static simpleW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lmega/log/MLog;->sDefaultTag:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 64
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 92
    sget-object v0, Lmega/log/MLog;->sDefaultTag:Ljava/lang/String;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 100
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 116
    sget-object v0, Lmega/log/MLog;->sDefaultTag:Ljava/lang/String;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 124
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 128
    const/16 v0, 0xa

    invoke-static {v0, p0, p1, p2}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1, p0, v0, p1}, Lmega/log/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method
