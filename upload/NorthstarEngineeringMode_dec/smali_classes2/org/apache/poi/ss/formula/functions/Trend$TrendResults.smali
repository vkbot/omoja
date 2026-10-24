.class final Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Trend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrendResults"
.end annotation


# instance fields
.field private final resultHeight:I

.field private final resultWidth:I

.field private final vals:[D


# direct methods
.method public constructor <init>([DII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->vals:[D

    iput p2, p0, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->resultWidth:I

    iput p3, p0, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->resultHeight:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->vals:[D

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->resultHeight:I

    return p0
.end method

.method public static synthetic access$200(Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/Trend$TrendResults;->resultWidth:I

    return p0
.end method
