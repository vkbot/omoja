.class public final Lj4/a$c;
.super Lj4/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj4/a<",
        "Ljava/io/InputStream;",
        "Lj4/a$c;",
        ">;"
    }
.end annotation


# virtual methods
.method public final i()[B
    .locals 0

    iget-object p0, p0, Lj4/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Li4/c;->b(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public final varargs j([Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lj4/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method
