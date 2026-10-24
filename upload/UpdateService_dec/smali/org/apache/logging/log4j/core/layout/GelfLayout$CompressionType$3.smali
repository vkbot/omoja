.class final enum Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType$3;
.super Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
.source "GelfLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;-><init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/layout/GelfLayout$1;)V

    return-void
.end method


# virtual methods
.method public createDeflaterOutputStream(Ljava/io/OutputStream;)Ljava/util/zip/DeflaterOutputStream;
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method
