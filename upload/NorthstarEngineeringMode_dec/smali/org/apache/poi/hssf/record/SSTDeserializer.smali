.class Lorg/apache/poi/hssf/record/SSTDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private strings:Lorg/apache/poi/util/IntMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/SSTDeserializer;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/SSTDeserializer;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/IntMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/SSTDeserializer;->strings:Lorg/apache/poi/util/IntMapper;

    return-void
.end method

.method public static addToStringTable(Lorg/apache/poi/util/IntMapper;Lorg/apache/poi/hssf/record/common/UnicodeString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/IntMapper;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public manufactureStrings(ILorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_1

    :cond_0
    sget-object p0, Lorg/apache/poi/hssf/record/SSTDeserializer;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->h()La5/b;

    move-result-object p0

    invoke-static {v0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Ran out of data before creating all the strings! String at index {}"

    invoke-interface {p0, p1, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v1, p2}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iget-object v2, p0, Lorg/apache/poi/hssf/record/SSTDeserializer;->strings:Lorg/apache/poi/util/IntMapper;

    invoke-static {v2, v1}, Lorg/apache/poi/hssf/record/SSTDeserializer;->addToStringTable(Lorg/apache/poi/util/IntMapper;Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
