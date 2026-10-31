.class public final Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/MetadataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/BaseVector;->__reset(IILjava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public get(I)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 3

    .line 18
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataList;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;->get(Landroidx/emoji2/text/flatbuffer/MetadataList;I)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroidx/emoji2/text/flatbuffer/MetadataList;I)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .registers 4

    .line 1
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/BaseVector;->__element(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->bb:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    # invokes: Landroidx/emoji2/text/flatbuffer/Table;->__indirect(ILjava/nio/ByteBuffer;)I
    invoke-static {p2, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->access$000(ILjava/nio/ByteBuffer;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->bb:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
