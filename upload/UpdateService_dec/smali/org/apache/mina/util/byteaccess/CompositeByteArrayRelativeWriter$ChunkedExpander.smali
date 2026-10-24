.class public Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;
.super Ljava/lang/Object;
.source "CompositeByteArrayRelativeWriter.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChunkedExpander"
.end annotation


# instance fields
.field private final baf:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

.field private final newComponentSize:I


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;I)V
    .locals 0
    .param p1, "baf"    # Lorg/apache/mina/util/byteaccess/ByteArrayFactory;
    .param p2, "newComponentSize"    # I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;->baf:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    .line 88
    iput p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;->newComponentSize:I

    .line 89
    return-void
.end method


# virtual methods
.method public expand(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V
    .locals 3
    .param p1, "cba"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    .param p2, "minSize"    # I

    .line 96
    move v0, p2

    .line 97
    .local v0, "remaining":I
    :goto_0
    if-lez v0, :cond_0

    .line 98
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;->baf:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;->newComponentSize:I

    invoke-interface {v1, v2}, Lorg/apache/mina/util/byteaccess/ByteArrayFactory;->create(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    .line 99
    .local v1, "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-virtual {p1, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 100
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;->newComponentSize:I

    sub-int/2addr v0, v2

    .line 101
    .end local v1    # "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method
