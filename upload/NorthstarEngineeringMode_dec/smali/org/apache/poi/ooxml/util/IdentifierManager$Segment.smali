.class Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ooxml/util/IdentifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Segment"
.end annotation


# instance fields
.field private end:J

.field private start:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->start:J

    iput-wide p3, p0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->end:J

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->end:J

    return-wide v0
.end method

.method public static synthetic access$002(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->end:J

    return-wide p1
.end method

.method public static synthetic access$100(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->start:J

    return-wide v0
.end method

.method public static synthetic access$102(Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->start:J

    return-wide p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/ooxml/util/IdentifierManager$Segment;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
