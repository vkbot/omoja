.class public final Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry$Companion;
.super Ljava/lang/Object;
.source "FatLfnDirectoryEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFatLfnDirectoryEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FatLfnDirectoryEntry.kt\ncom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry$Companion\n*L\n1#1,266:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u001c\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry$Companion;",
        "",
        "()V",
        "copyDateTime",
        "",
        "from",
        "Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;",
        "to",
        "read",
        "actualEntry",
        "Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;",
        "lfnParts",
        "",
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

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 220
    invoke-direct {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final copyDateTime(Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;)V
    .locals 4
    .param p1, "from"    # Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;
    .param p2, "to"    # Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->getActualEntry()Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    move-result-object v0

    .line 259
    .local v0, "actualFrom":Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;
    invoke-virtual {p2}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->getActualEntry()Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    move-result-object v1

    .line 260
    .local v1, "actualTo":Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;
    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->getCreatedDateTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->setCreatedDateTime(J)V

    .line 261
    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->getLastAccessedDateTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->setLastAccessedDateTime(J)V

    .line 262
    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->getLastModifiedDateTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->setLastModifiedDateTime(J)V

    .line 263
    return-void
.end method

.method public final read(Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;Ljava/util/List;)Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;
    .locals 4
    .param p1, "actualEntry"    # Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;
    .param p2, "lfnParts"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;",
            "Ljava/util/List<",
            "Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;",
            ">;)",
            "Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;"
        }
    .end annotation

    const-string v0, "actualEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lfnParts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 236
    .local v0, "builder":Ljava/lang/StringBuilder;
    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 238
    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 239
    .local v1, "i":I
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v3, v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->extractLfnPart(Ljava/lang/StringBuilder;)V

    .line 238
    nop

    .end local v1    # "i":I
    goto :goto_0

    .line 242
    :cond_0
    new-instance v1, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v3, v2}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;-><init>(Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 245
    :cond_1
    new-instance v1, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    invoke-direct {v1, p1, v2, v2}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;-><init>(Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
