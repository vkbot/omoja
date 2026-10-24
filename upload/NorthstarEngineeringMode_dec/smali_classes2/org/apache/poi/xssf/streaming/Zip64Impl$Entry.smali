.class Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/streaming/Zip64Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field compressedSize:I

.field crc:J

.field final filename:Ljava/lang/String;

.field offset:I

.field size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/Zip64Impl$Entry;->filename:Ljava/lang/String;

    return-void
.end method
