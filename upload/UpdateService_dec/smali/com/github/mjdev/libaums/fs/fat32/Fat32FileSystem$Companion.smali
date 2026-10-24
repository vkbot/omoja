.class public final Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem$Companion;
.super Ljava/lang/Object;
.source "Fat32FileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "read",
        "Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem;",
        "blockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 95
    invoke-direct {p0}, Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem;
    .locals 4
    .param p1, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "blockDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 115
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const-string v1, "buffer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->read(JLjava/nio/ByteBuffer;)V

    .line 116
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 125
    nop

    .line 118
    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x0

    const/16 v3, 0x46

    if-ne v1, v3, :cond_1

    .line 119
    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    int-to-char v1, v1

    const/16 v3, 0x41

    if-ne v1, v3, :cond_1

    .line 120
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    int-to-char v3, v3

    if-ne v3, v1, :cond_1

    .line 121
    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    int-to-char v1, v1

    const/16 v3, 0x33

    if-ne v1, v3, :cond_1

    .line 122
    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    int-to-char v1, v1

    const/16 v3, 0x32

    if-ne v1, v3, :cond_1

    .line 123
    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    int-to-char v1, v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1

    .line 124
    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    int-to-char v1, v1

    if-ne v1, v3, :cond_1

    .line 125
    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    int-to-char v1, v1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem;

    invoke-direct {v1, p1, v0, v2}, Lcom/github/mjdev/libaums/fs/fat32/Fat32FileSystem;-><init>(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v1

    goto :goto_1

    .line 126
    :cond_1
    :goto_0
    nop

    .line 118
    :goto_1
    return-object v2
.end method
