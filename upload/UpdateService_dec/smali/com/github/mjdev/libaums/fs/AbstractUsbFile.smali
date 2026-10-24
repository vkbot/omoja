.class public abstract Lcom/github/mjdev/libaums/fs/AbstractUsbFile;
.super Ljava/lang/Object;
.source "AbstractUsbFile.kt"

# interfaces
.implements Lcom/github/mjdev/libaums/fs/UsbFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/fs/AbstractUsbFile$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractUsbFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractUsbFile.kt\ncom/github/mjdev/libaums/fs/AbstractUsbFile\n*L\n1#1,98:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008&\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/fs/AbstractUsbFile;",
        "Lcom/github/mjdev/libaums/fs/UsbFile;",
        "()V",
        "absolutePath",
        "",
        "getAbsolutePath",
        "()Ljava/lang/String;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "search",
        "path",
        "searchThis",
        "name",
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
.field public static final Companion:Lcom/github/mjdev/libaums/fs/AbstractUsbFile$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/fs/AbstractUsbFile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->Companion:Lcom/github/mjdev/libaums/fs/AbstractUsbFile$Companion;

    .line 95
    const-class v0, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractUsbFile::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final searchThis(Ljava/lang/String;)Lcom/github/mjdev/libaums/fs/UsbFile;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->listFiles()[Lcom/github/mjdev/libaums/fs/UsbFile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 73
    .local v3, "file":Lcom/github/mjdev/libaums/fs/UsbFile;
    invoke-interface {v3}, Lcom/github/mjdev/libaums/fs/UsbFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    return-object v3

    .line 72
    :cond_0
    nop

    .end local v3    # "file":Lcom/github/mjdev/libaums/fs/UsbFile;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 91
    instance-of v0, p1, Lcom/github/mjdev/libaums/fs/UsbFile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/github/mjdev/libaums/fs/UsbFile;

    invoke-interface {v1}, Lcom/github/mjdev/libaums/fs/UsbFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 5

    .line 15
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->isRoot()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    .line 16
    return-object v1

    .line 19
    :cond_0
    nop

    .line 23
    nop

    .line 19
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->getParent()Lcom/github/mjdev/libaums/fs/UsbFile;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "parent":Lcom/github/mjdev/libaums/fs/UsbFile;
    const/4 v2, 0x0

    .line 20
    .local v2, "$i$a$-let-AbstractUsbFile$absolutePath$1":I
    invoke-interface {v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/github/mjdev/libaums/fs/UsbFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    :goto_0
    nop

    .line 22
    nop

    .line 19
    .end local v0    # "parent":Lcom/github/mjdev/libaums/fs/UsbFile;
    .end local v2    # "$i$a$-let-AbstractUsbFile$absolutePath$1":I
    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 23
    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, ""

    :goto_2
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;)Lcom/github/mjdev/libaums/fs/UsbFile;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    .line 30
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 34
    sget-object v1, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->isRoot()Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    move-object v1, p0

    check-cast v1, Lcom/github/mjdev/libaums/fs/UsbFile;

    return-object v1

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->isRoot()Z

    move-result v1

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v7, v4, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 43
    :cond_1
    invoke-static {v0, v2, v7, v4, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    if-eqz v0, :cond_2

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_3
    :goto_0
    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    const-string v9, "/"

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 49
    .local v1, "index":I
    if-gez v1, :cond_4

    .line 50
    sget-object v2, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, v0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->searchThis(Ljava/lang/String;)Lcom/github/mjdev/libaums/fs/UsbFile;

    move-result-object v2

    return-object v2

    .line 54
    :cond_4
    add-int/lit8 v5, v1, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    .line 55
    .local v3, "subPath":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v4

    .line 56
    .local v2, "dirName":Ljava/lang/String;
    sget-object v4, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "search recursively "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0, v2}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->searchThis(Ljava/lang/String;)Lcom/github/mjdev/libaums/fs/UsbFile;

    move-result-object v4

    .line 59
    .local v4, "file":Lcom/github/mjdev/libaums/fs/UsbFile;
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/github/mjdev/libaums/fs/UsbFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 60
    sget-object v5, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-interface {v4, v3}, Lcom/github/mjdev/libaums/fs/UsbFile;->search(Ljava/lang/String;)Lcom/github/mjdev/libaums/fs/UsbFile;

    move-result-object v5

    return-object v5

    .line 63
    .end local v2    # "dirName":Ljava/lang/String;
    .end local v3    # "subPath":Ljava/lang/String;
    .end local v4    # "file":Lcom/github/mjdev/libaums/fs/UsbFile;
    :cond_5
    nop

    .line 65
    sget-object v2, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-object v6

    .line 55
    .restart local v3    # "subPath":Ljava/lang/String;
    :cond_6
    new-instance v2, Lkotlin/TypeCastException;

    invoke-direct {v2, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    .end local v3    # "subPath":Ljava/lang/String;
    :cond_7
    new-instance v2, Lkotlin/TypeCastException;

    invoke-direct {v2, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 31
    .end local v1    # "index":I
    :cond_8
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This is a file!"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/github/mjdev/libaums/fs/AbstractUsbFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
