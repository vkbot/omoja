.class public final Lj4/a$b;
.super Lj4/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj4/a<",
        "Ljava/io/File;",
        "Lj4/a$b;",
        ">;"
    }
.end annotation


# virtual methods
.method public final k()Ljava/nio/file/Path;
    .locals 0

    iget-object p0, p0, Lj4/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method
