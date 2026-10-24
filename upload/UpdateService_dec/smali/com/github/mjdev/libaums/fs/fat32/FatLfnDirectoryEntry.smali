.class public final Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;
.super Ljava/lang/Object;
.source "FatLfnDirectoryEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFatLfnDirectoryEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FatLfnDirectoryEntry.kt\ncom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,266:1\n640#2,9:267\n37#3,2:276\n*E\n*S KotlinDebug\n*F\n+ 1 FatLfnDirectoryEntry.kt\ncom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry\n*L\n96#1,9:267\n96#1,2:276\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0019\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0019\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020#J\u0006\u0010\'\u001a\u00020#J\u0006\u0010(\u001a\u00020#J\u0016\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010+\u001a\u00020\u0003H\u0016R\u001e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001bR\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00020\u00038@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010\u0016\"\u0004\u0008!\u0010\u0018\u00a8\u0006-"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;",
        "",
        "name",
        "",
        "shortName",
        "Lcom/github/mjdev/libaums/fs/fat32/ShortName;",
        "(Ljava/lang/String;Lcom/github/mjdev/libaums/fs/fat32/ShortName;)V",
        "actualEntry",
        "Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;",
        "lfnName",
        "(Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;Ljava/lang/String;)V",
        "<set-?>",
        "getActualEntry",
        "()Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;",
        "entryCount",
        "",
        "getEntryCount",
        "()I",
        "newSize",
        "",
        "fileSize",
        "getFileSize",
        "()J",
        "setFileSize",
        "(J)V",
        "isDirectory",
        "",
        "()Z",
        "getName$libaums_release",
        "()Ljava/lang/String;",
        "newStartCluster",
        "startCluster",
        "getStartCluster",
        "setStartCluster",
        "serialize",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "setDirectory",
        "setLastAccessedTimeToNow",
        "setLastModifiedTimeToNow",
        "setName",
        "newName",
        "toString",
        "Companion",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry$Companion;


# instance fields
.field private actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

.field private lfnName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->Companion:Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;Ljava/lang/String;)V
    .locals 0
    .param p1, "actualEntry"    # Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;
    .param p2, "lfnName"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->lfnName:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "actualEntry"    # Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;
    .param p2, "lfnName"    # Ljava/lang/String;
    .param p3, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;-><init>(Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/github/mjdev/libaums/fs/fat32/ShortName;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "shortName"    # Lcom/github/mjdev/libaums/fs/fat32/ShortName;

    const-string v0, "shortName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;-><init>(Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v0, p2}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->setShortName(Lcom/github/mjdev/libaums/fs/fat32/ShortName;)V

    return-void
.end method

.method public static final synthetic access$getActualEntry$p(Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;)Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;
    .locals 1
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;

    .line 34
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    return-object v0
.end method

.method public static final synthetic access$setActualEntry$p(Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;
    .param p1, "<set-?>"    # Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    .line 34
    iput-object p1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    return-void
.end method


# virtual methods
.method public final getActualEntry()Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    return-object v0
.end method

.method public final getEntryCount()I
    .locals 5

    .line 69
    const/4 v0, 0x1

    .line 72
    .local v0, "result":I
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->lfnName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .local v1, "lfnName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 73
    .local v2, "$i$a$-let-FatLfnDirectoryEntry$entryCount$1":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 74
    .local v3, "len":I
    div-int/lit8 v4, v3, 0xd

    add-int/2addr v0, v4

    .line 75
    rem-int/lit8 v4, v3, 0xd

    if-eqz v4, :cond_0

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    .end local v3    # "len":I
    :cond_0
    nop

    .line 72
    .end local v1    # "lfnName":Ljava/lang/String;
    .end local v2    # "$i$a$-let-FatLfnDirectoryEntry$entryCount$1":I
    nop

    .line 79
    :cond_1
    return v0
.end method

.method public final getFileSize()J
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getName$libaums_release()Ljava/lang/String;
    .locals 11

    .line 90
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->lfnName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "$i$a$-let-FatLfnDirectoryEntry$name$1":I
    return-object v0

    .line 92
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-FatLfnDirectoryEntry$name$1":I
    :cond_0
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->getShortName()Lcom/github/mjdev/libaums/fs/fat32/ShortName;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->getString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "sname":Ljava/lang/String;
    move-object v1, v0

    .line 94
    .local v1, "name":Ljava/lang/String;
    const-string v2, ""

    .line 96
    .local v2, "ext":Ljava/lang/String;
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "."

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v3

    .local v3, "$this$dropLastWhile$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 267
    .local v4, "$i$f$dropLastWhile":I
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_4

    .line 268
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 269
    .local v6, "iterator$iv":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 270
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v9, 0x0

    .line 96
    .local v9, "$i$a$-dropLastWhile-FatLfnDirectoryEntry$name$split$1":I
    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v5

    .end local v8    # "it":Ljava/lang/String;
    .end local v9    # "$i$a$-dropLastWhile-FatLfnDirectoryEntry$name$split$1":I
    :goto_1
    if-nez v8, :cond_3

    .line 271
    move-object v8, v3

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v8

    goto :goto_2

    .line 269
    :cond_3
    goto :goto_0

    .line 275
    .end local v6    # "iterator$iv":Ljava/util/ListIterator;
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .end local v3    # "$this$dropLastWhile$iv":Ljava/util/List;
    .end local v4    # "$i$f$dropLastWhile":I
    :goto_2
    move-object v3, v8

    check-cast v3, Ljava/util/Collection;

    .line 96
    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 276
    .local v4, "$i$f$toTypedArray":I
    move-object v6, v3

    .line 277
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    new-array v8, v5, [Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 96
    .end local v3    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    move-object v3, v8

    check-cast v3, [Ljava/lang/String;

    .line 97
    .local v3, "split":[Ljava/lang/String;
    array-length v4, v3

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 98
    aget-object v1, v3, v5

    .line 99
    aget-object v2, v3, v5

    .line 102
    :cond_5
    iget-object v4, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v4}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->isShortNameLowerCase()Z

    move-result v4

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    const-string v8, "(this as java.lang.String).toLowerCase()"

    if-eqz v4, :cond_7

    .line 103
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_3

    :cond_6
    new-instance v4, Lkotlin/TypeCastException;

    invoke-direct {v4, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v4}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->isShortNameExtLowerCase()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 105
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_4

    :cond_8
    new-instance v4, Lkotlin/TypeCastException;

    invoke-direct {v4, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_9
    :goto_4
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_a

    move v5, v7

    :cond_a
    if-eqz v5, :cond_b

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_b
    return-object v1

    .line 277
    .local v3, "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v4    # "$i$f$toTypedArray":I
    .restart local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_c
    new-instance v5, Lkotlin/TypeCastException;

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v5, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getStartCluster()J
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->getStartCluster()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isDirectory()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public final serialize(Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->lfnName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .local v2, "lfnName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 161
    .local v0, "$i$a$-let-FatLfnDirectoryEntry$serialize$1":I
    iget-object v1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v1}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->getShortName()Lcom/github/mjdev/libaums/fs/fat32/ShortName;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1}, Lcom/github/mjdev/libaums/fs/fat32/ShortName;->calculateCheckSum()B

    move-result v9

    .line 162
    .local v9, "checksum":B
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->getEntryCount()I

    move-result v10

    .line 165
    .local v10, "entrySize":I
    add-int/lit8 v7, v10, -0x2

    .line 167
    .local v7, "index":I
    sget-object v1, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->Companion:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry$Companion;

    mul-int/lit8 v3, v7, 0xd

    .line 168
    add-int/lit8 v5, v7, 0x1

    const/4 v6, 0x1

    .line 167
    move v4, v9

    invoke-virtual/range {v1 .. v6}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry$Companion;->createLfnPart(Ljava/lang/String;IBIZ)Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    move-result-object v1

    .line 169
    .local v1, "entry":Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;
    invoke-virtual {v1, p1}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->serialize(Ljava/nio/ByteBuffer;)V

    .line 171
    :goto_0
    add-int/lit8 v11, v7, -0x1

    .end local v7    # "index":I
    .local v11, "index":I
    if-lez v7, :cond_1

    .line 172
    sget-object v3, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->Companion:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry$Companion;

    mul-int/lit8 v5, v11, 0xd

    add-int/lit8 v7, v11, 0x1

    .line 173
    const/4 v8, 0x0

    .line 172
    move-object v4, v2

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry$Companion;->createLfnPart(Ljava/lang/String;IBIZ)Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    move-result-object v1

    .line 174
    invoke-virtual {v1, p1}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->serialize(Ljava/nio/ByteBuffer;)V

    .line 171
    move v7, v11

    goto :goto_0

    .line 176
    .end local v1    # "entry":Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;
    .end local v9    # "checksum":B
    .end local v10    # "entrySize":I
    .end local v11    # "index":I
    :cond_1
    nop

    .line 160
    .end local v0    # "$i$a$-let-FatLfnDirectoryEntry$serialize$1":I
    .end local v2    # "lfnName":Ljava/lang/String;
    nop

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v0, p1}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->serialize(Ljava/nio/ByteBuffer;)V

    .line 180
    return-void
.end method

.method public final setDirectory()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->setDirectory()V

    .line 214
    return-void
.end method

.method public final setFileSize(J)V
    .locals 1
    .param p1, "newSize"    # J

    .line 119
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v0, p1, p2}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->setFileSize(J)V

    .line 120
    return-void
.end method

.method public final setLastAccessedTimeToNow()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->setLastAccessedDateTime(J)V

    .line 200
    return-void
.end method

.method public final setLastModifiedTimeToNow()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->setLastModifiedDateTime(J)V

    .line 207
    return-void
.end method

.method public final setName(Ljava/lang/String;Lcom/github/mjdev/libaums/fs/fat32/ShortName;)V
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "shortName"    # Lcom/github/mjdev/libaums/fs/fat32/ShortName;

    const-string v0, "newName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->lfnName:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v0, p2}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->setShortName(Lcom/github/mjdev/libaums/fs/fat32/ShortName;)V

    .line 193
    return-void
.end method

.method public final setStartCluster(J)V
    .locals 1
    .param p1, "newStartCluster"    # J

    .line 128
    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->actualEntry:Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;

    invoke-virtual {v0, p1, p2}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectoryEntry;->setStartCluster(J)V

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FatLfnDirectoryEntry getName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/fat32/FatLfnDirectoryEntry;->getName$libaums_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
