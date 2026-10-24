.class public final Lorg/apache/poi/ddf/EscherDump;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(I[BLjava/io/PrintStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p2, v0, p1, p3}, Lorg/apache/poi/ddf/EscherDump;->dump([BIILjava/io/PrintStream;)V

    return-void
.end method

.method public dump([BIILjava/io/PrintStream;)V
    .locals 3

    .line 1
    new-instance p0, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;

    invoke-direct {p0}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;-><init>()V

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 2
    invoke-interface {p0, p1, v0}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1, v0, p0}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v2

    .line 4
    invoke-virtual {p4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
