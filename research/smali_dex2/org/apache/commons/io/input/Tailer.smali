.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/Tailer$Builder;,
        Lorg/apache/commons/io/input/Tailer$Tailable;,
        Lorg/apache/commons/io/input/Tailer$TailablePath;,
        Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;,
        Lorg/apache/commons/io/input/Tailer$RandomAccessFileBridge;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_DELAY_MILLIS:I = 0x3e8

.field private static final DEFAULT_IGNORE_TOUCH:Z = false

.field private static final RAF_READ_ONLY_MODE:Ljava/lang/String; = "r"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final delayDuration:Ljava/time/Duration;

.field private final ignoreTouch:Z

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z

.field private final tailFromEnd:Z

.field private final tailable:Lorg/apache/commons/io/input/Tailer$Tailable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .registers 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    new-instance v1, Lorg/apache/commons/io/input/Tailer$TailablePath;

    invoke-static {p1}, Lc5/h;->i(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/commons/io/input/Tailer$TailablePath;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Lorg/apache/commons/io/input/Tailer$1;)V

    invoke-static {p4, p5}, Lorg/apache/commons/io/file/e;->o(J)Ljava/time/Duration;

    move-result-object v4

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Lorg/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x3e8

    .line 75
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 76
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v6, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 77
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v7, p6

    .line 80
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v7, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 78
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    sget-object v2, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/Tailer$Builder;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 6
    .line 7
    # getter for: Lorg/apache/commons/io/input/Tailer$Builder;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;
    invoke-static {p1}, Lorg/apache/commons/io/input/Tailer$Builder;->access$300(Lorg/apache/commons/io/input/Tailer$Builder;)Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "tailable"

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 17
    .line 18
    # getter for: Lorg/apache/commons/io/input/Tailer$Builder;->tailerListener:Lorg/apache/commons/io/input/TailerListener;
    invoke-static {p1}, Lorg/apache/commons/io/input/Tailer$Builder;->access$400(Lorg/apache/commons/io/input/Tailer$Builder;)Lorg/apache/commons/io/input/TailerListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "listener"

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 28
    .line 29
    # getter for: Lorg/apache/commons/io/input/Tailer$Builder;->delayDuration:Ljava/time/Duration;
    invoke-static {p1}, Lorg/apache/commons/io/input/Tailer$Builder;->access$500(Lorg/apache/commons/io/input/Tailer$Builder;)Ljava/time/Duration;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    .line 34
    .line 35
    # getter for: Lorg/apache/commons/io/input/Tailer$Builder;->tailFromEnd:Z
    invoke-static {p1}, Lorg/apache/commons/io/input/Tailer$Builder;->access$600(Lorg/apache/commons/io/input/Tailer$Builder;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput-boolean v1, p0, Lorg/apache/commons/io/input/Tailer;->tailFromEnd:Z

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->byteArray(I)[B

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 50
    .line 51
    invoke-interface {v0, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 52
    .line 53
    .line 54
    # getter for: Lorg/apache/commons/io/input/Tailer$Builder;->reOpen:Z
    invoke-static {p1}, Lorg/apache/commons/io/input/Tailer$Builder;->access$700(Lorg/apache/commons/io/input/Tailer$Builder;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 59
    .line 60
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->charset:Ljava/nio/charset/Charset;

    .line 65
    .line 66
    # getter for: Lorg/apache/commons/io/input/Tailer$Builder;->ignoreTouch:Z
    invoke-static {p1}, Lorg/apache/commons/io/input/Tailer$Builder;->access$800(Lorg/apache/commons/io/input/Tailer$Builder;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer;->ignoreTouch:Z

    .line 71
    .line 72
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/Tailer$Builder;Lorg/apache/commons/io/input/Tailer$1;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/Tailer;-><init>(Lorg/apache/commons/io/input/Tailer$Builder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZIZ)V
    .registers 10

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 83
    const-string v0, "tailable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/apache/commons/io/input/Tailer$Tailable;

    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 84
    const-string p1, "listener"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lorg/apache/commons/io/input/TailerListener;

    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 85
    iput-object p4, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    .line 86
    iput-boolean p5, p0, Lorg/apache/commons/io/input/Tailer;->tailFromEnd:Z

    .line 87
    invoke-static {p7}, Lorg/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 88
    invoke-interface {p3, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 89
    iput-boolean p6, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 90
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->charset:Ljava/nio/charset/Charset;

    .line 91
    iput-boolean p8, p0, Lorg/apache/commons/io/input/Tailer;->ignoreTouch:Z

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/Tailer$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/Tailer$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static create(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 20
    .line 21
    invoke-static {p3, p4}, Lorg/apache/commons/io/file/e;->o(J)Ljava/time/Duration;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, p5}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, p6}, Lorg/apache/commons/io/input/Tailer$Builder;->setReOpen(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, p7}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 50
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 55
    invoke-static {p2, p3}, Lorg/apache/commons/io/file/e;->o(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 59
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 60
    invoke-static {p2, p3}, Lorg/apache/commons/io/file/e;->o(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p0, p4}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 80
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 81
    invoke-static {p2, p3}, Lorg/apache/commons/io/file/e;->o(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 82
    invoke-virtual {p0, p4}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 83
    invoke-virtual {p0, p5}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)Lorg/apache/commons/io/input/Tailer;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 66
    invoke-static {p2, p3}, Lorg/apache/commons/io/file/e;->o(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 67
    invoke-virtual {p0, p4}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 68
    invoke-virtual {p0, p5}, Lorg/apache/commons/io/input/Tailer$Builder;->setReOpen(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 73
    invoke-static {p2, p3}, Lorg/apache/commons/io/file/e;->o(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 74
    invoke-virtual {p0, p4}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 75
    invoke-virtual {p0, p5}, Lorg/apache/commons/io/input/Tailer$Builder;->setReOpen(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0, p6}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method private readLines(Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J
    .registers 15

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    :try_start_7
    invoke-interface {p1}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->getPointer()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const/4 v3, 0x0

    .line 13
    move-wide v4, v1

    .line 14
    move v6, v3

    .line 15
    :goto_e
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-eqz v7, :cond_74

    .line 20
    .line 21
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 22
    .line 23
    invoke-interface {p1, v7}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->read([B)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/4 v8, -0x1

    .line 28
    if-eq v7, v8, :cond_74

    .line 29
    .line 30
    move v8, v3

    .line 31
    :goto_1e
    if-ge v8, v7, :cond_6f

    .line 32
    .line 33
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 34
    .line 35
    aget-byte v9, v9, v8

    .line 36
    .line 37
    const/16 v10, 0xa

    .line 38
    .line 39
    const-wide/16 v11, 0x1

    .line 40
    .line 41
    if-eq v9, v10, :cond_55

    .line 42
    .line 43
    const/16 v10, 0xd

    .line 44
    .line 45
    if-eq v9, v10, :cond_4e

    .line 46
    .line 47
    if-eqz v6, :cond_4a

    .line 48
    .line 49
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 50
    .line 51
    new-instance v2, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->charset:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    invoke-direct {v2, v6, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v2}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 66
    .line 67
    .line 68
    int-to-long v1, v8

    .line 69
    add-long/2addr v1, v4

    .line 70
    add-long/2addr v1, v11

    .line 71
    move v6, v3

    .line 72
    goto :goto_4a

    .line 73
    :catchall_48
    move-exception p1

    .line 74
    goto :goto_86

    .line 75
    :cond_4a
    :goto_4a
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_6c

    .line 79
    :cond_4e
    if-eqz v6, :cond_53

    .line 80
    .line 81
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    .line 83
    .line 84
    :cond_53
    const/4 v6, 0x1

    .line 85
    goto :goto_6c

    .line 86
    :cond_55
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 87
    .line 88
    new-instance v2, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->charset:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    invoke-direct {v2, v6, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v2}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 103
    .line 104
    .line 105
    int-to-long v1, v8

    .line 106
    add-long/2addr v1, v4

    .line 107
    add-long/2addr v1, v11

    .line 108
    move v6, v3

    .line 109
    :goto_6c
    add-int/lit8 v8, v8, 0x1

    .line 110
    .line 111
    goto :goto_1e

    .line 112
    :cond_6f
    invoke-interface {p1}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->getPointer()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    goto :goto_e

    .line 117
    :cond_74
    invoke-interface {p1, v1, v2}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 121
    .line 122
    instance-of v3, p1, Lorg/apache/commons/io/input/TailerListenerAdapter;

    .line 123
    .line 124
    if-eqz v3, :cond_82

    .line 125
    .line 126
    check-cast p1, Lorg/apache/commons/io/input/TailerListenerAdapter;

    .line 127
    .line 128
    invoke-virtual {p1}, Lorg/apache/commons/io/input/TailerListenerAdapter;->endOfFileReached()V
    :try_end_82
    .catchall {:try_start_7 .. :try_end_82} :catchall_48

    .line 129
    .line 130
    .line 131
    :cond_82
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 132
    .line 133
    .line 134
    return-wide v1

    .line 135
    :goto_86
    :try_start_86
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    .line 136
    .line 137
    .line 138
    goto :goto_8e

    .line 139
    :catchall_8a
    move-exception v0

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :goto_8e
    throw p1
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 3
    .line 4
    return-void
.end method

.method public getDelay()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/io/path/f;->c(Ljava/time/Duration;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getDelayDuration()Ljava/time/Duration;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 2
    .line 3
    instance-of v1, v0, Lorg/apache/commons/io/input/Tailer$TailablePath;

    .line 4
    .line 5
    if-eqz v1, :cond_11

    .line 6
    .line 7
    check-cast v0, Lorg/apache/commons/io/input/Tailer$TailablePath;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/io/input/Tailer$TailablePath;->getPath()Ljava/nio/file/Path;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lai/onnxruntime/c;->r(Ljava/nio/file/Path;)Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "Cannot extract java.io.File from "

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method public getRun()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTailable()Lorg/apache/commons/io/input/Tailer$Tailable;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lorg/apache/commons/io/file/attribute/FileTimes;->EPOCH:Ljava/nio/file/attribute/FileTime;

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    move-wide v4, v2

    .line 7
    :goto_6
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    .line 8
    .line 9
    .line 10
    move-result v6
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_a} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_1a
    .catchall {:try_start_1 .. :try_end_a} :catchall_17

    .line 11
    const-string v7, "r"

    .line 12
    .line 13
    if-eqz v6, :cond_43

    .line 14
    .line 15
    if-nez v0, :cond_43

    .line 16
    .line 17
    :try_start_10
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 18
    .line 19
    invoke-interface {v6, v7}, Lorg/apache/commons/io/input/Tailer$Tailable;->getRandomAccess(Ljava/lang/String;)Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_16} :catch_20
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_16} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_1a
    .catchall {:try_start_10 .. :try_end_16} :catchall_17

    .line 23
    goto :goto_25

    .line 24
    :catchall_17
    move-exception v1

    .line 25
    goto/16 :goto_105

    .line 26
    .line 27
    :catch_1a
    move-exception v1

    .line 28
    goto/16 :goto_f1

    .line 29
    .line 30
    :catch_1d
    move-exception v1

    .line 31
    goto/16 :goto_f7

    .line 32
    .line 33
    :catch_20
    :try_start_20
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 34
    .line 35
    invoke-interface {v6}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    .line 36
    .line 37
    .line 38
    :goto_25
    if-nez v0, :cond_2d

    .line 39
    .line 40
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    .line 41
    .line 42
    invoke-static {v6}, Lorg/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    .line 43
    .line 44
    .line 45
    goto :goto_6

    .line 46
    :cond_2d
    iget-boolean v1, p0, Lorg/apache/commons/io/input/Tailer;->tailFromEnd:Z

    .line 47
    .line 48
    if-eqz v1, :cond_38

    .line 49
    .line 50
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 51
    .line 52
    invoke-interface {v1}, Lorg/apache/commons/io/input/Tailer$Tailable;->size()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move-wide v4, v2

    .line 58
    :goto_39
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 59
    .line 60
    invoke-interface {v1}, Lorg/apache/commons/io/input/Tailer$Tailable;->lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v0, v4, v5}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V

    .line 65
    .line 66
    .line 67
    goto :goto_6

    .line 68
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_e3

    .line 73
    .line 74
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 75
    .line 76
    invoke-interface {v6, v1}, Lorg/apache/commons/io/input/Tailer$Tailable;->isNewer(Ljava/nio/file/attribute/FileTime;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 81
    .line 82
    invoke-interface {v8}, Lorg/apache/commons/io/input/Tailer$Tailable;->size()J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    cmp-long v8, v8, v4

    .line 87
    .line 88
    if-gez v8, :cond_a0

    .line 89
    .line 90
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 91
    .line 92
    invoke-interface {v6}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_5e} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5e} :catch_1a
    .catchall {:try_start_20 .. :try_end_5e} :catchall_17

    .line 93
    .line 94
    .line 95
    :try_start_5e
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 96
    .line 97
    invoke-interface {v6, v7}, Lorg/apache/commons/io/input/Tailer$Tailable;->getRandomAccess(Ljava/lang/String;)Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;

    .line 98
    .line 99
    .line 100
    move-result-object v6
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_88

    .line 101
    :try_start_64
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_6a
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    .line 102
    .line 103
    .line 104
    goto :goto_70

    .line 105
    :catchall_68
    move-exception v8

    .line 106
    goto :goto_8a

    .line 107
    :catch_6a
    move-exception v8

    .line 108
    :try_start_6b
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 109
    .line 110
    invoke-interface {v9, v8}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_68

    .line 111
    .line 112
    .line 113
    :goto_70
    if-eqz v0, :cond_85

    .line 114
    .line 115
    :try_start_72
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_72 .. :try_end_75} :catch_82
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_75} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_7a
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    .line 116
    .line 117
    .line 118
    goto :goto_85

    .line 119
    :catchall_76
    move-exception v1

    .line 120
    move-object v0, v6

    .line 121
    goto/16 :goto_105

    .line 122
    .line 123
    :catch_7a
    move-exception v1

    .line 124
    move-object v0, v6

    .line 125
    goto/16 :goto_f1

    .line 126
    .line 127
    :catch_7e
    move-exception v1

    .line 128
    move-object v0, v6

    .line 129
    goto/16 :goto_f7

    .line 130
    .line 131
    :catch_82
    move-wide v4, v2

    .line 132
    :catch_83
    move-object v0, v6

    .line 133
    goto :goto_95

    .line 134
    :cond_85
    :goto_85
    move-wide v4, v2

    .line 135
    move-object v0, v6

    .line 136
    goto :goto_43

    .line 137
    :catchall_88
    move-exception v8

    .line 138
    move-object v6, v0

    .line 139
    :goto_8a
    if-eqz v0, :cond_94

    .line 140
    .line 141
    :try_start_8c
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    .line 142
    .line 143
    .line 144
    goto :goto_94

    .line 145
    :catchall_90
    move-exception v0

    .line 146
    :try_start_91
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :cond_94
    :goto_94
    throw v8
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_95} :catch_83
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_95} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_95} :catch_7a
    .catchall {:try_start_91 .. :try_end_95} :catchall_76

    .line 150
    :goto_95
    :try_start_95
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 151
    .line 152
    invoke-interface {v6}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    .line 153
    .line 154
    .line 155
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    .line 156
    .line 157
    invoke-static {v6}, Lorg/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    .line 158
    .line 159
    .line 160
    goto :goto_43

    .line 161
    :cond_a0
    if-lez v8, :cond_ad

    .line 162
    .line 163
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v4

    .line 167
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 168
    .line 169
    invoke-interface {v1}, Lorg/apache/commons/io/input/Tailer$Tailable;->lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    goto :goto_c0

    .line 174
    :cond_ad
    if-eqz v6, :cond_c0

    .line 175
    .line 176
    iget-boolean v1, p0, Lorg/apache/commons/io/input/Tailer;->ignoreTouch:Z

    .line 177
    .line 178
    if-nez v1, :cond_ba

    .line 179
    .line 180
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V

    .line 181
    .line 182
    .line 183
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J

    .line 184
    .line 185
    .line 186
    move-result-wide v4

    .line 187
    :cond_ba
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 188
    .line 189
    invoke-interface {v1}, Lorg/apache/commons/io/input/Tailer$Tailable;->lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    :cond_c0
    :goto_c0
    iget-boolean v6, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 194
    .line 195
    if-eqz v6, :cond_c9

    .line 196
    .line 197
    if-eqz v0, :cond_c9

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 200
    .line 201
    .line 202
    :cond_c9
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    .line 203
    .line 204
    invoke-static {v6}, Lorg/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_43

    .line 212
    .line 213
    iget-boolean v6, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 214
    .line 215
    if-eqz v6, :cond_43

    .line 216
    .line 217
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 218
    .line 219
    invoke-interface {v6, v7}, Lorg/apache/commons/io/input/Tailer$Tailable;->getRandomAccess(Ljava/lang/String;)Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-interface {v0, v4, v5}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V
    :try_end_e1
    .catch Ljava/lang/InterruptedException; {:try_start_95 .. :try_end_e1} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_e1} :catch_1a
    .catchall {:try_start_95 .. :try_end_e1} :catchall_17

    .line 224
    .line 225
    .line 226
    goto/16 :goto_43

    .line 227
    .line 228
    :cond_e3
    :goto_e3
    :try_start_e3
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_e7

    .line 229
    .line 230
    .line 231
    goto :goto_ed

    .line 232
    :catch_e7
    move-exception v0

    .line 233
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 234
    .line 235
    invoke-interface {v1, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    .line 236
    .line 237
    .line 238
    :goto_ed
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->close()V

    .line 239
    .line 240
    .line 241
    goto :goto_104

    .line 242
    :goto_f1
    :try_start_f1
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 243
    .line 244
    invoke-interface {v2, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    .line 245
    .line 246
    .line 247
    goto :goto_e3

    .line 248
    :goto_f7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 253
    .line 254
    .line 255
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 256
    .line 257
    invoke-interface {v2, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_103
    .catchall {:try_start_f1 .. :try_end_103} :catchall_17

    .line 258
    .line 259
    .line 260
    goto :goto_e3

    .line 261
    :goto_104
    return-void

    .line 262
    :goto_105
    :try_start_105
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    .line 263
    .line 264
    .line 265
    goto :goto_10f

    .line 266
    :catch_109
    move-exception v0

    .line 267
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 268
    .line 269
    invoke-interface {v2, v0}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    .line 270
    .line 271
    .line 272
    :goto_10f
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->close()V

    .line 273
    .line 274
    .line 275
    throw v1
.end method

.method public stop()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
