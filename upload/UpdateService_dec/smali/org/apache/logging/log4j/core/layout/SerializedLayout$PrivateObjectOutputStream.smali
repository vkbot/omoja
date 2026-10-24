.class Lorg/apache/logging/log4j/core/layout/SerializedLayout$PrivateObjectOutputStream;
.super Ljava/io/ObjectOutputStream;
.source "SerializedLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/SerializedLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateObjectOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/logging/log4j/core/layout/SerializedLayout;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/layout/SerializedLayout;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            "this$0",
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/SerializedLayout$PrivateObjectOutputStream;->this$0:Lorg/apache/logging/log4j/core/layout/SerializedLayout;

    .line 117
    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 118
    return-void
.end method


# virtual methods
.method protected writeStreamHeader()V
    .locals 0

    .line 123
    return-void
.end method
