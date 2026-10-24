.class public final Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
.super Lorg/apache/poi/hssf/record/cf/Threshold;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->copy()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/cf/Threshold;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->copy()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object p0

    return-object p0
.end method
