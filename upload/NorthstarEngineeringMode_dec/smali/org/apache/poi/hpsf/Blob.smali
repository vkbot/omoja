.class public Lorg/apache/poi/hpsf/Blob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x989680

.field private static MAX_RECORD_LENGTH:I = 0x989680


# instance fields
.field private _value:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hpsf/Blob;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hpsf/Blob;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public read(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 4

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    int-to-long v1, v0

    sget v3, Lorg/apache/poi/hpsf/Blob;->MAX_RECORD_LENGTH:I

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/Blob;->_value:[B

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    :cond_0
    return-void
.end method
