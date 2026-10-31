.class public final Lkotlin/time/Instant;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Instant$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \'2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\'B\u0019\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u000e\u001a\u00020\u0005J\u0018\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\u0008\u0010\u001d\u001a\u00020\u0007H\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u001cH\u0002J\u0019\u0010!\u001a\u00020\"2\n\u0010#\u001a\u00060$j\u0002`%H\u0002\u00a2\u0006\u0002\u0010&R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006("
    }
    d2 = {
        "Lkotlin/time/Instant;",
        "",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "epochSeconds",
        "",
        "nanosecondsOfSecond",
        "",
        "<init>",
        "(JI)V",
        "getEpochSeconds",
        "()J",
        "getNanosecondsOfSecond",
        "()I",
        "toEpochMilliseconds",
        "plus",
        "duration",
        "Lkotlin/time/Duration;",
        "plus-LRDsOJo",
        "(J)Lkotlin/time/Instant;",
        "minus",
        "minus-LRDsOJo",
        "other",
        "minus-UwyO8pc",
        "(Lkotlin/time/Instant;)J",
        "compareTo",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "",
        "writeReplace",
        "readObject",
        "",
        "input",
        "Ljava/io/ObjectInputStream;",
        "Lkotlin/internal/ReadObjectParameterType;",
        "(Ljava/io/ObjectInputStream;)V",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "2.1"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/InstantKt\n+ 4 Duration.kt\nkotlin/time/Duration\n*L\n1#1,864:1\n1#2:865\n803#3,14:866\n786#3,6:880\n803#3,14:886\n786#3,6:900\n786#3,6:907\n548#4:906\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant\n*L\n150#1:866,14\n153#1:880,6\n161#1:886,14\n164#1:900,6\n188#1:907,6\n184#1:906\n*E\n"
    }
.end annotation

.annotation build Lkotlin/time/ExperimentalTime;
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/Instant$Companion;

.field private static final MAX:Lkotlin/time/Instant;

.field private static final MIN:Lkotlin/time/Instant;


# instance fields
.field private final epochSeconds:J

.field private final nanosecondsOfSecond:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lkotlin/time/Instant$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/time/Instant$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    .line 8
    .line 9
    new-instance v0, Lkotlin/time/Instant;

    .line 10
    .line 11
    const-wide v1, -0x701cefeb9bec00L

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/Instant;-><init>(JI)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 21
    .line 22
    new-instance v0, Lkotlin/time/Instant;

    .line 23
    .line 24
    const-wide v1, 0x701cd2fa9578ffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const v3, 0x3b9ac9ff

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/Instant;-><init>(JI)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lkotlin/time/Instant;->MAX:Lkotlin/time/Instant;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(JI)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 5
    .line 6
    iput p3, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 7
    .line 8
    const-wide v0, -0x701cefeb9bec00L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmp-long p3, v0, p1

    .line 14
    .line 15
    if-gtz p3, :cond_1a

    .line 16
    .line 17
    const-wide v0, 0x701cd2fa957900L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long p1, p1, v0

    .line 23
    .line 24
    if-gez p1, :cond_1a

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    const-string p1, "Instant exceeds minimum or maximum instant"

    .line 28
    .line 29
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    throw p1
.end method

.method public static final synthetic access$getMAX$cp()Lkotlin/time/Instant;
    .registers 1

    .line 1
    sget-object v0, Lkotlin/time/Instant;->MAX:Lkotlin/time/Instant;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMIN$cp()Lkotlin/time/Instant;
    .registers 1

    .line 1
    sget-object v0, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 2
    .line 3
    return-object v0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/io/InvalidObjectException;

    .line 2
    .line 3
    const-string v0, "Deserialization is supported via proxy only"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0}, Lkotlin/time/InstantJvmKt;->serializedInstant(Lkotlin/time/Instant;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 24
    check-cast p1, Lkotlin/time/Instant;

    invoke-virtual {p0, p1}, Lkotlin/time/Instant;->compareTo(Lkotlin/time/Instant;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lkotlin/time/Instant;)I
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 5
    .line 6
    iget-wide v2, p1, Lkotlin/time/Instant;->epochSeconds:J

    .line 7
    .line 8
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_e

    .line 13
    .line 14
    return v0

    .line 15
    :cond_e
    iget v0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 16
    .line 17
    iget p1, p1, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 18
    .line 19
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    if-eq p0, p1, :cond_19

    .line 2
    .line 3
    instance-of v0, p1, Lkotlin/time/Instant;

    .line 4
    .line 5
    if-eqz v0, :cond_17

    .line 6
    .line 7
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 8
    .line 9
    check-cast p1, Lkotlin/time/Instant;

    .line 10
    .line 11
    iget-wide v2, p1, Lkotlin/time/Instant;->epochSeconds:J

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_17

    .line 16
    .line 17
    iget v0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 18
    .line 19
    iget p1, p1, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 20
    .line 21
    if-ne v0, p1, :cond_17

    .line 22
    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_19
    :goto_19
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method public final getEpochSeconds()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getNanosecondsOfSecond()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 8
    .line 9
    mul-int/lit8 v1, v1, 0x33

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    return v1
.end method

.method public final minus-LRDsOJo(J)Lkotlin/time/Instant;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlin/time/Instant;->plus-LRDsOJo(J)Lkotlin/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final minus-UwyO8pc(Lkotlin/time/Instant;)J
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 5
    .line 6
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 7
    .line 8
    iget-wide v2, p1, Lkotlin/time/Instant;->epochSeconds:J

    .line 9
    .line 10
    sub-long/2addr v0, v2

    .line 11
    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget v2, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 18
    .line 19
    iget p1, p1, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 20
    .line 21
    sub-int/2addr v2, p1

    .line 22
    sget-object p1, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 23
    .line 24
    invoke-static {v2, p1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0
.end method

.method public final plus-LRDsOJo(J)Lkotlin/time/Instant;
    .registers 14

    .line 1
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v5, v0, v3

    .line 12
    .line 13
    if-nez v5, :cond_11

    .line 14
    .line 15
    if-nez v2, :cond_11

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_11
    iget-wide v5, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 19
    .line 20
    add-long v7, v5, v0

    .line 21
    .line 22
    xor-long v9, v5, v7

    .line 23
    .line 24
    cmp-long v9, v9, v3

    .line 25
    .line 26
    if-gez v9, :cond_2c

    .line 27
    .line 28
    xor-long/2addr v0, v5

    .line 29
    cmp-long v0, v0, v3

    .line 30
    .line 31
    if-ltz v0, :cond_2c

    .line 32
    .line 33
    invoke-static {p1, p2}, Lkotlin/time/Duration;->isPositive-impl(J)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_29

    .line 38
    .line 39
    sget-object p1, Lkotlin/time/Instant;->MAX:Lkotlin/time/Instant;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_29
    sget-object p1, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_2c
    iget p1, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 46
    .line 47
    add-int/2addr p1, v2

    .line 48
    sget-object p2, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    .line 49
    .line 50
    invoke-virtual {p2, v7, v8, p1}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public final toEpochMilliseconds()J
    .registers 13

    .line 1
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    const v5, 0xf4240

    .line 8
    .line 9
    .line 10
    const-wide/16 v6, 0x3e8

    .line 11
    .line 12
    const-wide/16 v8, 0x1

    .line 13
    .line 14
    if-ltz v4, :cond_3c

    .line 15
    .line 16
    cmp-long v4, v0, v8

    .line 17
    .line 18
    const-wide v8, 0x7fffffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    if-nez v4, :cond_19

    .line 24
    .line 25
    goto :goto_29

    .line 26
    :cond_19
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-eqz v4, :cond_28

    .line 29
    .line 30
    mul-long v10, v0, v6

    .line 31
    .line 32
    div-long v6, v10, v6

    .line 33
    .line 34
    cmp-long v0, v6, v0

    .line 35
    .line 36
    if-nez v0, :cond_27

    .line 37
    .line 38
    move-wide v6, v10

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    return-wide v8

    .line 41
    :cond_28
    move-wide v6, v2

    .line 42
    :goto_29
    iget v0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 43
    .line 44
    div-int/2addr v0, v5

    .line 45
    int-to-long v0, v0

    .line 46
    add-long v4, v6, v0

    .line 47
    .line 48
    xor-long v10, v6, v4

    .line 49
    .line 50
    cmp-long v10, v10, v2

    .line 51
    .line 52
    if-gez v10, :cond_3b

    .line 53
    .line 54
    xor-long/2addr v0, v6

    .line 55
    cmp-long v0, v0, v2

    .line 56
    .line 57
    if-ltz v0, :cond_3b

    .line 58
    .line 59
    return-wide v8

    .line 60
    :cond_3b
    return-wide v4

    .line 61
    :cond_3c
    add-long/2addr v0, v8

    .line 62
    cmp-long v4, v0, v8

    .line 63
    .line 64
    const-wide/high16 v8, -0x8000000000000000L

    .line 65
    .line 66
    if-nez v4, :cond_44

    .line 67
    .line 68
    goto :goto_54

    .line 69
    :cond_44
    cmp-long v4, v0, v2

    .line 70
    .line 71
    if-eqz v4, :cond_53

    .line 72
    .line 73
    mul-long v10, v0, v6

    .line 74
    .line 75
    div-long v6, v10, v6

    .line 76
    .line 77
    cmp-long v0, v6, v0

    .line 78
    .line 79
    if-nez v0, :cond_52

    .line 80
    .line 81
    move-wide v6, v10

    .line 82
    goto :goto_54

    .line 83
    :cond_52
    return-wide v8

    .line 84
    :cond_53
    move-wide v6, v2

    .line 85
    :goto_54
    iget v0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 86
    .line 87
    div-int/2addr v0, v5

    .line 88
    add-int/lit16 v0, v0, -0x3e8

    .line 89
    .line 90
    int-to-long v0, v0

    .line 91
    add-long v4, v6, v0

    .line 92
    .line 93
    xor-long v10, v6, v4

    .line 94
    .line 95
    cmp-long v10, v10, v2

    .line 96
    .line 97
    if-gez v10, :cond_68

    .line 98
    .line 99
    xor-long/2addr v0, v6

    .line 100
    cmp-long v0, v0, v2

    .line 101
    .line 102
    if-ltz v0, :cond_68

    .line 103
    .line 104
    return-wide v8

    .line 105
    :cond_68
    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    # invokes: Lkotlin/time/InstantKt;->formatIso(Lkotlin/time/Instant;)Ljava/lang/String;
    invoke-static {p0}, Lkotlin/time/InstantKt;->access$formatIso(Lkotlin/time/Instant;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
